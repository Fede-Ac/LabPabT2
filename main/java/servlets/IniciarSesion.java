package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import datatypes.DtProfesor;
import datatypes.DtSocio;
import datatypes.DtUsuario;
import excepciones.NoExistenUsuariosEx;
import interfaces.Fabrica;
import interfaces.IControladorUsuario;


/**
 * Servlet implementation class IniciarSesion
 */
@WebServlet("/IniciarSesion")
public class IniciarSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public IniciarSesion() {
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
		String nickname = request.getParameter("nickname");
		String pass = request.getParameter("password");
		Fabrica fabrica = Fabrica.getInstancia();
		DtUsuario dtu;
		IControladorUsuario icon = fabrica.getIControladorUsuario();
		
		
		try {
			dtu = icon.existeUsuario(nickname, pass);
			HttpSession sesion = request.getSession();
			if (dtu instanceof DtProfesor) {
				sesion.setAttribute("tipoUsuario","Profesor");
			}else if (dtu instanceof DtSocio){
				sesion.setAttribute("tipoUsuario", "Socio");
			}
			
			sesion.setAttribute("nombreUsuario", dtu.getNickname());
			
		}catch(NoExistenUsuariosEx e) {
			throw new ServletException(e.getMessage());
		}
		request.setAttribute("mensaje", "Iniciada la sesion correctamente con el usuario" + nickname);
		doGet(request, response); 
	}

}
