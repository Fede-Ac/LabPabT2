package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import excepciones.RegistroRepetidoEx;
import publicadores.ControladorActDepPublish;
import publicadores.ControladorActDepPublishService;
import publicadores.ControladorActDepPublishServiceLocator;


/**
 * Servlet implementation class RegistroDictadoClase
 */
@WebServlet("/RegistroDictadoClase")
public class RegistroDictadoClase extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistroDictadoClase() {
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
		String clase = request.getParameter("clase");

		HttpSession sesion = request.getSession();
		String socio = (String)sesion.getAttribute("nombreUsuario");
		
		try {
			altaRegistroDictadoDeClase(socio, clase);
			sesion.setAttribute("mensaje", "Registrado a " + clase + " exitosamente.");
		} catch (RegistroRepetidoEx e) {
			throw new ServletException(e.getMessage());
		}
		
		response.sendRedirect(request.getContextPath() + "/RegistroDictadoClase.jsp");
	}

	//Operación consumida 
	public void altaRegistroDictadoDeClase(String socio, String clase) {
		ControladorActDepPublishService ccps = new ControladorActDepPublishServiceLocator();
		ControladorActDepPublish port = ccps.getControladorActDepPublishPort();
		port.altaRegistroDictadoDeClase(socio, clase);
	}
}
