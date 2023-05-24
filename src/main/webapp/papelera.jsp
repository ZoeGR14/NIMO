<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">  
        <title>Notas</title>
        <link rel="stylesheet" href="notas.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="menusito.css">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <!-- Iconscout Link For Icons -->
        <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.0/css/line.css">
        <style>
            .btn {
                font-size: 20px;
                background-color: white;
                box-shadow: 1px 1px 5px .2px #00000035;
                color: black;
                width: 50px;
                height: 50px;
                opacity: 0.75;
                display: flex;
                justify-content: center;
                align-items: center;
                border: 1px solid #e7eae8;
                border-radius: 8px;
                cursor: pointer;
                animation: bounce_513 1s infinite;
                position: absolute;
                bottom: 40px;
                right: 60px;
            }

            @keyframes bounce_513 {
                0%,
                100% {
                    transform: translateX(25%);
                    animation-timing-function: cubic-bezier(0.8, 0, 1, 1);
                }

                50% {
                    transform: translateX(0);
                    animation-timing-function: cubic-bezier(0, 0, 0.2, 1);
                }
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
                    <a href="/NIMO/Controler?visualizar=mascotas">
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
            <h1 class="titulo">Papelera de Notas</h1>
            <center>
                <hr style="background-color: #2C1747; height: 5px; border: transparent; width: calc(100% - 100px)">
            </center>
            <div class="wrapper">
                <c:set var="variable" value="${0}"/>
                <c:set var="variable2" value="${0}"/>
                <c:forEach var="datito" items="${lista3}">
                    <c:if test="${datito.getEstado() == 2}">
                        <c:set var="variable" value="${variable + 1}"/>
                        <c:set var="variable2" value="${variable2 + 1}"/>
                        <li class="note">
                            <div class="details">
                                <p>Nota ${variable}</p>
                                <span>${datito.getContenido()}</span>
                            </div>
                            <div class="bottom-content">
                                <span>${datito.getFecha()}</span>
                                <div class="settings">
                                    <i onclick="showMenu(this)" class="uil uil-ellipsis-h"></i>
                                    <ul class="menu">
                                        <form action="Controler?accion=revertNote" method="post">
                                            <button name="deshacer" value="${datito.getId()}" style="all: unset; display: flex;"><li><i class="uil uil-history-alt"></i>Deshacer</li></button>
                                        </form>
                                        <form action="Controler?accion=removeCompletelyNote" method="post" id="removerPorCompleto">
                                            <button name="borrar" value="${datito.getId()}" style="all: unset; display: flex;"><li style="width:100%;"><i class="uil uil-trash"></i>Borrar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li></button>
                                        </form>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </c:if>
                </c:forEach>
            </div>
            <form action="Controler" method="post">
                <button class="btn" value="Visualizar mis notas" name="accion">
                    <i class='bx bx-arrow-back'></i>
                </button>
            </form>
        </section>
        <script src="notas.js"></script>
    </body>
    <script src="prueba.js"></script>
</html>