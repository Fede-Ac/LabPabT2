<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Entrenamos, deporte en línea</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />

    <link rel="stylesheet" href="styles.css" />
    <link rel="stylesheet" href="bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="bootstrap/docs.css">
    <script type="module" src="bootstrap/javascript/bootstrap.bundle.js"></script>

</head>
<body>
    <nav class="navbar sticky-top navbar-expand-lg bg-light" style="box-shadow: 0px 4px 4px rgba(75, 7, 7, 0.39);">
        <div class="container-fluid" style="padding-left: 28px; padding-right: 0;">
            <div>
                <button class="navbar-toggler" style="border: none;padding: 0;background: none; margin-right: 28px;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="index.html" ><img style="height: 30px;" src="imagenes/logo.png" alt="logo"></a>
            </div>
    
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="ConsultaActividadDeportiva.html">Actividades Deportivas</a> 
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Clases</a> <!-- aaaa -->
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="ConsultaDictadoClase.html">Ver clases</a></li>
                                <li><a class="dropdown-item" href="AltaDictadoClase.html">Nueva clase</a></li>
                                <li><a class="dropdown-item" href="RegistroDictadoClase.html">Registrarse a una clase</a></li>
                                </ul>
                        </li>
                    </ul>
                </div>
    

                <div class="btn-group dropstart">   
                    <button class="btn dropdown-toggle" style="padding: 0;" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="imagenes/perfil.png" class="iconoPerfil" style="filter: drop-shadow(3px 5px 2px #7a14143d);" alt="perfil">
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="ConsultaUsuario.html">Ver perfil</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="IniciarSesion.html">Iniciar sesion</a></li>
                        <li><a class="dropdown-item" href="#">Crear cuenta</a></li>
                        <li><a class="dropdown-item" href="#">Cerrar sesion</a></li>
                    </ul>              
                </div>

        </div>
    </nav>

    <div class="contenedor-total">
        <img src="imagenes/decoracion.png" style="width: 100%; z-index: 1; position: relative;" alt="decoracion">
        <!--<div style="background-image: url(imagenes/decoracion.png); width: 100%; height: 471px; background-repeat: no-repeat; background-size:contain;"></div>-->
        <div id="carouselExampleIndicators" class="carousel slide" style="width: 60%; margin-left:20% ; z-index: 2; position:relative; top: 0px; margin-top: -36%;box-shadow: 0px 4px 4px rgba(90, 13, 13, 0.356); border-radius: 40px;" data-bs-ride="true">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner" style="border-radius: 14px;">
              <div class="carousel-item active">
                <img src="imagenes/img.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="imagenes/img2.jpg" class="d-block w-100" alt="...">
              </div>
              <div class="carousel-item">
                <img src="imagenes/img3.jpg" class="d-block w-100" alt="...">
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>

        <div class="contenedor">
            <div class="contenedor2" >
                <div class="row">
                    <hr class="dashed col" style="margin-top:auto ; margin-bottom:auto">
                    <a class="btn btn-primary btn-lg boton col" href="IniciarSesion.html">COMIENZA AQUI</a>
                    <hr class="dashed col" style="margin-top:auto ; margin-bottom:auto">
                </div>
            </div>
            
            
            <div style="padding-top: 35px; padding-left: 7%; padding-right: 7%;">
                <div style="display:flex;">
                    <div class="desc1">
                        <div class="header-1" style="display: flex;">
                            <h1>NUESTRO</h1><h1 style="color: #FF9B55;">OBJETIVO</h1>    
                        </div>
                        <p style="width: 100%; margin: 0; padding: 0; margin-top: 16px;">La propagación del coronavirus en el mundo ha afectado considerablemente la salud de las personas tanto por los efectos del virus y los contagios, como por la suspensión de actividades deportivas en general y el cierre de clubes y gimnasios deportivos. </p>
                    </div>
                    <img class="icono" src="vector/pesa.svg" alt="" >
                    
                </div>
                <br> <br>
                <div style="display:flex;">
                    <img class="icono" src="vector/tenis.svg" alt="" >
                    <div class="desc1">
                        <div class="header-1" style="display: flex;">
                        </div>
                        <p style="width: 100%; margin: 0; padding: 0; margin-top: 16px;">En Entrenamos.uy pretendemos brindar una forma alternativa para la realización de actividades deportivas a través de nuestra plataforma, que permite el acceso a clases en línea dictadas por los más hábiles profesores disponibles de diversas instituciones. </p>
                    </div>
                </div>

            </div>
            
            <!--  <img src="vector/pesa.svg" alt="">
            <img src="vector/tenis.svg" alt="">  -->
        </div>

    </div>

</body>
</html>