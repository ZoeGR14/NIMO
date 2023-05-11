<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- Mascota
Raza:
Historia:
Estado de salud:
Ubicación:
Contactar al usuario -->

<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Document</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css"  type="text/css" media="screen">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,400;0,500;1,400&display=swap');
            *{
                font-family: 'Poppins', sans-serif;
            }
            .flip-card {
                background-color: transparent;
                width: 320px;
                height: 500px;
                perspective: 1000px;
                font-family: sans-serif;
            }

            .title {
                font-size: 1.5em;
                font-weight: 900;
                text-align: center;
                box-shadow: 2px 2px 0 5px rgb(176, 80, 255);
                margin: 0;
            }

            .flip-card-inner {
                position: relative;
                width: 100%;
                height: 100%;
                text-align: center;
                transition: transform 0.8s;
                transform-style: preserve-3d;
            }

            .flip-card:hover .flip-card-inner {
                transform: rotateY(180deg);
            }

            .flip-card-front,
            .flip-card-back {
                box-shadow: 0 8px 14px 0 rgba(0, 0, 0, 0.2);
                position: absolute;
                display: flex;
                flex-direction: column;
                justify-content: center;
                width: 100%;
                height: 100%;
                -webkit-backface-visibility: hidden;
                backface-visibility: hidden;
                border: 1px solid rgb(226, 80, 255);
                border-radius: 1rem;
            }

            .flip-card-front {
/*                background: linear-gradient(120deg, rgb(233, 196, 255) 60%, rgb(242, 222, 255) 88%,
                    rgb(236, 195, 255) 40%, rgba(200, 80, 255, 0.603) 48%);*/
                    background-position: center center;
                    background-size: cover;
                color: rgb(176, 80, 255);
                
            }

            .flip-card-back {
                background: linear-gradient(120deg, rgb(202, 145, 255) 30%, rgb(200, 80, 255) 88%,
                    rgb(233, 196, 255) 40%, rgb(217, 160, 255) 78%);
                color: white;
                transform: rotateY(180deg);
            }

            .button {
                position: relative;
                overflow: hidden;
                height: 3rem;
                padding: 0 2rem;
                border-radius: 1.5rem;
                background: #3d3a4e;
                background-size: 400%;
                color: #fff;
                border: none;
            }

            .button:hover::before {
                transform: scaleX(1);
            }

            .button-content {
                position: relative;
                z-index: 1;
            }

            .button::before {
                content: '';
                position: absolute;
                top: 0;
                left: 0;
                transform: scaleX(0);
                transform-origin: 0 50%;
                width: 100%;
                height: inherit;
                border-radius: inherit;
                background: linear-gradient(82.3deg,
                    rgba(150, 93, 233, 1) 10.8%,
                    rgba(99, 88, 238, 1) 94.3%);
                transition: all 0.475s;
            }
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
            .ventana{
                display: flex;
            }
            body{
                display: flex;
            }
            h2{
                display: flex;
            }
            div{
                display: flex;
            }
            .ventana {
                display: flex;
                margin: auto;
                flex-direction: column;
                flex-wrap: wrap;
                align-content: space-around;
                align-items: center;
            }

            .flip-card {
                margin: auto;
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
            <h2>HOLA</h2>
            <c:forEach var="listarAdopcion" items="${listarAdopcion}">
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front" style="background-image: url(ControlerIMG?id=${listarAdopcion.getId()})">
                            <p class="title">${listarAdopcion.getNombre()}</p>
                            <p class="title2"> ${listarAdopcion.getRaza()}</p>
                        </div>

                        <div class="flip-card-back">
                            <p class="title">${listarAdopcion.getNombre()}</p> 
                            <p>Raza: ${listarAdopcion.getRaza()}</p>
                            <p>Edad: ${listarAdopcion.getNacimMasc()}</p>
                            <p>Historia: ${listarAdopcion.getHistoria()}</p>
                            <p>Estado de salud: ${listarAdopcion.getSalud()}</p>
                            <p>Ubicación: ${listarAdopcion.getUbicacion()}</p>
                            <button class="button">
                                <span class="button-content"> ¡Quiero Adoptarte ^^! </span>
                            </button>
                        </div>
                    </div>
                </div>
            </c:forEach>                        
        </section>
    </body>
    <script src="prueba.js"></script>
</html>