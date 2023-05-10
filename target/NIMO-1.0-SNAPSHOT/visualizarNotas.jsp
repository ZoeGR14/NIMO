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
                cursor: pointer;
                width: 50px;
                height: 50px;
                border: none;
                position: absolute;
                border-radius: 10px;
                -webkit-box-shadow: 1px 1px 5px .2px #00000035;
                box-shadow: 1px 1px 5px .2px #00000035;
                -webkit-transition: .2s linear;
                transition: .2s linear;
                transition-delay: .2s;
                display: -webkit-box;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-align: center;
                -ms-flex-align: center;
                align-items: center;
                -webkit-box-pack: center;
                -ms-flex-pack: center;
                justify-content: space-between;
                bottom: 40px;
                right: 60px;
            }

            .btn:hover {
                width: 160px;
                transition-delay: .2s;
            }

            .btn:hover > .paragraph {
                visibility: visible;
                opacity: 1;
                -webkit-transition-delay: .4s;
                transition-delay: .4s;
            }

            .btn:hover > .icon-wrapper .icon {
                transform: scale(1.1);
            }

            .bnt:hover > .icon-wrapper .icon path {
                stroke: black;
            }

            .paragraph {
                color: black;
                visibility: hidden;
                opacity: 0;
                font-size: 18px;
                margin-right: 25px;
                padding-left: 20px;
                -webkit-transition: .2s linear;
                transition: .2s linear;
                font-weight: bold;
                text-transform: uppercase;
            }

            .icon-wrapper {
                width: 50px;
                height: 50px;
                position: absolute;
                top: 0;
                right: 0;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .icon {
                transform: scale(.9);
                transition: .2s linear;
            }

            .icon path {
                stroke: #000;
                stroke-width: 2px;
                -webkit-transition: .2s linear;
                transition: .2s linear;
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
            <h1 class="titulo">Mis Notas</h1>
            <center>
                <hr style="background-color: #2C1747; height: 5px; border: transparent; width: calc(100% - 100px)">
            </center>
            <div class="popup-box">
                <div class="popup">
                    <div class="content">
                        <header>
                            <p></p>
                            <i class="uil uil-times"></i>
                        </header>
                        <form action="Controler" method="post" id="formulario">
                            <div class="row description">
                                <label>Descripción</label>
                                <textarea name="nota" required spellcheck="true"></textarea>
                            </div>
                            <button class="button" name="accion" value="✔"></button>
                        </form>
                    </div>
                </div>
            </div>
            <div class="wrapper">
                <li class="add-box">
                    <div class="icon"><i class="uil uil-plus"></i></div>
                    <p>Añadir nueva nota</p>
                </li>
                <c:set var="variable" value="${0}"/>
                <c:set var="variable2" value="${0}"/>
                <c:forEach var="datito" items="${lista2}">
                    <c:if test="${datito.getEstado() == 1}">
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
                                        <li onclick="updateNote(${datito.getId()},'${datito.getContenido()}')"><i class="uil uil-pen"></i>Editar</li>
                                        <form action="Controler?accion=removeNote" method="post">
                                            <button name="borrar" value="${datito.getId()}" style="all: unset; display: flex; width: 100%;"><li><i class="uil uil-trash"></i>Papelera</button></li>
                                        </form>
                                    </ul>
                                </div>
                            </div>
                        </li>
                    </c:if>
                </c:forEach>
            </div>
            <form action="Controler" method="post">
                <button class="btn" value="Visualizar mi papelera" name="accion">
                    <p class="paragraph"> papelera </p>
                    <span class="icon-wrapper">
                        <svg class="icon" width="30px" height="30px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <path d="M6 7V18C6 19.1046 6.89543 20 8 20H16C17.1046 20 18 19.1046 18 18V7M6 7H5M6 7H8M18 7H19M18 7H16M10 11V16M14 11V16M8 7V5C8 3.89543 8.89543 3 10 3H14C15.1046 3 16 3.89543 16 5V7M8 7H16" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
                        </svg>
                    </span>
                </button>
            </form>
        </section>
        <script src="notas.js"></script>
    </body>
    <script src="prueba.js"></script>
</html>