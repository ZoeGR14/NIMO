<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>NIMO - Veterinarios</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600;700&display=swap');
            

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
                zoom: adjust;
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

            .nav{
                position: relative;
                display: flex;
            }

            .nav li{
                margin: 0 0 0 30px;
            }
            .desplegar{
                background-color: transparent;
                cursor: pointer;
                font-size: 16px;
            }
            .nav li a, .desplegar{
                color: #fff;
                font-weight: 300;
                text-transform: capitalize;
                &.sticky{
                    color: #fff;
                }
            }

            .nav li a:hover, .desplegar:hover{
                color: #c59bfb;
                font-weight: 300;
                text-transform: capitalize;
            }

            .home{
                position: relative;
                width: 100%;
                min-height: 100vh;
                background: url('imagenes/fondopinic.jpg') no-repeat;
                background-size: cover;
                align-items: center;
                justify-content: center;
                display: flex;
            }

            .home::before{
                content: '';
                position: absolute;
                left: 0;
                top: 0;
                height: 100%;
                width: 100%;
                z-index: 1;
                background: rgba(0,0,0,0.3);
            }

            .home .content{
                max-width: 900px;
                text-align: center;
                z-index: 2;
            }

            .home .content h2{
                font-size: 80px;
                font-weight: 400;
                font-family: 'Archivo Black', sans-serif;
                color: #fff;
            }

            .home .content p{
                font-size: 16px;
                font-weight: 500;
                color: #fff;
                margin-bottom: 20px;
            }

            .boton-go{
                font-size: 14px;
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

            .boton-go:hover{
                color: #fff;
                background: #9a51fa;
            }

            .about{
                width: 100%;
                background-color: #f1e7f5;
                min-height: 100vh;
                font-family: 'Nunito Sans', sans-serif;
                display: flex;
                align-items: center;
                justify-content: center;
            }

            .about img{
                width: fit-content;
                height: 100%;
                align-content: center;
            }

            .cardd{
                align-items: center;
                justify-content: center;
                width: 400px;
                height: 300px;
                margin-top: 70px;
                margin-left: 110px;
                margin-right: 110px;
                margin-bottom: 50px;
                position: relative;
                background-color: #c59bfb;
                box-shadow: 0 1px 14px rgba(0,0,0,0.103);
                border-radius: 5px;
                animation: float 2.5s ease-in-out 0s infinite forwards;
            }
            

            .cover{
                position: absolute;
                top: 0;
                left: 0;
                width: 100%;
                height: 100%;
                border-radius: 5px;
                background-color: rgba(0,0,0,0.8);
                clip-path: circle(15% at 0px 0px);
                text-align: center;
                cursor: pointer;
                color: #c59bfb;
                transition: all 0.3s ease;
                z-index: 2;
            }

            .texto_card{
                margin-top: 60px;
            }

            .texto_card h2{
                margin-bottom: 30px;
            }

            .texto_card p{
                margin-bottom: 40px;
            }

            .view-btn{
                width: 150px;
                padding: 10px 20px;
                border: 1px solid #c59bfb;
                background-color: rgba(0,0,0,0.8);
                color: #c59bfb;
                border-radius: 55px;
                cursor: pointer;
                font-weight: 600;
            }

            .view-btn:hover{
                border: 1px solid #c59bfb;
                background-color:#c59bfb;
                color: black;
            }

            .cardd:hover .cover{
                clip-path: circle(75%);
            }

            @media (max-width: 1400px){
                .home{
                    zoom:1.33;
                }
            }
            footer{
                width: 100%;
                padding: 20px 0px;
                background-image: url(imagenes/background-footer.svg);
                background-size: cover;
            }
            .container__footer{
                display: flex;
                flex-wrap: wrap;
                justify-content: space-between;
                max-width: 1800px;
                margin: auto;
                margin-top: 75px;
                align-items:  center;
            }

            .seccionsita{
                background-color: #f1e7f5;
            }

            .box__footer{
                display: flex;
                flex-direction: column;
                padding: 40px;
                margin-top: 15px;
                font-family: 'Open Sans', sans-serif;
            }

            .box__footer .logooo img{
                width: 160px;
            }
            .box__footer .terms{
                max-width: 350px;
                margin-top: 125px;
                font-weight: 500;
                color: #7a7a7a;
                font-size: 18px;
            }
            .box__footer h2{
                margin-bottom: 30px;
                color: #343434;
                font-weight: 700;
            }
            .box__footer a{
                margin-top: 10px;
                color: #7a7a7a;
                font-weight: 600;
            }
            .box__footer a:hover{
                opacity: 0.8;
            }
            .box__footer .reddd a{
                display: inline;
                padding: 10px;
            }
            .box__footer .redes{
                height: 30px;
                display: inline;
            }
            .box__copyright{
                max-width: 1800px;
                margin: auto;
                text-align: center;
                padding: 0px 40px;
                font-family: 'Open Sans', sans-serif;
            }
            .box__copyright p{
                margin-top: 20px;
                color: #7a7a7a;
                font-size: 15px;
            }
            .box__copyright hr{
                border: none;
                height: 1px;
                background-color: #7a7a7a;
            }

            .cajita img,h1,h2,h3,ul li,p{
                transition: 5s ease all;
            }
            .cajita img {
                animation: entradaTitulo 5s ease .5s forwards;
            }
            .cajita h1 {
                animation: entradaTitulo 5s ease .5s forwards;
            }
            .cajita h2 {
                animation: entradaSubtitulo 5s ease .5s forwards;
            }
            .cajita h3 {
                animation: entradaInputs 6s linear 1s forwards;
            }
            .cajita h4 {
                animation: entradaInputs 6s linear 1s forwards;
            }
            .cajita ul li {
                animation: entradaInputs 6s linear 1s forwards;
            }
            .cajita .textt {
                animation: entradaInputs 6s linear 1s forwards;
            }
        </style>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha384-rY/jv8mMhqDabXSo+UCggqKtdmBfd3qC2/KvyTDNQ6PcUJXaxK1tMepoQda4g5vB" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function(){
                var $cabecera = $('#header');
                var previousScroll = 0;
                $(window).scroll(function(event){
                   var scroll = $(this).scrollTop();
                   if (scroll > previousScroll && scroll > 0){
                       $cabecera.addClass('bgcolor');
                   } else {
                       $cabecera.removeClass('bgcolor');
                   }
                   previousScroll = scroll;    });

              });
        </script>
    </head>
    
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;
            
            if(sesion.getAttribute("user")!=null && sesion.getAttribute("tipo_usuario")!=null){
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
            
        %>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <header class="headersito" id="header">
        <a href="cierreSesion.jsp" class="logoin">
                <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
            </a>
            <ul class="nav">
                <li><a href="inicio_vete.jsp" class="inicio">Inicio</a></li>
                <li><a href="misMascotas_1.html" class="">Mis Mascotas</a></li>
                <li><a href="calendario_1.html" class="">Calendario</a></li>
                <li><a href="informativo_1.html" class="">Información Mascotas</a></li>
                <li><a href="comunidad_1.html" class="">Comunidad</a></li>
                <li><a href="notas_1.html" class="">Notas</a></li>
                <li><a href="citas_1.html" class="">Citas</a></li>
                <li><a href="saludBienestar_1.html" class="">Salud y Bienestar</a></li>
                <li><a href="2_calendario.jsp" class="">Calendario</a></li>
                <li><a href="soyVeterinario.jsp" class="">Opciones Veterinario</a></li>
                <li><a href="config_vete.jsp" class="">Configuración</a></li>
                <li><a href="cierreSesion_1.jsp" class="">Cerrar Sesión</a></li>
            </ul>
        </header>
    <section class="home" id="home">
            <div class="content">
                <h2>NIMO</h2>
                <p>
                    Bienvenido Veterinario&nbsp;<%out.println(usuario);%><br>
                    ¡Navega por todas las opciones que tenemos para ti!
                </p>
                <a href="inicio_vete.jsp#about" class="boton-go">Vamos</a>
            </div>
        </section>
        <section class="about" id="about">
            <div style="margin-top: 35px;">
                <div class="cardd">
                    <div class="cover">
                        <div class="texto_card">
                            <h2>Mis Mascotas</h2>
                            <p>Registra a tus mascotas</p>
                            <button class="view-btn">
                                <a href="/NIMO/Controler?visualizar=mascotas">¡Vamos!</a>
                            </button>
                        </div>
                    </div>
                    
                    <img src="imagenes/mismascotasin.png" alt="" style="height: 100%; width: 100%;">
                    
                </div>
                <div class="cardd">
                    <div class="cover">
                        <div class="texto_card">
                            <h2>Calendario</h2>
                            <p>Agenda citas importantes y almacena días especiales</p>
                            <button class="view-btn">
                                <a href="2_calendario.jsp">¡Vamos!</a>
                            </button>
                        </div>
                    </div>
                    
                        <img src="imagenes/calendario.png" alt="">
                    
                </div>
                <div class="cardd">
                    <div class="cover">
                        <div class="texto_card">
                            <h2>Información Mascotas</h2>
                            <p>Aprende más sobre mascotas</p>
                            <button class="view-btn">
                                <a href="informativo.html">¡Vamos!</a>
                            </button>
                        </div>
                    </div>
                    
                        <img src="imagenes/info.png" alt="">
                    
                </div>
            </div>
            <br><br><br>
            <div style="margin-top: 35px;">
                <div class="cardd">
                    <div class="cover">
                        <div class="texto_card">
                            <h2>Comunidad</h2>
                            <p>Explora foros y forma amistades</p>
                            <button class="view-btn">
                                <a href="comunidad.html">¡Vamos!</a>
                            </button>
                        </div>
                    </div>
                   
                        <img src="imagenes/img4.png" alt="">
                   
                </div>
                <div class="cardd">
                    <div class="cover">
                        <div class="texto_card">
                            <h2>Notas</h2>
                            <p>Guarda información importante en notas rápidas</p>
                            <button class="view-btn">
                                <a href="/NIMO/Controler?visualizar=notas">Vamos!</a>
                            </button>
                        </div>
                    </div>
                    
                        <img src="imagenes/notas.png" alt="">
                    
                </div>
                
                            <div class="cardd">
                <div class="cover">
                    <div class="texto_card">
                        <h2>Opciones Veterinario</h2>
                        <p>Revisa tus citas pendientes y pacientes en espera</p>
                        <button class="view-btn">
                            <a href="soyVeterinario.jsp">¡Vamos!</a>
                        </button>
                    </div>
                </div>
                <img src="imagenes/fongestorVet.png" alt="" style="width: 100%; height: 100%;">
            </div>

            </div>
            <div style="margin-top: 35px;">
                <div class="cardd">
                    <div class="cover">
                        <div class="texto_card">
                            <h2>Salud y Bienestar</h2>
                            <p>Descubre las mejores formas de cuidar a tu mejor amigo</p>
                            <button class="view-btn">
                                <a href="saludBienestar_1.html">¡Vamos!</a>
                            </button>
                        </div>
                    </div>
                    
                    <img src="imagenes/saludd.png" alt="" style="height: 100%; width: 100%;">
                    
                </div>
                <div class="cardd">
                    <div class="cover">
                        <div class="texto_card">
                            <h2>Configuración</h2>
                            <p>Realiza cambios en tu cuenta</p>
                            <button class="view-btn">
                                <a href="config_vete.jsp">¡Vamos!</a>
                            </button>
                        </div>
                    </div>
                    
                        <img src="imagenes/config.png" alt="">
                    
                </div>
                
                                <div class="cardd">
                    <div class="cover">
                        <div class="texto_card">
                            <h2>Cerrar Sesión</h2>
                            <p>¡Puedes volver cuando gustes!</p>
                            <button class="view-btn">
                                <a href="cierreSesion.jsp">¡Vamos!</a>
                            </button>
                        </div>
                    </div>
                    
                        <img src="imagenes/sesion.png" alt="">
                   
                </div>

            </div>
            
    </section>
    <script src="script_inic.js"></script>
    <%
        }
        else{
            out.print("<script>location.replace('ini_sesion.jsp');</script>");
        }
    %>
    </body>
    <section class="seccionsita">
        <footer>
            <div class="container__footer">

                <div class="box__footer">
                    <div class="logooo">
                        <a href="index.jsp" class="enlace">
                            <img src="imagenes/logo_emn_black.png" alt="">
                        </a>
                    </div>
                    <div class="terms">
                        <p>NIMO y EMN Corp. están a tu disposición.</p>
                        <p>Contáctanos en:&nbsp;&nbsp;</p>
                        <a href="mailto:soporte.emn.corp@gmail.com?subject=Ayuda NIMO&body=Hola! Este es un correo solicitando asistencia respecto a NIMO">soporte.emn.corp@gmail.com</a>
                    </div>
                </div>
                <div class="box__footer">

                <div class="contenedorr">
                <article>
                   <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600|Open+Sans" rel="stylesheet"> 
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
                    <link rel="stylesheet" href="stylepopup.css">
                        <h2>Si surge algún problema, ¡contáctanos!</h2>
                        <button id="btn-abrir-popup" class="btn-abrir-popup">Solicitar asistencia</button>
                </article>

                <div class="overlay" id="overlay">
                        <div class="popup" id="popup">
                                <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
                                <h3>Escibe el problema a resolver</h3>
                                <h4>Nos mantendremos en contacto por medio de correo electrónico</h4>
                                <form action="comments_2.jsp" method="post" name="comentarrr">
                                        <div class="contenedorr-inputs">
                                                <input type="text" placeholder="Problema(s)" name="comenttt">
                                        </div>
                                        <input type="submit" class="btn-submit" value="Enviar">
                                </form>
                        </div>
                </div>
        </div>

        <script src="popup.js"></script>
                </div>
                <div class="box__footer">
                    <h2>Acerca de EMN</h2>
                    <a href="emn_corp.html">EMN Corp.</a>
                    <a href="emn_corp.html#nosotros">¿Quiénes somos?</a>
                    <a href="emn_corp.html#prod">Acerca de nuestros servicios</a>
                </div>



                <div class="box__footer">
                    <h2>Contacto</h2>

                    <br>
                     <div class="reddd">
                        <a href="https://wa.me/+525568741814?text=Contacto%20sobre%20EMN"><img src="imagenes/whatsapp.png" alt="" class="redes"></a>
                        <a href="https://www.facebook.com/profile.php?id=100086728422788"><img src="imagenes/facebook.png" alt="" class="redes"></a>
                        <a href="https://www.instagram.com/emn_corp/"><img src="imagenes/instagram.png" alt="" class="redes"></a>
                        <a href="https://twitter.com/EMN_Corp?t=ZzFRMA_u_CryASYzMuUDvg&s=09"><img src="imagenes/twitter.png" alt="" class="redes"></a>
                        <a href="mailto:soporte.emn.corp@gmail.com?subject=Ayuda NIMO&body=Hola! Este es un correo solicitando asistencia respecto a NIMO"><img src="imagenes/correoo.png" alt="" class="redes"></a>
                     </div>
                </div>
            </div>
            <div class="box__copyright">
                <hr>
                <p>Todos los derechos reservados © 2022 
                    <b>EMN Corp.</b></p>
            </div>
        </footer>
    </section>
</html>
