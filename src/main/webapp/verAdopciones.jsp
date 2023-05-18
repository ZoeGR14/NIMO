
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css">
        <title>Mis Adopciones</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,400&display=swap');

            * {
                font-family: 'Poppins', sans-serif;
            }

            .cards {
                display: flex;
                flex-direction: row;
                gap: 15px;
            }

            .card {
                background-color: #3d1f7a;
            }

            .cards .card {
                display: flex;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                text-align: center;
                height: auto;
                width: 250px;
                border-radius: 10px;
                color: white;
                cursor: pointer;
                transition: 400ms;
                padding: 10px;
            }

            .cards .card p.tip {
                font-size: 1em;
                font-weight: 700;
            }

            .cards .card p.second-text {
                font-size: .7em;
            }

            .cards .card:hover {
                transform: scale(1.1, 1.1);
            }

            .cards:hover>.card:not(:hover) {
                filter: blur(10px);
                transform: scale(0.9, 0.9);
            }

            .contenedor {
                width: 500px;
                height: auto;
                display: flex;
            }
            .ola{
                display: flex;
                flex-direction: row;
            }
            .button {
                flex-direction: row;
                background: transparent;
                position: relative;
                padding: 5px 15px;
                display: flex;
                align-items: center;
                font-size: 10px;
                font-weight: 600;
                text-decoration: none;
                cursor: pointer;
                border: 1px solid rgb(165, 110, 228);
                border-radius: 25px;
                outline: none;
                overflow: hidden;
                color: rgb(165, 110, 228);
                transition: color 0.3s 0.1s ease-out;
                text-align: center;
                margin: 3px;
            }

            .button span {
                margin: 10px;
            }

            .button::before {
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                margin: auto;
                content: '';
                border-radius: 50%;
                display: block;
                width: 20em;
                height: 20em;
                left: -5em;
                text-align: center;
                transition: box-shadow 0.5s ease-out;
                z-index: -1;
            }

            .button:hover {
                color: #fff;
                border: 1px solid rgb(165, 110, 228);
            }

            .button:hover::before {
                box-shadow: inset 0 0 0 10em rgb(165, 110, 228);
            }

            .button2 {
                flex-direction: row;
                background: transparent;
                position: relative;
                padding: 5px 15px;
                display: flex;
                align-items: center;
                font-size: 10px;
                font-weight: 600;
                text-decoration: none;
                cursor: pointer;
                border: 1px solid rgb(228, 110, 110);
                border-radius: 25px;
                outline: none;
                overflow: hidden;
                color: rgb(228, 110, 110);
                transition: color 0.3s 0.1s ease-out;
                text-align: center;
                margin: 3px;
            }

            .button2 span {
                margin: 10px;
            }

            .button2::before {
                position: absolute;
                top: 0;
                left: 0;
                right: 0;
                bottom: 0;
                margin: auto;
                content: '';
                border-radius: 50%;
                display: block;
                width: 20em;
                height: 20em;
                left: -5em;
                text-align: center;
                transition: box-shadow 0.5s ease-out;
                z-index: -1;
            }

            .button2:hover {
                color: #fff;
                border: 1px solid rgb(228, 110, 110);
            }

            .button2:hover::before {
                box-shadow: inset 0 0 0 10em rgb(228, 110, 110);
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
            <div class="contenedor">
                <c:forEach items="${listaAd}" var="datote">
                <div class="cards">
                    <div class="card">
                        <p class="tip">${datote.getNombre()}</p>
                        <p class="second-text">Lorem Ipsum</p>
                        <button class="button">Ver más</button>
                        <div class="ola">
                            <button class="button">Contactar</button>
                            <button class="button2">Rechazar</button>
                        </div>
                    </div>
                </div>
                </c:forEach>
            </div>
        </section>
    </body>
 <script src="prueba.js"></script>
</html>
