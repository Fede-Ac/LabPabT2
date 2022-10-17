package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datatypes.DtFecha;
import datatypes.DtProfesor;
import datatypes.DtSocio;
import datatypes.DtUsuario;
import excepciones.FechaInvalidaEx;
import interfaces.Fabrica;
import interfaces.IControladorUsuario;

/**
 * Servlet implementation class ModificarUsuario
 */
@WebServlet("/ModificarUsuario")
public class ModificarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModificarUsuario() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());

		 

		/*RequestDispatcher rd;
		request.setAttribute("mensaje", "Se han modificado los datos");
		rd = request.getRequestDispatcher("/notificacion.jsp"); 
		rd.forward(request, response);*/
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
	       String nombre = request.getParameter("nomUsuario");
	        String apellido = request.getParameter("apellidoUsuario");
	        DtFecha fecha= null;
	        String reqFecha = request.getParameter("fecNacimiento");
	        String nick = request.getParameter("nickUsuario");
	        String img = request.getParameter("imagen");
	        String email = request.getParameter("mailUsuario");
	        String pass = request.getParameter("passUsuario");

	        String[] values = reqFecha.split("-");

	        Integer day = Integer.parseInt(values[0]);
	        Integer month = Integer.parseInt(values[1]);
	        Integer year = Integer.parseInt(values[2]);
	        try {
	            fecha = new DtFecha(year, month, day);
	        } catch (FechaInvalidaEx ex) { ex.getMessage();}    
	        Fabrica fabrica = Fabrica.getInstancia();
	        IControladorUsuario icon = fabrica.getIControladorUsuario();
	        DtUsuario dtu = icon.consultaUsuario(nick);

	        if(dtu instanceof DtProfesor){
	            String desc = request.getParameter("descProf");
	            String bio = request.getParameter("bioProf");
	            String url = request.getParameter("urlProf");

	            DtProfesor dtp = new DtProfesor(nick, nombre, apellido, email, pass, img, fecha,desc,bio,url,null,null);
	            icon.modificarUsuario((DtUsuario)dtp);
	        }
	        else{
	            DtSocio dts = new DtSocio(nick, nombre, apellido, email, pass, img, fecha, null);
	            icon.modificarUsuario((DtUsuario)dts);
	        }
	      
	        HttpSession sesion = request.getSession();
	        sesion.setAttribute("mensaje", "Se modificaron correctamente los datos del usuario " + nick);
	        response.sendRedirect(request.getContextPath() + "/index.jsp");
	}

}
