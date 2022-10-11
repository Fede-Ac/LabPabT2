<%@page import="datatypes.DtSocio"%>
<%@page import="interfaces.IControladorUsuario"%>
<%@page import="datatypes.DtUsuario"%>
<%@page import="datatypes.DtClase"%>
<%@page import="datatypes.DtActividadDeportiva"%>
<%@page import="interfaces.IControladorClase"%>
<%@page import="interfaces.IControladorActividadDeportiva"%>
<%@page import="java.util.ArrayList"%>
<%@page import="interfaces.IControladorInstitucionDep"%>
<%@page import="interfaces.Fabrica"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Registro a clase</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
    
        
    <%@include file="/header.jsp" %>

</head>

<body>

<%

	Fabrica fabrica = Fabrica.getInstancia();
	IControladorInstitucionDep icon = fabrica.getIControladorInstitucionDep();
	IControladorActividadDeportiva iconAD = fabrica.getIControladorActividadDeportiva();
	IControladorClase iconC = fabrica.getIControladorClase();
	IControladorUsuario iconU = fabrica.getIControladorUsuario();
	ArrayList<String> instituciones = icon.listarInstituciones();
	String institucion = request.getParameter("institucion");
	ArrayList<String> actividades = new ArrayList<String>();
	if(institucion != null){
		actividades = iconAD.listarActividadesDeportivas(institucion);
	}
	String actividadDeportiva = request.getParameter("actividad");
	ArrayList<DtClase> clases = new ArrayList<DtClase>();
	if(actividadDeportiva != null){
		DtActividadDeportiva dtActDep = iconAD.ConsultaActividadDeportiva(actividadDeportiva);
		clases = dtActDep.getClases();
	}
	//String nickname = request.getParameter("nombreUsuario");
	//DtUsuario dtu = iconU.consultaUsuario(nickname);
	//if(dtu instanceof DtSocio){
		//dtu como dts se obtiene su lista de clases, y se le resta a la lista total de clases previamente conseguida.
	//}

	
%>

    <div class="contenedor-total">

        <div class="contenedor">
          

            <div class="contenedor2" >
                <div class="row">
                    <hr class="dashed col">
                    <h1 class="col" style="font-size:50px;letter-spacing: 2px;text-shadow: 0px 3px #b34d1d; color: #FF9B55; text-align: center;">Registro&nbspa&nbspclase</h1>
                    <hr class="dashed col">
                </div>
                <br><br>
                <form method="post">  
	                <div style="display:flex">
	                	 
		                <div class="form-floating mb-3" style="flex-grow: 2">
		                    <select class="form-select" aria-label="Default select example" name="institucion">
								<%for(String i : instituciones){%>
		                       	<option value="<%=i%>"><%=i%> </option>
		                        <%}%>
		                    </select>
		                    <label for="floatingInput">Institucion Deportiva</label>
		                </div>
		                
		                <button type="submit" class="btn btn-primary btn-lg boton2" style= "font-size: 15px; margin-left:20px; height: 53px;">Buscar actividades</button>
	               	
	                </div>
                </form>
                <br>
                <form method="post">  
	                <div style="display:flex">
		                <div class="form-floating mb-3" style="flex-grow: 2">
		                    <select class="form-select" aria-label="Default select example" name="actividad">
		                       <!-- <option value="1">Actividad A</option> --> 
		                       <%for(String a : actividades){%>
				                       	<option value="<%=a%>"><%=a%> </option>
				               <%}%>
		                    </select>
		                    <label for="floatingInput">Actividad Deportiva</label>
		                </div>
		                
		                 <button type="submit" class="btn btn-primary btn-lg boton2" style= "font-size: 15px; margin-left:20px; height: 53px;">Buscar clases</button>
	               	
               		</div>
                </form>
                <br>
                <hr class="dashed">
                <br> <br>

                <div id="carouselExampleControls" style="width: 828px ; margin-left: auto;margin-right: auto;" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                    	
                    	
                    	<%
                    	int i = 1;
                    	boolean primeraVez = true;
                    	for(DtClase c : clases){%>
                    		
                    		<%if(i == 1){ %>
	                    		<div class="carousel-item <%if(primeraVez){%>active<%}%>"data-bs-interval="100000000000000">
	                            <div style="display:flex; column-gap: 30px;">
                    		<%}%>
                    	
				        	<div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">
                            	<img style="height: 200px; object-fit:cover;"src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"class="card-img-top" alt="...">
                            	<h5 class="card-title custom-card-title"><%=c.getNombre()%></h5>
                            	
                            	<div class="card-body" style="padding-top:0; padding-bottom: 0;">
	                            	<ul class="list-group list-group-flush">
	                                	<li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/"><%=c.getUrl()%></a></li>
	                                	<li class="list-group-item" style="text-align: center;"><%=c.getFechaInicio()%></li>
	                                	<button type="submit" class="btn btn-primary btn-lg boton2 small" data-bs-toggle="modal" data-bs-target="#modalSocios" style="margin-top: 15px;">Registrarse</button>
	                                	<li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: <%=c.getFechaReg()%></li>
	                                </ul>
                            	</div>
                        	</div> 
                        	
                        	<%if(i == 3){ %>
		                        </div>
		                        </div>
                    		<%}%>

                                     	
				        <%
				        i++;
				        if(i > 3){
				        	i = 1;
				        }
				        primeraVez = false;
                    	}
                    	
                    	if(i != 1){%>
                    		</div>
		                    </div>
                    	<%}%>
                    	





                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev" style="width: 4px;">
                        <div style="background-color:#ee8f4c ; position: relative; right: 40px; padding: 5px; padding-right: 7px; border-radius: 50%;">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        </div>
                      <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next" style="width: 4px;">
                        <div style="background-color:#ee8f4c ; position: relative; right: -40px; padding: 5px; padding-left: 7px; border-radius: 50%;">
                            <span class="carousel-control-next-icon" aria-hidden="true" ></span>

                        </div>
                      <span class="visually-hidden">Next</span>
                    </button>
                  </div>
            </div>
        </div>

    </div>

  

<%@include file="/footer.jsp" %>
</body>

</html>