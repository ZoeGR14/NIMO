<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Configuración NIMO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="sweetalert2.all.min.js"></script>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="menusito.css">
    </head>
    <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap');

            .bgcolor{
                background-color: #4b277a;
                transition: all .35s ease-in-out;
            }

            *{
                padding: 0;
                margin: 0;
                text-decoration: none;
                box-sizing: border-box;
                scroll-behavior: smooth;
                outline: none;
                list-style: none;
                -webkit-user-select: none;
                user-select: none;
                font-family: 'Poppins', sans-serif;
            }

            body{
                font-size: 16px;
                line-height: 1.5;
            }

            :before, :after{
                box-sizing: border-box;
            }

            /*img{
                width: 100%;
            }*/

            .container{
                max-width: 1140px;
                margin: auto;
            }

            .row{
                display: flex;
                flex-wrap: wrap;
            }

            .logoni{
                height: 70px;
            }

            #header{
                background-color: #4b277a;
                position: fixed;
                top: 0;
                left: 0;
                width: 100%;
                padding: 10px 20px;
                z-index: 100;
                display: flex;
                justify-content: space-between;
                align-items: center;
                transition: .5s;  
            }

            
            .home{
                position: relative;
                width: 100%;
                min-height: 100%;
                background-color: #4b277a;
                background-size: cover;
                align-items: center;
                justify-content: center;
                display: grid;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }


            .home .bodsito{
                display: flex;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
            }

            .home .bodsito .conteniendo{
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-wrap: wrap;
                padding: 60px 0;
                gap: 65px;
            }

            .conteniendo .cajac{
                position: relative;
                width: 400px;
                height: 450px;
                background: rgba(255,255,255,.5);
                border-radius: 10px;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-left: 40px;
            }



            .conteniendo .cajac .contenido-cajac{
                position: relative;
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
                text-align: center;
                gap: 30px;
                padding: 0 20px;
                width: 100%;
                height: 100%;
                overflow: hidden;
                border-radius: 10px;
            }

            .conteniendo .cajac .contenido-cajac .icon-cajac{
                color: var(--clr);
                width: 80px;
                height: 80px;
                box-shadow: 0 0 0 4px #2e2e2e, 0 0 0 6px var(--clr);
                display: flex;
                justify-content: center;
                align-items: center;
                font-size: 2.5em;
                background: #2e2e2e;
                transition: 0.5s ease-in-out;
            }

            .conteniendo .cajac:hover .contenido-cajac .icon-cajac{
                background: var(--clr);
                color: #2e2e2e;
                box-shadow: 0 0 0 4px #2e2e2e, 0 0 0 400px var(--clr);
            }

            .conteniendo .cajac .contenido-cajac .text-cajac{
                font-size: 1.5em;
                color: #2e2e2e;
                font-weight: 500;
                transition: 0.5s ease-in-out;
            }

            .conteniendo .cajac .contenido-cajac .text-cajac p{
                color: #666;
                transition: 0.5s ease-in-out;
            }

            .conteniendo .cajac:hover .contenido-cajac .text-cajac p{
                color: #2e2e2e;
            }

            .conteniendo .cajac .contenido-cajac .text-cajac a{
                position: relative;
                background: var(--clr);
                color: #2e2e2e;
                padding: 8px 15px;
                display: inline-block;
                text-decoration: none;
                margin-top: 10px;
                transition: 0.5s ease-in-out;
                border-radius: 10px;
            }

            .conteniendo .cajac:hover .contenido-cajac .text-cajac a{
                background: #2e2e2e;
                color: var(--clr);
                border-radius: 10px;
            }

            .conteniendo .cajac .contenido-cajac .text-cajac button{
                position: relative;
                background: var(--clr);
                color: #2e2e2e;
                padding: 8px 15px;
                display: inline-block;
                text-decoration: none;
                margin-top: 10px;
                transition: 0.5s ease-in-out;
                border-radius: 10px;
                border:none;
                font-family: 'Poppins', sans-serif;
                font-size: 25px;
                font-weight: 500;
                cursor: pointer;
            }

            .conteniendo .cajac:hover .contenido-cajac .text-cajac button{
                background: #2e2e2e;
                color: var(--clr);
                border-radius: 10px;
                border: none;
                font-family: 'Poppins', sans-serif;
                font-weight: 500;
                font-size: 25px;
                cursor: pointer;
            }

            .boton-go{
                font-size: 16px;
                color: rgb(235, 146, 31);
                border: 1px solid rgb(235, 146, 31);
                color: #fff;
                border: #fff 1px solid;
                max-width: 200px;
                border-radius: 30px;
                display: inline-block;
                text-transform: capitalize;
                letter-spacing: 1.5;
                transition: .5s;
                font-weight: 500;
                cursor: pointer;
                padding: 6px 20px;
                max-width: 100px;
                background: transparent;
            }

            .bg_animate{
                width: 100%;
                height: 140%;
                position: absolute;
                overflow: hidden;background-color: #4b277a;
            }
            .burbuja{
                border-radius: 50%;
                background: #fff;
                opacity: .3;

                position: absolute;


                animation: burbujas 10s linear infinite ;
            }

            .burbuja:nth-child(1){
                width: 80px;
                height: 80px;
                left: 5%;
                animation-duration: 5s;
            }

            .burbuja:nth-child(2){
                width: 100px;
                height: 100px;
                left: 35%;
                animation-duration: 6s;
            }

            .burbuja:nth-child(3){
                width: 20px;
                height: 20px;
                left: 15%;
                animation-duration: 3.5s;
            }

            .burbuja:nth-child(4){
                width: 50px;
                height: 50px;
                left: 90%;
                animation-duration: 6s;
            }

            .burbuja:nth-child(5){
                width: 70px;
                height: 70px;
                left: 65%;
                animation-duration: 5s;
            }

            .burbuja:nth-child(6){
                width: 20px;
                height: 20px;
                left: 50%;
                animation-duration: 3.5s;
            }

            .burbuja:nth-child(7){
                width: 20px;
                height: 20px;
                left: 50%;
                animation-duration: 6s;
            }

            .burbuja:nth-child(8){
                width: 100;
                height: 100px;
                left: 52%;
                animation-duration: 7s;
            }

            .burbuja:nth-child(9){
                width: 65px;
                height: 65px;
                left: 51%;
                animation-duration: 5s;
            }

            .burbuja:nth-child(10){
                width: 40px;
                height: 40px;
                left: 35%;
                animation-duration: 3.5s;
            }

            .burbuja:nth-child(11){
                width: 15px;
                height: 15px;
                left: 83%;
                animation-duration: 7s;
            }

            .burbuja:nth-child(12){
                width: 80px;
                height: 80px;
                left: 95%;
                animation-duration: 3.5s;
            }

            .burbuja:nth-child(13){
                width: 65px;
                height: 65px;
                left: 1%;
                animation-duration: 4s;
            }

            @keyframes burbujas{
                0%{
                    bottom: 0;
                    opacity: 0;
                }
                30%{
                    transform: translateX(30px);
                }
                50%{
                    opacity: .4;
                }
                100%{
                    bottom: 100%;
                    opacity: 0;
                }
            }

            @keyframes movimiento{
                0%{
                    transform: translateY(0);
                }
                50%{
                    transform: translateY(30px);
                }
                100%{
                    transform: translateY(0);
                }
            }
            #modal::backdrop{
                background-color: rgba(0,0,0,0.55);
            }

            #modal{
                transition: .3s ease all;
                transform: scale(1);
                box-shadow: 20px 20px 50px rgba(0,0,0,0.5);
                border-radius: 15px;
                background: rgba(255,255,255,0.9);
                overflow: hidden;
                justify-content: center;
                align-content: center;
                border-top: 2px solid grey;
                border-left: 2px solid grey;
                backdrop-filter: blur(10px);
                max-width: 70ch;
                padding-left: 50px;
                padding-right: 50px;
                padding-top: 50px;
                padding-bottom: 50px;
                position: relative;
                margin-top: 15%;
                margin-left: 33%;

            }

            #modal h3{
                color: #4b277a;
                font-family: 'Poppins', sans-serif;
                font-weight: 500;
            }

            #modal input[type="text"]{
                display: inline;
                border:  #4b277a;
                outline: #4b277a;
                background: rgba(0,0,0,0.1);
                padding: 1rem 1.5rem;
                margin-top: 30px;
                border-radius: 100px;
                width: 35%;
                transition: background .5s;
            }

            #btn-cerrar-modal{
                background-color: #4b277a;
                color: white;
                padding:  0.2rem 1rem;
                border-radius: 3rem;
                transition: .5s;
                margin-top: 10px;
                text-decoration: none;
                font-size: 20px;
            }

            #btn-enviar-modal{
                background-color: #4b277a;
                color: white;
                padding:  0.2rem 1rem;
                border-radius: 3rem;
                transition: .5s;
                margin-top: 10px;
                text-decoration: none;
                font-size: 20px;
            }
        </style>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
        %>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
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
                    <a href="/NIMO/Controler?visualizar=notas">
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
            <section class="home" id="home">
                <div class="bg_animate">
                    <div class="burbujas">
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                        <div class="burbuja"></div>
                    </div>
                </div>
                <br><br>
                <div class="bodsito">
                    <div class="conteniendo">
                        <div class="cajac" style="--clr: #89ec5b">
                            <div class="contenido-cajac">
                                <div class="icon-cajac">
                                    <ion-icon name="analytics"></ion-icon>
                                </div>
                                <div class="text-cajac">
                                    <h3>Modificar Datos Personales</h3>
                                    <p>Actualiza tus datos</p>
                                    <a href="modificadatos.jsp">Vamos</a>
                                </div>
                            </div>
                        </div>
                        <div class="cajac" style="--clr: #eb5ae5">
                            <div class="contenido-cajac">
                                <div class="icon-cajac">
                                    <ion-icon name="lock-closed"></ion-icon>
                                </div>
                                <div class="text-cajac">
                                    <h3>Cambiar Contraseña</h3>
                                    <p>Establece una nueva contraseña para tu cuenta</p>
                                    <a href="cambiaContra_usu.jsp">Vamos</a>
                                </div>
                            </div>
                        </div>
                        <div class="cajac" style="--clr: #5b98eb">
                            <div class="contenido-cajac">
                                <div class="icon-cajac">
                                    <ion-icon name="trash"></ion-icon>
                                </div>
                                <div class="text-cajac">
                                    <h3>Eliminar Cuenta</h3>
                                    <p>¿Deseas darte de baja?</p>

                                    <button id="btn-abrir-modal">Vamos</button>
                                    <dialog id="modal">
                                        <form action="eliminaCuentaUsu.jsp" method="post" name="buscarUsu">
                                            <h3>Confirme su contraseña para proceder</h3>
                                            <input type="text" placeholder="Contraseña" name="contraUsu" id="campito" required autofocus>
                                            &nbsp;&nbsp;
                                            <button type="submit" name="verificando" id="btn-enviar-modal">Verificar</button>

                                        </form>
                                        <br><br>
                                        <button id="btn-cerrar-modal" onclick="limpiar()">Cancelar</button>
                                    </dialog>

                                    <script>
                                        const btnAbrirModal = document.querySelector("#btn-abrir-modal");

                                        const btnCerrarModal = document.querySelector("#btn-cerrar-modal");

                                        const modal = document.querySelector("#modal");


                                        btnAbrirModal.addEventListener("click", () => {
                                            modal.showModal();
                                        });

                                        btnCerrarModal.addEventListener("click", () => {
                                            modal.close();
                                        });

                                        function limpiar() {
                                            var camp = document.getElementById("campito");
                                            camp.value = "";
                                        }
                                    </script>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </section>
        <script src="script_inic.js"></script>
        <%        } else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>

        <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
        <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>
    </body>
    <script src="prueba.js"></script>
</html>
