<link rel="stylesheet" href="styles.css" />

<link rel="stylesheet" href="bootstrap/bootstrap.min.css">

<link rel="stylesheet" href="bootstrap/docs.css">

    <nav class="navbar sticky-top navbar-expand-lg bg-light" style="box-shadow: 0px 4px 4px rgba(75, 7, 7, 0.39);">
        <div class="container-fluid" style="padding-left: 28px; padding-right: 0;">
            <div>
                <button class="navbar-toggler" style="border: none;padding: 0;background: none; margin-right: 28px;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand" href="index.jsp" ><img style="height: 30px;" src="imagenes/logo.png" alt="logo"></a>
            </div>
    
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="ConsultaActividadDeportiva.jsp">Actividades Deportivas</a> 
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Clases</a> <!-- aaaa -->
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="ConsultaDictadoClase.jsp">Ver clases</a></li>
                                <li><a class="dropdown-item" href="AltaDictadoClase.jsp">Nueva clase</a></li>
                                <li><a class="dropdown-item" href="RegistroDictadoClase.jsp">Registrarse a una clase</a></li>
                                </ul>
                        </li>
                    </ul>
                </div>
    

                <div class="btn-group dropstart">   
                    <button class="btn dropdown-toggle" style="padding: 0;" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="imagenes/perfil.png" class="iconoPerfil" style="filter: drop-shadow(3px 5px 2px #7a14143d);" alt="perfil">
                    </button>
                    <ul class="dropdown-menu">
                        <li><a class="dropdown-item" href="ConsultaUsuario.jsp">Ver perfil</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="IniciarSesion.jsp">Iniciar sesion</a></li>
                        <li><a class="dropdown-item" href="#">Crear cuenta</a></li>
                        <li><a class="dropdown-item" href="#">Cerrar sesion</a></li>
                    </ul>              
                </div>

        </div>
    </nav>
