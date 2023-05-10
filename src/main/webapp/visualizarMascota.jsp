<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Mis Mascotas</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="menusito.css">
        <link rel="stylesheet" href="visuMasc.css" type="text/css">
        <link rel="stylesheet" href="modalMascota.css" type="text/css">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    </head>
    <body>
        <aside class="sidebar">
            <div class="logo_content">
                <div class="logo">
                    <img src="imagenes/logo_nimo.png" alt="" class="logo2">
                    <div class="logo_name">NIMO</div>
                </div>
                <i class='bx bx-menu' id='btn'></i>
            </div>

            <ul class="nav">
                <li>
                    <a href="/NIMO/Controler?visualizar=mascotas">
                        <i class='bx bxs-dog'></i>
                        <span class="link_name">Mis Mascotas</span>
                    </a>
                    <span class="tooltip">Mis Mascotas</span>
                </li>
                <li>
                    <a href="calendario.html">
                        <i class='bx bx-calendar'></i>
                        <span class="link_name">Calendario</span>
                    </a>
                    <span class="tooltip">Calendario</span>
                </li>
                <li>
                    <a href="informativo.html">
                        <i class='bx bx-info-circle'></i>
                        <span class="link_name">Información Mascotas</span>
                    </a>
                    <span class="tooltip">Información Mascotas</span>
                </li>
                <li>
                    <a href="comunidad.html">
                        <i class='bx bx-group'></i>
                        <span class="link_name">Comunidad</span>
                    </a>
                    <span class="tooltip">Comunidad</span>
                </li>
                <li>
                    <a href="/NIMO/Controler?visualizar=notas">
                        <i class='bx bx-note'></i>
                        <span class="link_name">Notas</span>
                    </a>
                    <span class="tooltip">Notas</span>
                </li>
                <li>
                    <a href="saludBienestar.html">
                        <i class='bx bxs-heart-circle'></i>
                        <span class="link_name">Salud y Bienestar</span>
                    </a>
                    <span class="tooltip">Salud y Bienestar</span>
                </li>
                <li>
                    <a href="adopciones.html">
                        <i class='bx bxs-clinic'></i>
                        <span class="link_name">Adopciones</span>
                    </a>
                    <span class="tooltip">Adopciones</span>
                </li>
                <li>
                    <a href="config_usu.jsp">
                        <i class='bx bx-cog'></i>
                        <span class="link_name">Configuración</span>
                    </a>
                    <span class="tooltip">Configuración</span>
                </li>
                <li>
                    <a href="cierreSesion.jsp">
                        <i class='bx bx-log-out-circle'></i>
                        <span class="link_name">Cerrar Sesión</span>
                    </a>
                    <span class="tooltip">Cerrar Sesión</span>
                </li>
            </ul>
        </aside>
        <section class="ventana">
            <h1 class="titulo">Mis Mascotas</h1>
            <div class='container'>
                <c:if test="${empty lista}">
                    <h3 class="warning warMascotas">No hay mascotas registradas</h3>
                </c:if>
                <c:set var="variable" value="${0}"/>
                <c:forEach var="dato" items="${lista}">
                    <c:set var="variable" value="${variable + 1}"/>

                    <div class="card" data-name="p-${variable}">
                        <h2>${dato.getNombre()}</h2>
                        <p>${dato.getTipoAnimal()}<br>${dato.getTipoRaza()}</p>
                        <span>¡Seleccioname!</span>
                        <div class="pic" style="background-image: url(ControlerIMG?id=${dato.getId()})">
                        </div>
                        <button></button>
                    </div>
                </c:forEach>

                <c:set var="target" value="${0}"/>
                <div class="info-mascotas">
                    <c:forEach var="dato" items="${lista}">
                        <c:set var="target" value="${target + 1}"/>
                        <div class="info" data-target="p-${target}">
                            <i class="fas fa-times"></i>
                            <img src="ControlerIMG?id=${dato.getId()}" draggable='false' alt="">
                            <h3>${dato.getNombre()}</h3>
                            <p>Información de la mascota:</p>
                            <p class='informacion'>
                                Tipo de Animal: ${dato.getTipoAnimal()}<br>
                                Color: ${dato.getColor()}<br>
                                Tipo de Raza: ${dato.getRaza()}<br>
                                Raza: ${dato.getTipoRaza()}<br>
                                Fecha de Nacimiento: ${dato.getNacimMasc()}<br>
                                Sexo: ${dato.getSexo()}<br>
                                Peso: ${dato.getPeso()}<br>
                                Gustos: ${dato.getGustos()}<br>
                                Disgustos: ${dato.getDisgustos()}<br>
                                Alergias: ${dato.getAlergias()}<br>
                            </p>
                            <div class='buttons'>
                                <form action='Controler?accion=eliminarMascota' method='post' id="eliminar">
                                    <input type="hidden" value='${dato.getId()}'  name='delete'>
                                    <button class="buy" id="btnD" >Eliminar mascota</button>
                                </form>
                                <form action='Controler?accion=editarMascota' method='post' id="editar">
                                    <input type="hidden" value='${dato.getId()}'  name='edit'>
                                    <button type='submit' class="cart" id="btnE">Editar información</button>
                                </form>
                            </div>
                        </div>
                    </c:forEach>
                </div>

            </div>
            <form action="Controler" method="post">
                <button type="submit" class="button" name="accion" value="Añadir nueva mascota">
                    <span class="button__text">Agregar mascota</span>
                    <span class="button__icon"><svg xmlns="http://www.w3.org/2000/svg" width="24" viewBox="0 0 24 24" stroke-width="2" stroke-linejoin="round" stroke-linecap="round" stroke="currentColor" height="24" fill="none" class="svg"><line y2="19" y1="5" x2="12" x1="12"></line><line y2="12" y1="12" x2="19" x1="5"></line></svg></span>
                </button>
            </form>
        </section>
    </body>
    <script src="prueba.js"></script>
    <script src="modalMascota.js"></script>
    <script>
        var form = document.getElementById("editar");
        var botonEditar = document.getElementById("btnE");

        var form2 = document.getElementById("eliminar");
        var botonDelete = document.getElementById("btnD");

        botonEditar.addEventListener("click", function (e) {
            e.preventDefault();
            Swal.fire({
                title: "¿Qué deseas editar?",
                text: "Selecciona la opción que desees",
                icon: "question",
                showDenyButton: true,
                showCancelButton: true,
                confirmButtonText: "Fotografía",
                confirmButtonColor: "#4b277a",
                denyButtonText: "Datos de mi mascota",
                denyButtonColor: "#624891",
                cancelButtonText: "Cancelar",
                color: "black"
            }).then((result) => {
                if (result.isConfirmed) {
                    form.action = "Controler?accion=editarFoto";
                    form.submit();
                } else if (result.isDenied) {
                    form.submit();
                }
            });
        });

        botonDelete.addEventListener("click", function (e) {
            e.preventDefault();
            Swal.fire({
                title: "¿Estás seguro?",
                text: "Toda la información de tu mascota será borrada",
                icon: "warning",
                showCancelButton: true,
                confirmButtonText: "Si, lo estoy",
                confirmButtonColor: "#4b277a",
                cancelButtonText: "Regresar",
                color: "black"
            }).then((result) => {
                if (result.isConfirmed) {
                    form2.submit();
                }
            });
        });
    </script>
</html>
