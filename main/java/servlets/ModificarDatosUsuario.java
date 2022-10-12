package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import datatypes.DtProfesor;
import datatypes.DtSocio;
import datatypes.DtUsuario;
import excepciones.NoExistenUsuariosEx;
import interfaces.Fabrica;
import interfaces.IControladorUsuario;


/**
 * Servlet implementation class ModificarDatosUsuario
 */
@WebServlet("/ModificarDatosUsuario")
public class ModificarDatosUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarDatosUsuario() {
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
		String nombre = request.getParameter("nombre");
		String apellido = request.getParameter("apellido");
		String fechaNacString = request.getParameter("fecha");
		DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm", Locale.getDefault());
		Calendar gc= new GregorianCalendar();
		try {
			gc.setTime(sdf.parse(fechaNacString));
		} catch (ParseException e1) {
			e1.printStackTrace();
		}
		DtFechaHora fechaNac = new DtFechaHora(gc, gc.get(Calendar.HOUR), gc.get(Calendar.MINUTE)); 
		String URLPerfil = request.getParameter("pfp");
	
		//PROFESOR
		String sitioWeb = request.getParameter("SitioWeb");
		String biografia = request.getParameter("Biografia");
		String descripcion = request.getParameter("Descripcion");
				
		Fabrica fabrica = Fabrica.getInstancia();
		DtUsuario dtu;
		IControladorUsuario icon = fabrica.getIControladorUsuario();
		
		try {
			if (dtu instanceof DtUsuario) {
				icon.modificarUsuario(nombre,apellido,fechaNac,URLPerfil);
			}else if (dtu instanceof DtProfesor) {
				icon.modificarUsuario(nombre,apellido,fechaNac,URLPerfil,sitioWeb,biografia,descripcion);
			}
			
		}catch(NoExistenUsuariosEx e) {
			throw new ServletException(e.getMessage());
		}
		request.setAttribute("mensaje", "Usuario modificado exitosamente.");
		doGet(request, response); 
	}

}
