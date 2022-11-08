package servlets;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import excepciones.ClaseRepetidaEx;
import excepciones.NoExistenUsuariosEx;


import publicadores.ControladorClasePublish;
import publicadores.ControladorClasePublishService;
import publicadores.ControladorClasePublishServiceLocator;
import publicadores.DtFechaHora;
import publicadores.DtFecha;

/**
 * Servlet implementation class AltaDictadoClase
 */
@WebServlet("/AltaDictadoClase")
public class AltaDictadoClase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AltaDictadoClase() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String actDep = request.getParameter("actividadDeportiva");
		
		String fechaInicioString = request.getParameter("fechaInicio");
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm", Locale.getDefault());
		Calendar gc= new GregorianCalendar();
		try {
			gc.setTime(sdf.parse(fechaInicioString));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		DtFechaHora fechaInicio = new DtFechaHora(gc, gc.get(Calendar.HOUR), gc.get(Calendar.MINUTE)); 
		
		String nombre = request.getParameter("nombre");
		String urlClase = request.getParameter("urlClase");
		String urlImagen = request.getParameter("urlImagen");
		
		HttpSession sesion = request.getSession();
		String nomProf = (String)sesion.getAttribute("nombreUsuario");
		
		//
		if (nomProf == null) { //esto se quita despues
			throw new ServletException("No eres un profesor");
		}
		//
		
		Calendar c = Calendar.getInstance();
		DtFecha fechaReg = new DtFecha(c);
		
		
		try {
			addClase(actDep, nombre, fechaInicio, nomProf, urlClase, fechaReg, urlImagen);
		}catch(ClaseRepetidaEx e) {
			sesion.setAttribute("mensajeError", e.getMessage());
			response.sendRedirect(request.getContextPath() + "/AltaDictadoClase.jsp");
			return;
		}catch (NoExistenUsuariosEx e) {
			sesion.setAttribute("mensajeError", e.getMessage());
			response.sendRedirect(request.getContextPath() + "/AltaDictadoClase.jsp");
			return;
		}
		sesion.setAttribute("mensaje", "Clase " + nombre + " creada exitosamente.");
		response.sendRedirect(request.getContextPath() + "/index.jsp");
		
	}

	
	//Operación consumida 
	public void addClase(String actDep, String nombre, DtFechaHora fechaInicio, String nomProf, String urlClase, DtFecha fechaReg, String urlImagen) {
		ControladorClasePublishService ccp = new ControladorClasePublishServiceLocator();
		ControladorClasePublish port = ccp.getControladorClasePublishPort();
			port.addClase(actDep, nombre, fechaInicio, nomProf, urlClase, fechaReg, urlImagen);
	}
	
}
