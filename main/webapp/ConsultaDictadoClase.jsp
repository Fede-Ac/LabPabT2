<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Ver Clases</title>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width" />


    <%@include file="/header.jsp" %>


</head>

<body>

    <div class="contenedor-total">

        <div class="contenedor">


            <div class="contenedor2">
                <div class="row">
                    <hr class="dashed col">
                    <h1 class="col"
                        style="font-size:50px;letter-spacing: 2px;text-shadow: 0px 3px #b34d1d; color: #FF9B55; text-align: center;">
                        Clases</h1>
                    <hr class="dashed col">
                </div>
                <div style="display: flex; justify-content:right; align-items: right;">
                    <button type="button" class="btn btn-primary btn-lg boton2 small ranking" data-bs-toggle="tooltip"
                        data-bs-placement="bottom" data-bs-title="Ordenar por no. de socios"
                        data-bs-custom-class="custom-tooltip"><img class="img-ranking" src="vector/ranking.svg"
                            style="width: 34px;"></button>
                </div>
                <br><br>
                <div style="display:grid;">
                    <div class="row">
                        <div class="col">
                            <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                <img style="height: 200px; object-fit:cover;"
                                    src="data:image/jpeg;base64,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"
                                    class="card-img-top" alt="...">
                                <h5 class="card-title custom-card-title">Clase pesas 1</h5>
                                <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                   
        
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                        <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                        <button type="button" class="btn btn-primary btn-lg boton2 small" data-bs-toggle="modal"
                                            data-bs-target="#modalSocios" style="margin-top: 15px;">Ver socios</button>
                                        <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                <img style="height: 200px; object-fit:cover;"
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"
                                    class="card-img-top" alt="...">
                                <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                   
        
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                        <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                        <button type="button" class="btn btn-primary btn-lg boton2 small" data-bs-toggle="modal"
                                            data-bs-target="#modalSocios" style="margin-top: 15px;">Ver socios</button>
                                        <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                <img style="height: 200px; object-fit:cover;"
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"
                                    class="card-img-top" alt="...">
                                <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                   
        
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                        <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                        <button type="button" class="btn btn-primary btn-lg boton2 small" data-bs-toggle="modal"
                                            data-bs-target="#modalSocios" style="margin-top: 15px;">Ver socios</button>
                                        <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                <img style="height: 200px; object-fit:cover;"
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"
                                    class="card-img-top" alt="...">
                                <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                   
        
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                        <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                        <button type="button" class="btn btn-primary btn-lg boton2 small" data-bs-toggle="modal"
                                            data-bs-target="#modalSocios" style="margin-top: 15px;">Ver socios</button>
                                        <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                <img style="height: 200px; object-fit:cover;"
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"
                                    class="card-img-top" alt="...">
                                <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                   
        
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                        <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                        <button type="button" class="btn btn-primary btn-lg boton2 small" data-bs-toggle="modal"
                                            data-bs-target="#modalSocios" style="margin-top: 15px;">Ver socios</button>
                                        <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card custom-card" style="width: 16rem; margin-bottom: 30px;">

                                <img style="height: 200px; object-fit:cover;"
                                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdOaj4b3Ae3SoCKXAN-1LNG05JUL3NureTBw&usqp=CAU"
                                    class="card-img-top" alt="...">
                                <h5 class="card-title custom-card-title">Clase pesas 2</h5>
                                <div class="card-body" style="padding-top:0; padding-bottom: 0;">
                                   
        
                                    <ul class="list-group list-group-flush">
                                        <li class="list-group-item"> <a class="card-text p-small" style="display: block; width:fit-content;margin:auto; color: #ee8f4c; padding-bottom: 8px;" href="https://www.google.com/">www.url.com</a></li>
                                        <li class="list-group-item" style="text-align: center;">13/4/2022 6:30</li>
                                        <button type="button" class="btn btn-primary btn-lg boton2 small" data-bs-toggle="modal"
                                            data-bs-target="#modalSocios" style="margin-top: 15px;">Ver socios</button>
                                        <li class="list-group-item" style="text-align: center;font-size: 13px; color: rgb(165, 165, 165);">Registro: 10/4/2022</li>
                                    </ul>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>

    </div>


    <div class="modal fade" id="modalSocios" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Socios registrados a (Clase)</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>

                </div>
                <div class="modal-body" style="padding:40px 80px 40px 80px ;">
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item"> <div style="display:flex ;"><div class="perfil-icono perfil-icono-chico"></div><div style="margin-top: auto; margin-bottom:auto">Socio 1</div></div></li>
                        <li class="list-group-item"> <div style="display:flex ;"><span class="perfil-icono perfil-icono-chico"></span><div style="margin-top: auto; margin-bottom:auto">Socio 2</div></div></li>
                        <li class="list-group-item"> <div style="display:flex ;"><span class="perfil-icono perfil-icono-chico"></span><div style="margin-top: auto; margin-bottom:auto">Socio 3</div></div></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
<%@include file="/footer.jsp" %>
</body>

</html>