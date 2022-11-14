package servlets;


import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.DtProfesor;
import publicadores.DtSocio;
import publicadores.DtUsuario;

import java.io.IOException;
import java.rmi.RemoteException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.rpc.ServiceException;

@WebServlet("/IniciarSesion")
public class IniciarSesion extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public IniciarSesion() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nickname = request.getParameter("nickname");
		String pass = request.getParameter("password");
		DtUsuario dtu;
		HttpSession sesion = request.getSession();
		
		try {
			dtu = existeUsuario(nickname, pass);
			
			if (dtu instanceof DtProfesor) {
				sesion.setAttribute("tipoUsuario","Profesor");
			}else if (dtu instanceof DtSocio){
				sesion.setAttribute("tipoUsuario", "Socio");
			}
			
			sesion.setAttribute("nombreUsuario", dtu.getNickname());
			
			sesion.setAttribute("mensaje", "Iniciada la sesion correctamente con el usuario " + nickname);
			
		}catch(Exception e) {
			
			sesion.setAttribute("mensajeError", e.getMessage());
			response.sendRedirect(request.getContextPath() + "/IniciarSesion.jsp");
			return;
			//throw new ServletException(e.getMessage());
		}
		//request.setAttribute("mensaje", "Iniciada la sesion correctamente con el usuario " + nickname);
		//doGet(request, response); 
		//RequestDispatcher rd;
		//rd = request.getRequestDispatcher("/index.jsp");
		//rd.forward(request, response);
		response.sendRedirect(request.getContextPath() + "/index.jsp");
		
	}
	
	//Operación consumida 
	public DtUsuario existeUsuario(String nickname, String pass) {
		ControladorUsuarioPublishService cups = new ControladorUsuarioPublishServiceLocator();
		DtUsuario dtu = null;
		try {
		    ControladorUsuarioPublish port = cups.getControladorUsuarioPublishPort();
            dtu = port.existeUsuario(nickname, pass);
        } catch (RemoteException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (ServiceException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		return dtu;
	}
}


