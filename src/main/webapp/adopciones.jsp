<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Explora</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="adopcionesN.css" type="text/css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style>
            .alineado{
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: calc(100vh - 65px);
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
            <center>
                <br>
                <h2 class="titulo">Adopciones</h2>
                <div class="alineado">
                    <div>
                        <a href="/Controler?visualizar=verAdop" style="none">
                            <div class="card">
                                <h2>Adoptar</h2>
                            </div>
                        </a>
                    </div>

                    <div>
                        <a href="/Controler?visualizar=adopciones" style="none">
                            <div class="card">
                                <h2>Dar en Adopción</h2>
                            </div>
                        </a>
                    </div>
                    <%--<c:if test="${not empty listaAd}">--%>
                    <div>
                        <a href="/Controler?visualizar=vAU" style="none">
                            <div class="card">
                                <h2>Visualizar Adopciones</h2>
                            </div>
                        </a>
                    </div>

                    <%--</c:if>--%>
                </div>
            </center>
        </section>
    </body>
    <script src="prueba.js"></script>
</html>
