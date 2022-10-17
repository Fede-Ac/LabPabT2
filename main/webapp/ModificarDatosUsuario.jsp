<%@page import="datatypes.DtProfesor"%>
<%@page import="datatypes.DtUsuario"%>
<%@page import="interfaces.IControladorUsuario"%>
<%@page import="interfaces.Fabrica"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Editar perfil</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />
    
        
    <%@include file="/header.jsp" %>

</head>

<body>

		<%
		Fabrica fabrica = Fabrica.getInstancia();
		IControladorUsuario icon = fabrica.getIControladorUsuario();
		String nickname = (String)sesion2.getAttribute("nombreUsuario");
		DtUsuario dtu = icon.consultaUsuario(nickname);
		%>

    <div class="contenedor-total">

        <div class="contenedor">
          

            <div class="contenedor2" >
                <div class="row">
                    <hr class="dashed col">
                    <h1 class="col" style="font-size:50px;letter-spacing: 2px;text-shadow: 0px 3px #b34d1d; color: #FF9B55; text-align: center;">Editar&nbspPerfil</h1>
                    <hr class="dashed col">
                </div>
                <br>
                <h4 style="text-align:center ;">Modifique los datos que quiera cambiar.</h4>
                <br><br>
        <form action="ModificarUsuario" method="post">     
                <div class="form-floating mb-3">
                	<input type="hidden" value="<%=dtu.getNickname()%>" name= "nickUsuario">
                	<input type="hidden" value="<%=dtu.getEmail()%>" name= "mailkUsuario">
                    <input type="hidden" value="<%=dtu.getContrasenia()%>" name= "passUsuario">
                    <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" value="<%=dtu.getNombre()%>" name= "nomUsuario">
                    <label for="floatingInput">Nombre</label>
                </div>
                <br>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" value="<%=dtu.getApellido()%>" name="apellidoUsuario">
                    <label for="floatingInput">Apellido</label>
                </div>
                <br>
                <div class="form-floating">
                    <input type="text" class="form-control" id="floatingPassword" placeholder="Password" value="<%=dtu.getFecha().getDia()%>-<%=dtu.getFecha().getMes()%>-<%=dtu.getFecha().getAnio()%>" name="fecNacimiento">
                    <label for="floatingPassword">Fecha de nacimiento</label>
                </div>
                <br> <br>
                <div class="form-floating mb-3">
                    <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" value="<%=dtu.getpfp()%>" name="imagen">
                    <label for="floatingInput">URL de imágen de perfil</label>
                </div><br>
                
                <%if((dtu instanceof DtProfesor)){
                	DtProfesor dtp = (DtProfesor)dtu;
                %>              
	                <div class="form-floating">
	                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" name="descProf" style="height: 100px"><%=dtp.getDescripcion()%></textarea>
	                    <label for="floatingTextarea2">Descripción</label>
	                </div><br><br>
	                <div class="form-floating">
	                    <textarea class="form-control" placeholder="Leave a comment here" id="floatingTextarea2" name="bioProf" style="height: 100px"><%=dtp.getBiografia()%></textarea>
	                    <label for="floatingTextarea2">Biografía (opcional)</label>
	                </div><br><br>
	                <div class="form-floating mb-3">
	                    <input type="text" class="form-control" id="floatingInput" placeholder="name@example.com" name = "urlProf" value="<%=dtp.getSitioWeb()%>">
	                    <label for="floatingInput">Sitio web (opcional)</label>
                	</div> <br> <br> 
                <%} %>
                
                <div style="display:flex ;">
                    <p style="margin:auto ; padding-right:19px ; font-size: 30px;">Eliminar registros?</p>
                    <hr class="dashed col" style="margin-top: 23px;">
                </div> <br> <br>
                <div id="carouselExampleControls" style="width: 828px ; margin-left: auto;margin-right: auto;" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active"data-bs-interval="100000000000000">
                            <div style="display:flex; column-gap: 30px;">
                                <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                    <img style="height: 200px; object-fit:cover;"
                                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"
                                        class="card-img-top" alt="...">
                                    <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                    <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                    
            
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                            <li class="list-group-item" style="text-align: center;">13/4/2022 6:30 </li>
                                            <button type="button" class="btn btn-primary btn-lg boton2 small" style="margin-top: 15px;">Eliminar</button>
                                            <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                        </ul>

                                    </div>
                                </div>
                                <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                    <img style="height: 200px; object-fit:cover;"
                                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"
                                        class="card-img-top" alt="...">
                                    <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                    <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                    
            
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                            <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                            <button type="button" class="btn btn-primary btn-lg boton2 small" style="margin-top: 15px;">Eliminar</button>
                                            <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                        </ul>

                                    </div>
                                </div>
                                <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                    <img style="height: 200px; object-fit:cover;"
                                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"
                                        class="card-img-top" alt="...">
                                    <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                    <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                    
            
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                            <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                            <button type="button" class="btn btn-primary btn-lg boton2 small" style="margin-top: 15px;">Eliminar</button>
                                            <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item"data-bs-interval="100000000000000">
                            <div style="display:flex; column-gap: 30px;">
                                <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                    <img style="height: 200px; object-fit:cover;"
                                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShNq8TM2cSal04ik6zPi5I2KfJpoH9w2FTGw&usqp=CAU"
                                        class="card-img-top" alt="...">
                                    <h5 class="card-title custom-card-title">Clase AAAAA</h5>
                                    <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                    
            
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                            <li class="list-group-item" style="text-align: center;">03/8/2022 5:30</li>
                                            <button type="button" class="btn btn-primary btn-lg boton2 small" style="margin-top: 15px;">Eliminar</button>
                                            <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 15/3/2021</li>
                                        </ul>

                                    </div>
                                </div>
                                <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                    <img style="height: 200px; object-fit:cover;"
                                        src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShNq8TM2cSal04ik6zPi5I2KfJpoH9w2FTGw&usqp=CAU"
                                        class="card-img-top" alt="...">
                                    <h5 class="card-title custom-card-title">Clase ASFSFA</h5>
                                    <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                    
            
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                            <li class="list-group-item" style="text-align: center;">16/12/2022 2:30</li>
                                            <button type="button" class="btn btn-primary btn-lg boton2 small" style="margin-top: 15px;">Eliminar</button>
                                            <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 15/1/2022</li>
                                        </ul>

                                    </div>
                                </div>
                                <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                    <img style="height: 200px; object-fit:cover;"
                                        src="data:image/jpeg;base64,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"
                                        class="card-img-top" alt="...">
                                    <h5 class="card-title custom-card-title">Clase HSFSFHHS</h5>
                                    <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                    
            
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                            <li class="list-group-item" style="text-align: center;">11/8/2022 8:37</li>
                                            <button type="button" class="btn btn-primary btn-lg boton2 small" style="margin-top: 15px;">Eliminar</button>
                                            <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 18/2/2022</li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item" data-bs-interval="100000000000000">
                            <div style="display:flex; column-gap: 30px;">
                                <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                    <img style="height: 200px; object-fit:cover;"
                                        src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCAoJCQoKCQoMCwsJCRgJCQkJCR4LDAoYJCAmJiQgIiIoLDoxKCo2KyIiMkQyNjs9QEBAJzBGS0Y+Sjo/QD0BCwsLEA4QGBISGjAgGiAwMjA9PTM0MDIyMjIwMjAwMjI9MD0wMDA0MD07MD09MDMyNTA9MDI9MjA2MDAwMDAzPf/AABEIAKUA3AMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAADAAECBAUGBwj/xABAEAACAQMCBAMFBQUGBwEBAAABAgMABBESIQUiMUETUWEGFDJxgSNCUpGhFWJyscEkM0PR4fAHU4KDkrLxokT/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAoEQACAgEDAwMEAwAAAAAAAAAAAQIRAxIhMQRBYTJRcRMUIqEFsdH/2gAMAwEAAhEDEQA/AOeJ045MdySc5okbM3VQNtWSdNQBA2AxgbjpppI++MK2oZwRjFIQYfDksfixgDBp0C5GOuMDLZzQSRkALjfffamLg9+m5yOlAWWNak51A43JB2zTiQHpj1IOKqxyFydmYAZONyKKeUbt3wO+aBhi+BjbcZPanDj73nhsHpQVIwfQ4IHLmiBcA9tI5hnGaADDSdtXQ4ZR1WkwUdyTjJNQCswOlGfBwNI3FSFtcSErFBNIVXLRx2zSsPypUMHrXOBvp6HO1SDbjJBz0JbUaN7pfc2bG83O+bF1x+lDmt54hma3mjycDxrcxfzpiHDZ2wN8sSTionouV2Jz12FQWTm5fhz8IOqm9ckkHGRuf/tKh2IMxAxtk5yTntS+H4vPJBGQaRTI37+Z2ApODnBxsME9DTEMSBkaCpI2GnNIN3IGBy5xkCkdQOQepxs2AKYjUD8ONOMsOlAC75ONxuQ2GakVGRq/UbUHOPPGOnUGpat2wCQOY5XApislpz8PUHOSd6iSMMCM4GcAcwqeGI3A3XbuRUD5Z+Js57/nQAJ9s5z0GMjrQyWb1yMjtRerNzDpqYHat/2X4B+0398vFK2MT4CDrfMO3yHc/SmlZLZP2T9n/fCnEL5M2YOq2gbrenz/AIP5127p4jcj9/gx0ojHV02UbAKMKo8h5Vh+1HHDwm2EVswW8ukPggDLQJ3f/L1+Va+lE8mL7b8VdAeF22dAOriEyvp1Ef4f06n8q4rGrfVjtjFEdny2rJJO5zqLnz+dBLqDugz8qybspbFld2yFVs7K7nSTTqo5VkGwXAUNvtROgPNsVyST/SiBMeuDt3xUlAQNRIA0jOF1HIz/AFo6RjKgnThiVLEsB9KYKXcRxhpZJWCJHHHreQ+grTuOHW3CLZ7jjEshmVcLwyymUPH/ABuds/uj86aViuioi5+EM2DqYk8n18qpT8TsLcYlmWRwd4rVPHb8+n61l8aF3eaJLOSe8sXtxcxk2/uiWq6ipDgcowR8WcdDQ7HgBnGt7hTEzhDPZRtdpbN5Pp5QPXV54zinVBdm0LyNrdZ1e1WJoDJF4l171cSPkAR+GunDbjvgedc83HeIyJrRlijLaC0EKxIp7Zb/ADroLTgdv4jJ4AuHWIT3HD0uffJWjGMSQeHn8vE275HTQgtFjkjkjkEUrrpivo0WNbhtiY5oog8nTrzfPPWm2uwjkJY+MTCQTG6RkXW0dzcG3OOuQG6j5V0DXFwtrEvD7iWLhqWqQwT2cjxW7XG2t535dydWCe2MVqw2sMUqwTItpOn9xBkWkhJOfEik+0kT/wBGz1FG91xK0rofFchJryWDTL+6k8cmtwcjOtVHmCewp0Din8HMLJxZmw9zIreH4iSDiEkkD/8AcB0AeurFaPB+JcdS5jjeWS5ilYLc8Mkv3u47qI41FX3TYHOQ2RitcWJdvCh8O41nx5LGaX9pRzEZy8UjaztnGyo/zoCQI5e3s2e6KnxLnhfEplvJjp7hAH9fhVHprL5FoXsZMPHYVup4LvxZYoRIqyxkTHYnSXyDgbb1pLc8LnEfg3g1y26yDSOSPP3d+4O3ajPF78gjih94aIaHtOITKJojjqknO49EIU+hrJn4BbXbS+4vJJNFyzR3t2PGjx2LjX+XI3pXR9xGXqiiVjrhmi9tIgzH9soGrSu8n5VXDKfhbdRhgdsVkI/EOGuyxTpcGN8SWsaGYxnPTvp/6iDW1ZcVsOLALMwtrhuWO6B1Kx8ie/1+hpvBCavG9/YeqUXT4Bk7kZznc7dKG5CHIGDjqwyalf2k9hL4c6buC0coGqKQen+XUVXUkKo7Kc7npXI1Tp8l2GLAZYb9843p9f4s7DLc1QR8kZXGTpO+oCnOQu/Y43NIZNQRufPcrUASTkncvjc5xUxrwds4GnZtxWr7PcFl4vKd/CtbeTF1cL1f9xf3v5U0Kyfs7wCTi0njT8ljE2mWQnEk7fgX+p7V6FpCIkccaRxxgRxxxnSsY7AVJI4reKOG3jEcUSeHDFGOSMUmKIryO2hIoy7yOdKoAMmtYxohuyhxXiMPC7SS5nGccsUWrBuH7D/frXlN9NLeXUl1cSa5pn1yH7g9APIDYCtX2h4w/FboyKDHbwEpZwyDBQfiP7x/yFZGc47+RB61MnY1sAJx9OrDvUdQG2c+tGYEeg799dRKgn4RUAHGMjuxPbpUsrghmbAOoHVXo1/7G8KugzQJLZSMMhrVvEi/8W/oRXNX/sTxK3Gq1khvEU7LGfDnI/hbv8jQ4tFWV0uRwThkt2ihuK3tkLu2YjL2kBkEZK/vNnr5VzQtLriE4S/E1vJKR7nHNdpZKzHBXdstzeg64z6bXtPDK68EnljwHsF4TdQyq74kjLhkwnNnJUjHmKXDLBpIfdrezkguLVGeL/8AhnnjO7Jga5dt2G4zkjyFXKo0kKt7IW9o7zRytDNHeRnwopZYtK3g+ERiS4wA/UbR4bp163Egab7e1WZ3ZTHPaXETcQgcZ3WMylIyu266SR2O2Q6W6XWt4o0W+ih1XMkcmi5uo/xcviSZAxndSw37GjpBJdMwiiIvkQBrh7nw5bsDz0M8gcdssuv51i2VQ8sCeCo1s1h4gnAmjeSTh0h6NGORCuemNWrp8WDU2WOJlimMQN0gVYZpTYWXGge4QaNMme4U7+TdWtzJO0k1mcXKDXee7uEivh3LKmrJ80eQZHNsc0OCW1EMi24b3cnM9nw6T3y8s3bow8PJZGxvqk9Dvg1NjSCa0it9AjZrKNiht5Jf2dJw45wch8ZGSf8ADKseuDTtJJAmq4uY2gP2NrPE/iXNuG2wyybYIGPD8Mg/dIp0e6jn5xJFKiZtOJxnxnlA2AaKIa3j2xznI6HPw00KmG5RIJ3gvSmsWNjAqWnEF/FiPqD+B5Bn06UFUTuIo0TRII2jupVAtuI3OOG3LdlVX3jf0KegOKa4VpwLeSKaQAgtBNbJa38ONy+JB9qoxtiPIGOlVYJY7eVksxb2F3KPBn4ZOgU3O2+I0OstnPJJJkH4c0WE+8QoIrOdkaQQ+7XUw4NJCo7xMPtHXOcoScY79aVgQu11xhr7RLbpgC+FqvjW3N1dZclm/wC2PRqhdx+LAHvUe9tIRheJXEapJaKW6uZz9MeGOwU0VGZmlmt7iRmEwD8R9meHC2uYlx0uGfqPXfODu3Sq0wtLWRbh5LLh93cO0NtxG1B4vHdDGGHZI233GO+6jrVWKiPjSzQZiP7UsoiUE3Drczvaj96SXCxjHYpox086xL/h0MmqezuWunTCu1tJ+0J/RHVcIgzttqXyNblzrSUS3scljcJHm04hxi6xYzn0iQkEEH7mpPxLQVk1XVrAHvY7kqTaS8Eh9y4Td7d9Orl82UY81HWrjNxdrkmuwLgPFFkRuD8ZWRYSwjbX/e8Nk7MD5Dy7fLaq9/ZTcPu57S4/vITqEgHJKD8LD0NU+KQx2+JbiCz4Re26GdbG0k96hvV+alivpuV+Vb3EnTiPs/acSQ+JLw24/ZsjgbyRNuhPyJrpnJZY6u6JS07GKX6nAyTjGrUKkj5fY5I5gSOlAQgnTnYdGJ0qKucMsJ+J3MVrZqWedNeZP7uJe7HyH+xXMhmhwPhU/FrkW8TBIowJLm5xqW3T+p8h/SvTrS3gs7WK3tE0QxriNDuzZ7n1NVuGcOt+FWiWltkqDrmmK/a3T/iP+9hVxRknfUc9QPhrWMaIbsdG1DVnOeXZc5NcJ7ce0AkmbhVu32MLaeJOF/vJB9z5Dv6/Kuh9qeN/sezVYWDXt2pjtdtTQjvIfl29flXlraTu7FgTlmB1N9aJS7AkEV9QzuM75J3OKkWBHb1IOAaCoUEaGZST8APxVLO+nrncktpDVAx2xnfIOc7nUagTgkfFg41KdjTE5GxXmGnI3Iobde3/AFHegD26xv7S/XVZXUc5C6mjVtMqfNDvU5dgexHbyrw9BoKsjsug6oykpUxn08q6Cw9tOLWgVJZF4hEoAaK+OZUHo43/ADzVKXuDNbjUkMN+1rcaY47q4F5ZTyIHS2mA2JznZuZT/wDK2m9neF3kUTiOW3CASJb2Nw0NpG47hFwpweh6muQ45x3hXHLMxyxyWV3CTJCl1zQy+a+IOme2QNwKqezntbdcKSOO6YTWrtphnfeN/n5H/e9dCjHIqWzJ1NcnZ8R9m7kBZeHCHEUnvD21snhu8g6Oialj1Hvqz6Z6Vh8RsLoprktIrJIRrurGVPffdCejoMrCqnHfGk/MV2PCuOWXEQnhTaJWGVhmOHb+Hsa1WBdSrounHPHIutcd9ulc08Ti6ao0jJM84RTxMa4wbi7tCJH03nvRcj76iMpGkncrr3+Lc5zFL1JmJs3hjulRpZbCzb383S45nWOPTGzHJ1K2rbJHlXZcR9meF8RMLvDMnuzAxR2l21rDEB3CA4G/4cH1rK4p7MXcymS2vispkMk0XCIF4fLfnqGLlvj89yDscA5zk4lWYLaDC3iWSR2QY3N3wridzhrNB/iQxJ238vRsjmoIM0loEVp+McNnHhosejhdhCfLAyY3HlsD+8KtScOuo5FnSxh4RxHxvDjueJgSNfnG7RKo0+J5gIQ+dt8ggSf9oPMbMXPEbyOHw7vg5V4LG5TuVjOWABwdHKQd1O2BIycslt4UjNexJFGyR++cItPe720XYYnO+oDprDdtifhoNymmbPE7SK2uFi023G+NXi3lxOB0JQEF18nUEj1p8SRk3NjdwcNNpD401nYQx3XEbZR15kyZE89TDH3hjeo2U0F4JU4dw73pzN7xPwy9kLxXB2y0Onljc78pO/Tm6UUMN9pcXEcc8l5c3kKF04jag2/C5g3TXpDZU7/aaRn7w2zSid7R2h8ay4LcS/aXXC7GMTRcQU/CS+oBDvt9oB5aaFcxlYphe3ovuHwyBZOHJBrm4Y3kRHhIWB2yCUJ6jtQfeLeG2hW2tDf8PVtCSXSia/sZG+6EwUTzAwyP5g9AAtvEXa5t+G8MkuJ1mEt5wv2gdpQmfvRnOFP8TFv46hCgmke2XiQlgkUi79mI40nkmI6qoj0oW9chxjoandwXD2pj4tMZOFxYeG4nh92u+Gk7KBCNx0+HGg/dcVVvZLMJC/EIZ+L27yCO24yGEDqR9w6TqbH/AC5GVttiBTEB4TeW0Rjh4Rbe++DIZv2Dxm595uFcb5jXSEJ/h5/Q10HstC3EeAz2cyhZuLTygHGxYHSG/wDL+RrFuJb/AIiGiuZhLazFnTjPDJvcoLYDqZVxvj8LgSeRbarvsxx6GDi8aQnwrHh9m9raCReZUjiZi59S3Ma7OnhJ6pdkjOcqSXcwYOHXb3v7PSPxbtbh7V44yGCspIbfy2616n7PcHi4JZmKNhJPMRJe3JOnxG7AeSj/AFqhwC3gt5b64SD+1zsDcSDmd174/wCob+e1by4PyA2BGrVWUUuRSZJgz4w7Jg/dwf50K/v4OHWk13dE+FDylMaWnPZR8/8AWjB87Zwca3LjRoHrXmntXx08VuwkYb3KzOLU5KeKehkI/l6fOnJ0JIy+IX8/Ebt7qeTMkpDGNR9lCo+FB6CqZIYAjnHXPw5pPtkli2TvIo3HzplOT2yDgAjI+tQUSA09thuAV3NSKlmHXSB1ByRUNQI06mJxjJGS1Rki1AliMKPD2OaAJ4Azld1Oo751U2vH33HoBtQ9OMbKQGyp06gKeN0RdLW6uQfj8Ux5+lIQm36degAOTTacEZOkhupODRQGHXtsV/FUX521Yxg8qFtlpAU5UBzpB36hjsKpnKal0B0cfaIwwD9exrWSGS4dIYUaWSVtEUUa65JD+6K63h3/AA0u5gsnEbyOzy2TbQR+8SgfPOB+tTLNHHu3QJHBwzvAP7DJISu8tnPhvqP9/Wuk4P7f3dpoSSY8pwIrtfHjX5H4hXWH/hfwcoV9/v8AxMckjMnIfPGK57j3sDxXhkMktlInF7VR4k0ZhCXSgd9JyG+m9b4v5LHL8ZO/n/SZYr3X6OosPbuzudJuYJYj3e1k95i/L4hW/Z8Z4ZegC3vrcv8A8tn8KRvocGvnxfDVg0czwEtnw5E0EfL/AO1eW4vQAAy3K4yElXDt8s9foa7HHBNXuv2iLnHz+j6GZSyFWTUrjDCQa45PpWXxTgdnxRNFz7xA4k8UPY3RtmZvxEDYn1IzXkXBeMcS8VYbL3i2lJwqJfC1R/o5ANes+zq8ViTHH5kkllGq3gVVMiAddTDvv0rj6pY8UbUk/wCzSE5P1KjIuPZUqzXFiUk4nayh4bm7X3WK5P4tKHT4n7xwG31L3rn+IcL4rcwNHxCK4sXgi51ncQcGugPkdEbf/k/u16i95Gn3lXJwMbA0J71G5XAZSMMrjUpryPvVfp2+Stcfc8tLwQXSi8u5Y+L2uYffLZ/c4ZdsBJpGU5/j06SMaiRzU3vksc0sFpFFwPiSNpmtQgigv876C7fD/Cfs27YrqfbXhQu7IXNhZ200thCSbYxMlw0fkhUjIH4CD6YrzM+0DtHFGioY7eMxQjwRIY0P3ctk6fTtvivV6XGuojqUkvkJZNPk17e3kNzLLwyGSx4hEpS64dMv2Un4gpb9Y5PoW6UhLaWgN0ZhZySjwr3glqgvbW7X6nSo/dOor9305644xeXZKM8soRBkPNrCKOnoBVaKK5uShVWHiMFRm2L7/dAyTXX9DDj9UrfgjXJ8Ki3xHiRnDQW0K2lp42tbSLLmV+2c8zn5/pW3b+zctnCzPM5vXtphLaYHhorxOmPPXvn9K3+B+zdrwYC7uEEnESORXfWljt0X97zP5UK81FyxPT4yuxqZ5m9o7IailzyaHshcXV9w+04h4epPB92vC0gV5CoGogdTthq6rWoTTthuXTnqK4z2T4iOF8V/ZpkkEPFovEitovgjuAQueo2ZduvUCtn2i4oOCW66C1xcygxWjsA6gj4nfG3L+prni9ipLczfbPi7Qwtwm02eSIC+ZD/dIdxGPUjr6fOuHyTk4JxudGwWpB3ldnZnaR8vJJ8TSOe5oYCrjKlmIK4LYqW7CqEWXKBjoOMc+xNLvgDGTgZ2qQQ435csQTnB/OouCSFGRjrjcNSAlscDYEnSRq5aQUdeh65Rcaaj36j4cjTykipJsvyGzDegBE9deDnbmbFRIXbUyg46MuTSbfoNx1Lb5oeGGQp2ztk70AEGd99yc5U7CpasD7q45iQck0y4UZcEYbSCRnFW+EwJNf2cbnllvEjdXHbO9S3SbA9C9kuFR8ItFupE/t17EHclcm2Q9EHr3Nar8SA6suO2p9OKx7qWS8kkeSR44NZSOOJtLy+pPl6VT91tcDEKLhtWAuSa8mbUpXJmE52bT8YgU4aeJSBnHiCoLx8awtmHmc7r4aaYx9ayR4SHKRxrg5yIwKMlwT07HbArN6V5JjOjM9tfZ2O8s/2rbogvol8TiccceIrtO7afxD9a8z8GNdRQyREjI8F8BvpXsL3EbgRSPyyho3jbcOCCDn868leERkx5+BjGTnAOK7+kyyaavg6FPUjrf+GXDTc8Umu7llng4ZEssRkj06ZT8OPkAT+VehcZvGQRzqc+BNlwe6nY1xX/AA8k8Dh98urdr9WIJxjkFdLM4kVlbBDjSwJ2Irl6mbebfhGc506LLXAc/ErAbjFDaffIbp2BxWOZJLPlOZIQMK6/HGPWotxGDqZQMjO4xisnB9t0YtPsbsN5oYEOQynqDgrXA+0/B+FHitrNIj26cXZ2DQ3EcNukith9nwFzsc579K2jxDxDptdUrnuF0pH61ge3sqQ2PClGl3iuJChdA6kaVzseu+K6ul1QkvJtjbWx1HCvZ72YtJ2gjiiur6EZkgvJvepYz/CoC1se42PvAvRZ28dyAQlzHCInT12714u/tHxaZI4zxCdI4Y/Ciitn92jjA6ABMbeldJYe300bO9/aCVmIx7qy20Q26kBdTtnfd8V6yknyaNNHfTIWLEZOjcAD/eaoz25Gpjsoj1ZEZ10/7Y4fdQo9pJcXTMI5RacPj8aaQNqXBAORgjcb4yPnWkOH+6xIRbm3Dx640kI1bbnJyf1rTZGe5y/FXjijlVw0a3Xu8Nzeqmt7FRLkSAdSQNW3niuhvkHtXwnwo2aO5E74t+ILIL23mQ4yVGQgIzkacDV6V5t7Q8dkv71Ws3K21jJqtN9pH7yH5/y+dbHB/bOQcX4jPJbo8PGkVJbJ5SsayooAJPXcgn61k2jRJmKVeNnSSMxyRyeHKHGiSIjYqR2NRL6Rjcat8l+Va1eOzniU73wt4IrgrpvIbQGOOTykwSd8bH6GsgDI3GkhcbHBJqHsMJhmA8NijBtJKEEZ+tJS2x2bT0YjBFJD1DKN+UatilT+50JDNqOxB/SgQPCZzjOfhKHViprrHTTgchyd6TADIbGCMBwCoFR1q3zA6jYkUBYvEyfuqx3AcYBqJYd8EjbOKfbtjGdbY+H51AgEksCCTkhRsKBhARluY5ZcEsd1q5w25W3vbKb4ViuVLlTkv/pVRTkljkgDI3wP9aTE5GkdV1Njq1RLdNAd+z4RFz0XQR0zQml2+ewrE4XxHxY0jkf7RF0K2raQf51aafrv23zXlZMbjJpnPKNMuNLk7/lQ/FxvntiqLT479smqtxfpGOZ9z93OSahRbJSLF/esJkVSQkcPjytjCnB8/pXIuwd2OeY84GdTHPWi8T4qbg+EhwinU+/WqqtuSNXnynINejgx6I+TohGkbvstxAW13LC50i6VSGO3MO36muxSf1+ma8wzpxoJXTzq42ZDmt/hftEmFivWEbgYExGmOT5+RrHqsDk9USMkL3R17uWGx9OtUOJXUdrErvD4peQRKix6nkJ/3msy4PEZpjNaTr4LJphEMoKoMZJIPxMeg7VXliv7gwSXlupS3ZnKygLGhI+eCB5nqfSsIYWnd7GVG4t5E1uJ0bw4NGvUyeHt8qp3KpNfW8ko1JZIVtkJ5Wc9WPy2AFVbV57gRtcSrLpGpEjUGKTfr61pwWciLrkkLMTq0uANH5V39N02l6mVFUCk4Bwi/fxJrcxyvHpDRMUHXqQO9Y/EPYSdNUlhdRzIZtCJMvhNGmOrN6fWur8PRzfg2bBwDR4pXUYUcoGpARyg12/TNVkPKZ7W/wCEyFpUms2k124mRzGJR0ZdQ6ii8K4k1qGt5XLWdywMyIcPCw6SIfxr+oyD1ruPazi8dpbpAEjlvJhrtnkjEnuY/wCZ6HsPzribaW0adXu7BJ1aVpZ/CkMTPnI6DlwM5GMVPDL5RI8QhuCVvY1lkB0i6j/s87euejf9QoUtg0hD2conAwkiSEW06eWQT+oJrKuNSSPhCkbOdCM2tVHlmpwXLIRucD4QTnRUtp/JR2wWOOODx3zeQxnx2jk0xN+8xxgDHX61UNjPKpnsYZZoB/iSIBCP4Scax8hWRZ3JVEeVRMgbVFbyDXEx/ER3+uwrVa4uLseI/EObvA6/Y4/n+VLS/cdp9gDnOoFTEQuSrtjNFRGIOnSWODiFtvyo6WRuIwUWWQg815I3hw/IDpiqkkRR2QmPUpyfDOzUiWh5BIvxAMpGBqB1iokEBCHzp30AbJU/EdAEDlweYoeYilG6yI2T4bINTCOPxAfWmSQd8fENOBsc4BqK8qgagcDqF2o/u6kHMmXJ5VV8kD5VAxMpIOAQejNg0DGbcqpAw3NoXfHpUGflAA7EdMCo6uuMghdOF6GmY5zp3yupiDhT6VNANIdjg7feI2JPnSPGLiNNJKyYOFYnDVF8MSFGUA0BtODVZ11dR1O+POpeNS5FsyT8ZnIOQ+/ZSEFUpbqaUn/DDDn0Nlm+tTaPP8jgUlTuR16EULFGPCD8UQgTTjyx0O1W1OFO2S++R2qCJpP6dN6KB9MnfIxmroLEw3wN8HmPmKrSJq67AbDsKsac5OTscsAMmkyA79cdSNxRQWUEDx7xvIm+Tocpium9nuAz36recRaR7Zd7eCVy3vHr/D/P5VY9lfZo37C9u0Pucbao42G14c/+g/Xp513egnqNLDZdQ5V/0rSGNPdomcvbkzLWzCAL8Wk753K79Pp0q/HAoGw76AoPMKsxwjVvn7RsAHfNESPJUDGothjq1BQK3qjKwCwsThsMpOk6RgkY7/rVbjXELfg9r7xc80j5S0thzNcNjp6DzNah8O3hknuJPDgt08SZ3GBGvc+v+uK8p4xxCTi1/Ld3LuqBvCtIccsMWrp8+/zqZSoqMbMu6uJLueSe4fxJZX1SuRpX6enpQguOh6L9KO6AEhSWXOgSGPRrx3psY+70HMudhWDNbAjp55GCCM5qlPFpyydD9zG4q+wXOkt8OxUbMKE6YB748qVFJla2mZO+xP5VoxTIuJNmZd1BGVSs2RMHJ69TjvTJIVOfI5waLGbx4jcXL/2mWRlIwED6FUeuKuxvAUEaKHBGdCLpWsBJwy6c6cjLGiwyuNkLKhO4VtLyfWqpCtmrcIif4mkY2jMgLihq+NyScjIJqNvLGP7tCzHqsZ3PzNGcqhDSBEZjlY4zmR6kKsghjfKM2lfiAYZYUTWF25j64/1oAwpDZw2TlCCKkHOBzkbdNGaCSKrnbGAWwdJ3akTk9QcYwEGRTDAO3KqnBIGdNINyDqcN1IwaQETjmI2xtpXrQ3Bzv2OgCi9QoY4ym5J3xQyQwzvuNRDJhqYgejKkfoBS0Z6dz59KJjfAB2Hc0wU4O2x6Ejc0xDKoG+eg3xUguM42K779al5eWNmO4pwBzdcZGd8k0DIjUTg4Onlz3Nb/ALMezn7Vk8e41pYRNokw2l7tvwKew8z9OtP7NezsnGJDJJrjsIn0zzKfDkmb8C/1Pb516RFBFCkaxR+HFFhI4VBWKJfIDtVxjZLYJUH2cccfhqihY1RdCxqOmB5VFkGWGp01jQrpu6+tGWJVDaeXWTIUOSWYnOeuakFC4LY2OVjIBK1sRQHSozljICwQqOYrR47fJGeYgaWOrBApRI0hbUjJtysrgNjzHl9a5D274/JaRScItZELlccTn1aWVSNo9h1PVsfLvUt0OKsy/bPj8fEZUsbN82do5eSZGwl5J5/wjt57nyrmAulcjBycsAMYqXbByxGzMBoz3+lTU77/AHlxpAGoVi3ZoB0A9tJAypG+KYrvsOX8PxZoqjOWb7ozljoFNgEDf4TkBT1pAB07jVgkDlHlQnjHZcDONjgCrR6MNQ3GrbcmoN8T/Fp8s70AUnj7eY2BPSqssePp0860XUHpk426UORNt+/TfrQ0NMzFYr+eatxSahzduuKHLF19OlAOpdqXBfJpJM6/3Z0j03zVmGQHJzzMd87s31rLjl7H5VYEun4PiH3sbLVAablVH2jhc/CGO5/zqLSSE5VXAO4Hg4qnDceGeYZZju5O5+dWPeM7l1B8lO1KhchAewx5ZxtT7k6iOYjOcadNQ1EeZIGFPXw6bYjIbLMdRJ3KikTQRSAe51Hc53ApvJj8wAetMm4B8ty+OhpA6id85G4blApioQ3xnGTysOmqnznp934dNIjc7dTtvUlG/XtggbUANjcY8stkagtbXs5wOTjFw27R2VrIDe3IOHJ/Avmx/Qb0LgnBLjjFz4dv9nBEQLu8kXK269vmx7CvVrKyhsbaK0to/CigXRChbxHyerHzY+dXGNkiito7eKOC3iSKKBdEMIGlEGakQDtk8nOw+ErUiC3QkYOnJGrVTaFDM+gZx4YbVpIHzrQQNFyhj5Vx8PhjC0QIXOcZxykkZwKQTUXU4IBIkYbHNNf3ltw20e8vG0wwsqMI01SyN2jUedAUZntNx2Pglmsi6TfXK4sYHGdB7yMPwj9T9a8nZ5JJC8jvLI8xkllk+0d2JzkmrnF+IT8UvJb25b7WU7RqMiBfuoPkKrKvkebrgn/eayk7LI7d8HbGOwqLPn4MHByVznFGRdyOZmwQAoxpNJU2/RdRxUhQPYdCc5yWJxSUY2AOV3IQAURlAO2/ZsjP5VGRW/uxnSBsDsXoAgGyPLPRSMiolSTqGWwdIOMGp7bjsNyCdlptZw3QMwzGS2kUAAZfTGTgZ602ldIyNz0LDc0YrkHlbCjO52ahuM6c9zggnpQFlSSPc/Pr2qrLF5d+laToQT2BGwzVd1yPrv6UDTM3Gn+YNSRyKO8efniqzLipNA3iah1+YHetO24LPNGJGOjV0Qr0FVLBIoFF1csfi/s8SjLyetW5vaTiLtm3m91jAwtvbjCJ/n86qxUFXqfTfp1pj8Kt+IFiO3ypqVIkgSRj+m2KNGDjr5gEjON6VKmHYcb4H7x360eKIytDHkL7xMIwQuQmSBnHelSpolnsXDuF2/CofcLRSqQ7tIx1PK2cFj6n/SrLrhmHUAHYjrSpVqiSCkuW36Np35u+KjOqlAhUMjHwHSQaw4yRv+X601KmBaC7JjAwRgEZx1FeYe2/FJr7il1at9nb8HuGtLeFDlWIGSx9T+lKlUzKRzvXCjYdu+Knb8rDBPMMHelSrIAqqG2OcA5GDjGBUEbocDlXIBGe1KlTGSRcjJOefSB2+dDl0qRsSRzai25pUqAByFgmvVnn0aSNunWoyHBO33tOelKlSEOnPjsNRwM5xQ+gToctuSKelQAPqT+6hxnehYwD+dKlQMC4H9M1XkQZPpSpUDRWbbf0pqVKpLP/2Q=="
                                        class="card-img-top" alt="...">
                                    <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                    <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                    
            
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                            <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                            <button type="button" class="btn btn-primary btn-lg boton2 small" style="margin-top: 15px;">Eliminar</button>
                                            <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                        </ul>

                                    </div>
                                </div>
                                <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                    <img style="height: 200px; object-fit:cover;"
                                        src="data:image/jpeg;base64,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"
                                        class="card-img-top" alt="...">
                                    <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                    <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                    
            
                                        <ul class="list-group list-group-flush">
                                            <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                            <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                            <button type="button" class="btn btn-primary btn-lg boton2 small" style="margin-top: 15px;">Eliminar</button>
                                            <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                        </ul>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <div style="background-color:#ee8f4c ; position: relative; right: 100px; padding: 5px; padding-right: 7px; border-radius: 50%;">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        </div>
                      <span class="visually-hidden">Previous</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <div style="background-color:#ee8f4c ; position: relative; right: -100px; padding: 5px; padding-left: 7px; border-radius: 50%;">
                            <span class="carousel-control-next-icon" aria-hidden="true" ></span>

                        </div>
                      <span class="visually-hidden">Next</span>
                    </button>
                  </div>
                
                
                <br> <br> <br>
                <div style="display: flex; justify-content: center; align-items: center;">
                    <button type="button" class="btn btn-primary btn-lg boton2" style="margin-right:50px" value="Go Back" onclick="history.back()">Cancelar</button>
                    <button type="submit" class="btn btn-primary btn-lg boton2" >Confirmar</button>
                </div>
        	</form>         
            </div>
         
        </div>

    </div>

  

<%@include file="/footer.jsp" %>
</body>

</html>