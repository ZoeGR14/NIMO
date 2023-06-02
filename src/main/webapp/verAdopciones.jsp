
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta charset="UTF-8">
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="mainmain.css">
        <link rel="stylesheet" href="modalContacto.css">
        <title>Mis Adopciones</title>
        <style>
            body{
                background-image:url(imagenes/fonditouwu2.jpg);
                background-size: cover;
                background-position: center center;
            }
        </style>
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
                    <a href="/Controler?visualizar=mascotas">
                        <i class='bx bxs-dog'></i>
                        <span class="link_name">Mis Mascotas</span>
                    </a>
                    <span class="tooltip">Mis Mascotas</span>
                </li>
                <li>
                    <a href="2_calendario.jsp">
                        <i class='bx bx-calendar'></i>
                        <span class="link_name">Calendario</span>
                    </a>
                    <span class="tooltip">Calendario</span>
                </li>
                <li>
                    <a href="informativo.jsp">
                        <i class='bx bx-info-circle'></i>
                        <span class="link_name">Información Mascotas</span>
                    </a>
                    <span class="tooltip">Información Mascotas</span>
                </li>
                <li>
                    <a href="comunidad.jsp">
                        <i class='bx bx-group'></i>
                        <span class="link_name">Comunidad</span>
                    </a>
                    <span class="tooltip">Comunidad</span>
                </li>
                <li>
                    <a href="/Controler?visualizar=notas">
                        <i class='bx bx-note'></i>
                        <span class="link_name">Notas</span>
                    </a>
                    <span class="tooltip">Notas</span>
                </li>
                <li>
                    <a href="saludBienestar.jsp">
                        <i class='bx bxs-heart-circle'></i>
                        <span class="link_name">Salud y Bienestar</span>
                    </a>
                    <span class="tooltip">Salud y Bienestar</span>
                </li>
                <li>
                    <a href="adopciones.jsp">
                        <i class='bx bxs-clinic'></i>
                        <span class="link_name">Adopciones</span>
                    </a>
                        <span class="tooltip">Adopciones</span>
                </li>
                <c:if test="${sessionScope.tipo_usuario eq 2}">
                    <li>
                        <a href="soyVeterinario.jsp">
                            <i class='bx bx-plus-medical'></i>
                            <span class="link_name">Opciones Veterinario</span>
                        </a>
                        <span class="tooltip">Adopciones</span>
                    </li>
                </c:if>
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
            <h1 class="mainT">Solicitudes de Adopción</h1>
            <div class="contenedor">
                <c:if test="${empty listaAd}">
                    <style>
                    .notifications-container {
                        width: 320px;
                        height: auto;
                        font-size: 0.875rem;
                        line-height: 1.25rem;
                        display: flex;
                        margin: auto;
                        flex-direction: column;
                        gap: 1rem;
                    }

                    .flex {
                        display: flex;
                    }

                    .flex-shrink-0 {
                        flex-shrink: 0;
                    }

                    .error-alert {
                        border-radius: 0.375rem;
                        padding: 1rem;
                        background-color: rgb(254 242 242);
                    }

                    .error-svg {
                        color: #F87171;
                        width: 1.25rem;
                        height: 1.25rem;
                    }

                    .error-prompt-heading {
                        color: #991B1B;
                        font-size: 0.875rem;
                        line-height: 1.25rem;
                        font-weight: bold;
                    }

                    .error-prompt-container {
                        display: flex;
                        flex-direction: column;
                        margin-left: 1.25rem;
                    }

                    .error-prompt-wrap {
                        margin-top: 0.5rem;
                        color: #B91C1C;
                        font-size: 0.875rem;
                        line-height: 1.25rem;
                    }

                    .error-prompt-list {
                        padding-left: 1.25rem;
                        margin-top: 0.25rem;
                        list-style-type: disc;
                    }
                </style>
                <div class="notifications-container">
                    <div class="error-alert">
                        <div class="flex">
                            <div class="flex-shrink-0">

                                <svg aria-hidden="true" fill="currentColor" viewBox="0 0 20 20" xmlns="http://www.w3.org/2000/svg" class="error-svg">
                                <path clip-rule="evenodd" d="M10 18a8 8 0 100-16 8 8 0 000 16zM8.707 7.293a1 1 0 00-1.414 1.414L8.586 10l-1.293 1.293a1 1 0 101.414 1.414L10 11.414l1.293 1.293a1 1 0 001.414-1.414L11.414 10l1.293-1.293a1 1 0 00-1.414-1.414L10 8.586 8.707 7.293z" fill-rule="evenodd"></path>
                                </svg>
                            </div>
                            <div class="error-prompt-container">
                                <p class="error-prompt-heading">No hay respuestas aún. :(
                                </p><div class="error-prompt-wrap">
                                    <ul class="error-prompt-list" role="list">
                                        <li>¡Da en adopción a una mascota antes!</li>
                                        <li>Espera a que las personas respondan el formulario de adopción.</li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                </c:if>
                <div class="cards">
                    <c:set var="variable" value="${0}"/>
                    <c:forEach items="${listaAd}" var="listaAd" varStatus="status">
                        <c:set var="variable" value="${variable + 1}"/>
                        <div class="card" style="background-image: url(ControlerIMG?id=${listarAd.getId()};)">
                            <p class="tip">Mascota: ${listaAd.getNombre()}</p>
                            <p class="second-text">Usuario interesado: <p class="second-text" style="color:orange;">${listaAd.getUsuario()}</p></p>
                            <form action="Controler?accion=verFormularioAdopcion" method="post">
                                <button class="button" name="formulario" value="${listaAd.getIdD()}">Ver respuestas</button>
                            </form>
                            <div class="ola">
                                <button class="button"  data-name="p-${variable}" name="contactar" value="${listaAd.getUsuario()}">Contactar</button>
                                <form action="Controler?accion=eliminarSolicitud" method="post">
                                     <input type="hidden" name="eliminar" value="${listaAd.getIdD()}"> 
                                    <button class="button2 btnEliminar">Rechazar</button>
                                </form>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <c:set var="target" value="${0}"/>
                <div class="contacto">
                    <c:forEach var="listaAd" items="${listaAd}">
                        <c:set var="target" value="${target + 1}"/>
                        <div class="info" data-target="p-${target}">
                            <i class="fas fa-times"></i>
                            <h3>${listaAd.getNombre()}</h3>
                            <p>Información contacto:</p>
                            <p class='informacion'>
                                Nombre: ${listaAd.getNombre_usu()}<br>
                                Apellidos: ${listaAd.getAp_pat()} ${listaAd.getAp_mat()}<br>
                                E-mail: ${listaAd.getMail()}<br>
                                Teléfono: ${listaAd.getTelefono()}<br>
                            </p>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </section>
    </body>
    <script src="prueba.js"></script>
    <script src="modalContacto.js"></script>
    <script>
    var btnEliminar = document.querySelectorAll(".btnEliminar");

    btnEliminar.forEach(function(btn) {
        btn.addEventListener("click", function(e) {
            e.preventDefault();

            Swal.fire({
                title: '¿Estás seguro?',
                text: 'Esta acción no se puede deshacer',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'Sí, eliminar',
                cancelButtonText: 'Cancelar'
            }).then((result) => {
                if (result.isConfirmed) {
                    e.target.closest("form").submit();
                }
            });
        });
    });
</script>

</html>
