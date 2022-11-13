package servlets;

import java.io.IOException;
import java.rmi.RemoteException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Locale;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.rpc.ServiceException;

import publicadores.ControladorUsuarioPublish;
import publicadores.ControladorUsuarioPublishService;
import publicadores.ControladorUsuarioPublishServiceLocator;
import publicadores.DtFecha;
import publicadores.DtFechaHora;
import publicadores.DtProfesor;
import publicadores.DtSocio;
import publicadores.DtUsuario;

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
	        String fecha = request.getParameter("fecNacimiento");
	        String nick = request.getParameter("nickUsuario");
	        String img = request.getParameter("imagen");
	        String email = request.getParameter("mailUsuario");
	        String pass = request.getParameter("passUsuario");

	       // String[] values = reqFecha.split("-");

	       // Integer day = Integer.parseInt(values[0]);
	      //  Integer month = Integer.parseInt(values[1]);
	      //  Integer year = Integer.parseInt(values[2]);
	        
	        DateFormat sdf = new SimpleDateFormat("yyyy-MM-dd", Locale.getDefault());
			Calendar gc= new GregorianCalendar();
			try {
				gc.setTime(sdf.parse(fecha));
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
		    int anio = gc.get(Calendar.YEAR);
		    int mes = gc.get(Calendar.MONTH);
		    int dia = gc.get(Calendar.DAY_OF_MONTH);
			DtFecha fechaNac = new DtFecha(anio, mes, dia);
	        DtUsuario dtu = consultaUsuario(nick);

	        if(dtu instanceof DtProfesor){
	            String desc = request.getParameter("descProf");
	            String bio = request.getParameter("bioProf");
	            String url = request.getParameter("urlProf");

	            DtProfesor dtp = new DtProfesor(nick, nombre, apellido, email, pass, img, fechaNac,desc,bio,url,null,null);
	            modificarUsuario((DtUsuario)dtp);
	        }
	        else{
	            DtSocio dts = new DtSocio(nick, nombre, apellido, email, pass, img, fechaNac, null);
	            modificarUsuario((DtUsuario)dts);
	        }
	      
	        HttpSession sesion = request.getSession();
	        sesion.setAttribute("mensaje", "Se modificaron correctamente los datos del usuario " + nick);
	        response.sendRedirect(request.getContextPath() + "/index.jsp");
	}

	//Operación consumida
	public void modificarUsuario(DtUsuario usuario) {
		ControladorUsuarioPublishService cups = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port;
        try {
            port = cups.getControladorUsuarioPublishPort();
            port.modificarUsuario(usuario);
        } catch (ServiceException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (RemoteException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		
	}
	
	public DtUsuario consultaUsuario(String usuario) {
		ControladorUsuarioPublishService cups = new ControladorUsuarioPublishServiceLocator();
		ControladorUsuarioPublish port;
		DtUsuario dtu = null;
        try {
            port = cups.getControladorUsuarioPublishPort();
            dtu = port.consultaUsuario(usuario);
        } catch (ServiceException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (RemoteException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
		return dtu;
	}
}
