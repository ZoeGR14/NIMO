<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Dar en adopción</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            html {
                height: 100%;
            }
            .mascotasSelect select{
                display: inline-block;
                width: 700px;
                cursor: pointer;
                padding: 7px 10px;
                height: 6vh;
                outline: 0; 
                border: 0;
                border-radius: 0;
                background: transparent;
                color: #ffffff;
                font-size: 0.5em;
                color: #ffffff;
                border:2px solid rgba(0,0,0,0.2);
                border-radius: 12px;
                position: relative;
                transition: all 0.25s ease;
            }
            .mascotasSelect{
                max-width: 2.5em;
                position: relative;
            }
            h2{
                font-size: 3em;
            }
            body {
                margin:0;
                padding:0;
                background: url(imagenes/514564654.png);
            }
            .user-box{
                font-size: 2em;
                margin-top: 1%;
            }

            .login-box {
                zoom:0.67;
                position: absolute;
                top: 50%;
                left: 50%;
                width: 800px;
                padding: 40px;
                transform: translate(-50%, -50%);
                background: rgba(0,0,0,.7);
                box-sizing: border-box;
                box-shadow: 0 15px 25px rgba(0,0,0,.6);
                border-radius: 10px;
            }

            .login-box h2 {
                margin: 0 0 30px;
                padding: 0;
                color: #fff;
                text-align: center;
            }

            .login-box .user-box {
                position: relative;
            }

            .login-box .user-box input {
                width: 100%;
                padding: 10px 0;
                font-size: 16px;
                color: #fff;
                margin-bottom: 30px;
                border: none;
                border-bottom: 1px solid #fff;
                outline: none;
                background: transparent;
            }
            .login-box .user-box label {
                position: absolute;
                top:0;
                left: 0;
                padding: 10px 0;
                font-size: 0.8em;
                color: #fff;
                pointer-events: none;
                transition: .5s;
            }

            .login-box .user-box input:focus ~ label,
            .login-box .user-box input:valid ~ label {
                top: -20px;
                left: 0;
                color: #af44f6;
                font-size: 0.6em;
            }

            .login-box form a {
                position: relative;
                display: inline-block;
                background-color: rgba(255,255,255,.6);
                padding: 10px 20px;
                color: #8926b7;
                font-size: 16px;
                text-decoration: none;
                text-transform: uppercase;
                overflow: hidden;
                transition: .5s;
                margin-top: 40px;
                letter-spacing: 4px
            }

            .login-box a:hover {
                background: #c403f4;
                color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 5px #bc03f4,
                    0 0 25px #760bbd,
                    0 0 50px #a803f4,
                    0 0 100px #8c1ed5;
            }

            .login-box a span {
                position: absolute;
                display: block;
            }

            .login-box a span:nth-child(1) {
                top: 0;
                left: -100%;
                width: 100%;
                height: 2px;
                background: linear-gradient(90deg, transparent, #b003f4);
                animation: btn-anim1 1s linear infinite;
            }

            @keyframes btn-anim1 {
                0% {
                    left: -100%;
                }
                50%,100% {
                    left: 100%;
                }
            }

            .login-box a span:nth-child(2) {
                top: -100%;
                right: 0;
                width: 2px;
                height: 100%;
                background: linear-gradient(180deg, transparent, #a803f4);
                animation: btn-anim2 1s linear infinite;
                animation-delay: .25s
            }

            @keyframes btn-anim2 {
                0% {
                    top: -100%;
                }
                50%,100% {
                    top: 100%;
                }
            }

            .login-box a span:nth-child(3) {
                bottom: 0;
                right: -100%;
                width: 100%;
                height: 2px;
                background: linear-gradient(270deg, transparent, #9c03f4);
                animation: btn-anim3 1s linear infinite;
                animation-delay: .5s
            }

            @keyframes btn-anim3 {
                0% {
                    right: -100%;
                }
                50%,100% {
                    right: 100%;
                }
            }

            .login-box a span:nth-child(4) {
                bottom: -100%;
                left: 0;
                width: 2px;
                height: 100%;
                background: linear-gradient(360deg, transparent, #a803f4);
                animation: btn-anim4 1s linear infinite;
                animation-delay: .75s
            }

            @keyframes btn-anim4 {
                0% {
                    bottom: -100%;
                }
                50%,100% {
                    bottom: 100%;
                }
            }
            .botoncito{
                background: black;
                cursor: pointer;
                border: none;
                padding: 16px 32px;
                color:#fff;
                font-size: 24px;
                font-weight: bold;
                position: relative;
                border-radius: 0.3em;
            }
            .botoncito::before{
                content:"";
                position: absolute;
                top: 0;
                left: 0;
                z-index: -1;
                width: 100%;
                height: 100%;
                background: linear-gradient(45deg, purple, blue, deeppink, blue, purple, blue, deeppink, blue);
                background-size: 800%;
                border-radius: 10px;
                filter:blur(8px);
                animation: glowing 20s linear infinite;
            }
            @keyframes glowing{
                0%{
                    background-position: 0 0;
                }
                50%{
                    background-position: 400% 0;
                }
                100%{
                    background-position: 0 0;
                }
            }

        </style>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css">
        <style>
            .sidebar {
                position: fixed;
                top: 0;
                left: 0;
                width: 50px;
                background: #ffffff;
                padding: 6px 16px;
                height: 100%;
                box-shadow: 5px 0 30px rgba(0, 0, 0, 0.1);
                transition: all 0.5s ease;
                overflow: hidden;
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
            <div class="login-box">
                <h2>Dar en Adopción</h2>
                <form action="Controler" method="post">
                    <div class="user-box">
                        <label>Elige la mascota para dar en adopción</label><br>
                        <div class="mascotasSelect">
                            <select id="mascotasSelect" name="mascota" required>
                                <c:forEach var="datito" items="${listita}">
                                    <option value="selec" disabled="true" selected="true" hidden>Seleccione una mascota</option>
                                    <option value="${datito.getId()}">${datito.getNombre()}</option>
                                </c:forEach>
                                <c:if test="${empty listita}">
                                    <option id="zero" selected="true" disabled="true" hidden>No hay mascotas registradas unu</option>
                                </c:if>
                            </select>
                        </div>
                    </div><br>
                    <div class="user-box">
                        <input type="text" name="historia" required autofocus>
                        <label>Historia de la mascota</label>
                    </div>
                    <div class="user-box">
                        <input type="type" name="salud" required="">
                        <label>Estado de salud</label>
                    </div>
                    <div class="user-box">
                        <input type="type" name="ubicacion" required="">
                        <label>Ubicacion</label>
                    </div>
                    <button type="submit" name="accion" value="zoeguapote" style="border:none;" class="botoncito"><center>Dar en adopción</center></button>
                </form>
            </div>
        </section>
    </body>
    <script src="prueba.js"></script>
</html>