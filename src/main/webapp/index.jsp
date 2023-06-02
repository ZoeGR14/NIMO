<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>NIMO</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Open+Sans:wght@300;400;600;700;800&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Montserrat&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Fredoka+One&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Lato:ital,wght@1,900&display=swap');


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

                line-height: 1.5;
            }

            body::-webkit-scrollbar {
                width: 8px;     
                height: 8px;    
                color: #4b277a;  
            }

            body::-webkit-scrollbar-thumb {
                background: #a362e5;
                border-radius: 4px;
            }
            
            body::-webkit-scrollbar-thumb:hover {
                background: #c59bfb;
                box-shadow: 0 0 2px 1px rgba(0, 0, 0, 0.2);
            }

            body::-webkit-scrollbar-thumb:active {
                background-color: #c59bfb;
            }
            
            body::-webkit-scrollbar-track {
                background: rgba(255,255,255,0.3);
                border-radius: 4px;
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
                text-decoration: none;
                margin-bottom: 0;
            }
            #header a{
                text-decoration: none;
            }

            .nav{
                position: relative;
                display: flex;
                text-decoration: none;
            }

            .nav li{
                margin: 0 0 0 30px;
                text-decoration: none;
            }

            .nav li a{
                color: #fff;
                font-weight:  500;
                font-family: 'Montserrat', sans-serif;
                text-transform: capitalize;
                &.sticky{
                    color: #fff;}
                text-decoration: none;
            }

            .nav li a:hover{
                color: #c59bfb;
                font-weight: 300;
                text-transform: capitalize;
                text-decoration: none;
            }

            .about{
                margin: 0;
                padding: 20px;
                min-height: 100vh;
                background-color: #f8f3ff;
                font-family: "Open Sans", sans-serif;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-wrap: wrap;
            }

            .explore{
                margin: 0;
                padding: 20px;
                min-height: 100vh;
                background-color: #f8f3ff;
                font-family: "Open Sans", sans-serif;
                display: flex;
                align-items: center;
                justify-content: center;
                flex-wrap: wrap;
            }

            .nosotros{
                margin: 0;
                padding: 20px;
                min-height: 100vh;
                background-color: #f8f3ff;
                font-family: "Open Sans", sans-serif;
                align-items: center;
                justify-content: center;
                flex-wrap: wrap;
            }
            .avr{
                width: 33.33%; 
                float: left;
                align-items: center; 
                justify-content: center;
            }

            .redess{
                max-width: 100%;
                display: flex;
                justify-content: center;
                gap: 50px;
                flex-direction: row;
                flex-wrap: wrap;
            }

            .flip-card{
                justify-content: center;
                align-content: center;
                margin: 20px;
                margin-right: 60px;
                margin-left: 60px;
                position: relative;
                transform-style: preserve-3d;
                perspective: 1000px;

            }

            .flip-card-front,
            .flip-card-back{
                width: 380px;
                min-height: 600px;
                height: auto;
                background-color: #000;
                background-image: url(imagenes/fondo-tarjeta2.jpg);
                background-size: cover;
                background-position: center;
                backface-visibility: hidden;
                transform-style: preserve-3d;
                transition: transform 0.7s cubic-bezier(0.4, 0.2, 0.2, 1);
                align-content: center;
                justify-content: center;
            }

            .flip-card:nth-of-type(2) .flip-card-front,
            .flip-card:nth-of-type(2) .flip-card-back{
                background-image: url(imagenes/fondo-tarjeta1.jpg);
            }

            .flip-card:nth-of-type(3) .flip-card-front,
            .flip-card:nth-of-type(3) .flip-card-back{
                background-image: url(imagenes/fondo-tarjeta3.png);
            }

            .flip-card-front{
                justify-content: center;
                align-content: center;
                transform: rotateY(0deg);
            }
            .flip-card-back{
                justify-content: center;
                align-content: center;
                position: absolute;
                top: 0;
                left: 0;
                transform: rotateY(180deg);
            }

            .flip-card-front::after,
            .flip-card-back::after{
                content: "";
                width: 100%;
                height: 100%;
                background-color: #0a0a0a;
                position: absolute;
                top: 0;
                left: 0;
                opacity: 0.6;
            }

            .flip-card-front .inner,
            .flip-card-back .inner{
                align-content: center;
                justify-content: center;
                width: 100%;
                padding: 40px;
                position: absolute;
                top: 50%;
                transform: translateY(-50%) translateZ(60px) scale(0.94);
                z-index: 2;
            }

            .inner .icon{
                width: 80px;
                margin-bottom: 20px;
                margin-left: 100px;
                justify-content: center;
                align-content: center;
            }

            .inner h3{
                margin-bottom: 8px;
                color: #fff;
                font-size: 30px;
                font-weight: 700;
                line-height: 40px;
                text-transform: capitalize;
                justify-content: center;
                align-content: center;
            }

            .inner p{
                color: #fff;
                font-size: 16px;
                line-height: 28px;
                justify-content: center;
                align-content: center;
            }

            .flip-card:hover .flip-card-front{
                transform:rotateY(-180deg);
            }

            .flip-card:hover .flip-card-back{
                transform:rotateY(0deg);
            }

            .ini_acci{
                position: relative;
                width: 1200px;
                height: 600px;
                margin: 50px;
                box-shadow: 20px 20px 50px rgba(0,0,0,0.5);
                border-radius: 15px;
                background: rgba(255,255,255,0.1);
                overflow: hidden;
                display: flex;
                justify-content: center;
                align-content: center;
                border-top: 2px solid grey;
                border-left: 2px solid grey;
                backdrop-filter: blur(10px);
            }
            
            .carousel-item img{
                width: 100vw;
                height: 100vh;
                background-size: cover;
                background-position: center center;
                object-fit: cover;
            }
            .carousel-item a{
                color: white;
                text-decoration: none;
                background-color: rgba(75,39,122,0.7);
                padding: 7px;
                border: 2px rgba(75,39,122,0.7);
                border-radius: 10px;
            }
            .carousel-item b{
                color: white;
                text-decoration: none;
                background-color: rgba(75,39,122,0.7);
                padding: 7px;
                border: 2px rgba(75,39,122,0.7);
                border-radius: 10px;
            }

            .bot-mag a{
                text-decoration: none;
                font-size: 93px;
                color: white;
            }

            .bot-mag{
                position: relative;
                background-color: #4b277a;
                color: white;
                padding:  1rem 2.5rem;
                border-radius: 3rem;
                transition: .5s;
                margin-top: 50px;
                text-decoration: none;
            }

            .bot-mag::after{
                content: "";
                width: 80%;
                height: 40%;
                background: linear-gradient(to right, #a362e5, #8b43ff);
                position: absolute;
                left: 0;
                right: 0;
                bottom: -4px;
                margin: 0 auto;
                border-radius: 3rem;
                filter:blur(10px);
                z-index: -1;
                opacity: 0;
                transition: opacity .5s;
            }

            .botmag_text{
                position: relative;
                z-index: 99;
            }

            .bot-mag img{
                position: absolute;
                inset: 0;
                margin: auto;
                pointer-events: none;
                transition: .7s;
                opacity: 0;
            }

            .botmag_img1{
                width: 22px;
                transform: translate(-60px, -10px) rotate(50deg);
            }

            .botmag_img2{
                width: 33px;
                transform: translate(60px, -15px) rotate(-70deg);
            }

            .botmag_img3{
                width: 44px;
                transform: translate(0px, -30px) rotate(-40deg);
            }

            .botmag_img4{
                width: 33px;
                transform: translate(0px, 30px) rotate(50deg);
            }

            .bot-mag:hover::after{
                opacity: 1;
            }

            .bot-mag:hover{
                transform: scale(1.2);
                color: white;
            }

            .bot-mag:hover img{
                opacity: 1;
            }

            .bot-mag:hover .botmag_img1{
                transform: translate(-80px, -10px) scale(1.2);
            }

            .bot-mag:hover .botmag_img2{
                transform: translate(80px, -10px) scale(1.1);
            }

            .bot-mag:hover .botmag_img3{
                transform: translate(10px, -50px) scale(1.2);
            }

            .bot-mag:hover .botmag_img4{
                transform: translate(20px, 45px) scale(1.1);
            }

            .margensito h4{
                color: #4b277a;
                font-family: 'Lato', sans-serif;
                font-weight: 900;
                font-style: italic;
            }

            body{
                background-color: #f8f3ff;
            }


            .contener{
                margin-top: 60px;
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: sans-serif;
                width: 100%;
                display: flex;
                justify-content: center;
                height: 350px;
            }
            .contener h3{
                color: white;
            }
            .contener p{
                color: white;
            }
            .contener figure{
                position: relative;
                height: 450px;
                width: 550px;
                overflow: hidden;
                border-radius: 70px;
                box-shadow: 0px 15px 25px rgba(0,0,0,0.50);
                cursor: pointer;
            }
            .contener figure img{
                width: 100%;
                height: 100%;
                transition: all 500ms ease-out;
            }
            .contener figure .capa{
                position: absolute;
                top: 0;
                width: 100%;
                height: 100%;
                background: rgba(0,0,0,0.7);
                transition: all 500ms ease-out;
                opacity: 0;
                visibility: hidden;
                text-align: center;
                text-decoration: white;
            }
            .contener figure:hover > .capa{
                opacity: 1;
                visibility: visible;
            }
            .contener figure:hover > .capa h3{
                margin-top: 150px;
                margin-bottom: 20px;
            }
            .contener figure:hover > img{
                transform: scale(1.3);
            }
            .contener figure .capa h3{
                color: white;
                margin-bottom: 100px;
                transition: all 500ms ease-out;
                margin-top: 50px;
            }
            .contener figure .capa p{
                color: white;
                font-size: 18px;
                line-height: 1.5;
                width: 100%;
                max-width: 280px;
                margin: auto;
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

            .cajita img,h1,h2,h3,ul li,p{transition: 5s ease all;}
            .cajita img { animation: entradaTitulo 5s ease .5s forwards; }
            .cajita h1 { animation: entradaTitulo 5s ease .5s forwards; }
            .cajita h2 { animation: entradaSubtitulo 5s ease .5s forwards; }
            .cajita h3 { animation: entradaInputs 6s linear 1s forwards; }
            .cajita h4 { animation: entradaInputs 6s linear 1s forwards; }
            .cajita ul li { animation: entradaInputs 6s linear 1s forwards; }
            .cajita .textt { animation: entradaInputs 6s linear 1s forwards; }

        </style>
        <script src="https://code.jquery.com/jquery-2.2.4.min.js" integrity="sha384-rY/jv8mMhqDabXSo+UCggqKtdmBfd3qC2/KvyTDNQ6PcUJXaxK1tMepoQda4g5vB" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function () {
                var $cabecera = $('#header');
                var previousScroll = 0;
                $(window).scroll(function (event) {
                    var scroll = $(this).scrollTop();
                    if (scroll > previousScroll && scroll > 0) {
                        $cabecera.addClass('bgcolor');
                    } else {
                        $cabecera.removeClass('bgcolor');
                    }
                    previousScroll = scroll;
                });

            });
        </script>
        <link rel="icon" href="imagenes/logo_nimo.ico">
    </head>
    <body>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <header class="headersito" id="header">
            <a href="index.jsp" class="logoin">
                <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
            </a>
            <ul class="nav">
                <li><a href="inicio_Sesion.jsp" class="">Inicio de Sesión</a></li>
                <li><a href="registro.html" class="">Registro</a></li>
                <li><a href="inicioSPersonal.jsp" class="">¿Eres un administrador?</a></li>
            </ul>
        </header>
        <section>
            <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="false">
                <div class="carousel-indicators">
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
                </div>
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="imagenes/peakpx.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>DESCUBRE</h3>
                            <b><a href="index.jsp#about">¡Hay muchas cosas nuevas por conocer!</a></b>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="imagenes/293947.jpg" class="d-block w-100" alt="..." style="height: calc(100vh);">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>APRENDE</h3>
                            <b><a href="index.jsp#explorar">¡Aprende, y cuida mejor de tu mascota!</a></b>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="imagenes/dogdog.jpeg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h3>EXPLORA</h3>
                            <b><a href="index.jsp#publicaciones">¡Navega por todas las opciones que tenemos para ti!</a></b>
                        </div>
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </section>


        <section class="about" id="about">
            <div class="flip-card">
                <div class="flip-card-front">
                    <div class="inner">
                        <img src="imagenes/tarjeta-frente.png" alt="" class="icon">
                        <center><h3>¿Qué es NIMO?</h3></center>
                        <center><p></p></center>

                    </div>
                </div>
                <div class="flip-card-back">
                    <div class="inner">
                        <img src="imagenes/tarjeta1-atras.png" alt="" class="icon">
                        <center><h3>NIMO es:</h3></center>
                        <center><p>un proyecto creado con el fin de brindarle a sus usuarios una plataforma en donde puedan llevar el control, 
                                organización y asesoramiento necesario para llevar de manera correcta el cuidado de sus mascotas</p></center>

                    </div>
                </div>
            </div>

            <div class="flip-card">
                <div class="flip-card-front">
                    <div class="inner">
                        <img src="imagenes/tarjeta-frente.png" alt="" class="icon">
                        <center><h3>¿Por qué NIMO?</h3></center>
                        <center><p></p></center>

                    </div>
                </div>
                <div class="flip-card-back">
                    <div class="inner">
                        <img src="imagenes/tarjeta2-atras.png" alt="" class="icon">
                        <center><h3>NIMO, porque:</h3></center>
                        <center><p>a partir de observar que el descuido y abandono de las mascotas, por falta de tiempo y conocimientos sobre las mismas, se ha convertido en un problema severo en el país en los últimos años.<br>
                                En NIMO, buscamos resolver este conflicto a través de esta gran y nueva herramienta, por medio de la información y atención amigable, esperando que los usuarios se sientan cómodos con el uso de  la plataforma
                            </p></center>

                    </div>
                </div>
            </div>

            <div class="flip-card">
                <div class="flip-card-front">
                    <div class="inner">
                        <img src="imagenes/tarjeta-frente.png" alt="" class="icon">
                        <center><h3>¿Qué ofrece NIMO?</h3></center>
                        <center><p></p></center>

                    </div>
                </div>
                <div class="flip-card-back">
                    <div class="inner">
                        <img src="imagenes/tarjeta3-atras.png" alt="" class="icon">
                        <center><h3>NIMO ofrece a sus usuarios:</h3></center>
                        <center><p>-  Creación de perfiles personalizados para mascotas<br>
                                - Interacción entre usuarios por medio de foros para comunidades<br>
                                - Localización de clínicas veterinarias y médicos avalados<br>
                                - Sección de notas rápidas<br> 
                                - Servicios de adopción (dar en adopción / adoptar) <br>
                                - Apartados informativos especializados y actualizados<br>
                                - Y muchas opciones más...
                            </p></center>

                    </div>
                </div>
            </div>
        </section>
        <section id="explorar" class="explore">
            <div class="ini_acci" id="ini_acci">
                <br><br>
                <div class="margensito" style="margin-top: 70px; align-content: center; justify-content: center;">
                    <center><h4>¡Inicia sesión para acceder a todas las funciones y contenido que tenemos para ofrecerte!</h4></center>
                    <br><br>
                    <center><a href="inicio_Sesion.jsp" class="bot-mag">
                            <span class="botmag_text">
                                ¡INGRESA!
                            </span>
                            <img src="imagenes/carita_6.png" alt="" class="botmag_img1">
                            <img src="imagenes/carita_3.png" alt="" class="botmag_img2">
                            <img src="imagenes/carita_4.png" alt="" class="botmag_img3">
                            <img src="imagenes/carita_7.png" alt="" class="botmag_img4">
                        </a></center>
                    <br><br><br>
                    <br><br><br>
                    <center><h4>¿No tienes una cuenta?</h4></center>
                    <br><br>
                    <center><a href="registro.jsp" class="bot-mag">
                            <span class="botmag_text">
                                ¡REGÍSTRATE!
                            </span>
                            <img src="imagenes/carita_6.png" alt="" class="botmag_img1">
                            <img src="imagenes/carita_3.png" alt="" class="botmag_img2">
                            <img src="imagenes/carita_4.png" alt="" class="botmag_img3">
                            <img src="imagenes/carita_7.png" alt="" class="botmag_img4">
                        </a></center>
                </div>        

            </div>
        </section>

        <section class="nosotros" id="publicaciones">
            <div class="redess">
                <div class="reds">
                    <iframe src="https://www.facebook.com/plugins/post.php?href=https%3A%2F%2Fwww.facebook.com%2Fpermalink.php%3Fstory_fbid%3Dpfbid024Q4JBRUqWtCZxZnuDH143MmVkR8eq16jkwG1k2TQpMHJTrmb1Q5HisJvFWimx8Hml%26id%3D100086728422788&show_text=false&width=500" width="500" height="496" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                </div>
                <div class="reds" style="height: 496px; overflow-y: scroll;">
                    <blockquote class="instagram-media" data-instgrm-captioned data-instgrm-permalink="https://www.instagram.com/p/CkI2h2XuV7f/?utm_source=ig_embed&amp;utm_campaign=loading" data-instgrm-version="14" style=" background:#FFF; border:0; border-radius:3px; box-shadow:0 0 1px 0 rgba(0,0,0,0.5),0 1px 10px 0 rgba(0,0,0,0.15); margin: 1px; max-width:540px; min-width:326px; padding:0; width:99.375%; width:-webkit-calc(100% - 2px); width:calc(100% - 2px);"><div style="padding:16px;"> <a href="https://www.instagram.com/p/CkI2h2XuV7f/?utm_source=ig_embed&amp;utm_campaign=loading" style=" background:#FFFFFF; line-height:0; padding:0 0; text-align:center; text-decoration:none; width:100%;" target="_blank"> <div style=" display: flex; flex-direction: row; align-items: center;"> <div style="background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 40px; margin-right: 14px; width: 40px;"></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 100px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 60px;"></div></div></div><div style="padding: 19% 0;"></div> <div style="display:block; height:50px; margin:0 auto 12px; width:50px;"><svg width="50px" height="50px" viewBox="0 0 60 60" version="1.1" xmlns="https://www.w3.org/2000/svg" xmlns:xlink="https://www.w3.org/1999/xlink"><g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd"><g transform="translate(-511.000000, -20.000000)" fill="#000000"><g><path d="M556.869,30.41 C554.814,30.41 553.148,32.076 553.148,34.131 C553.148,36.186 554.814,37.852 556.869,37.852 C558.924,37.852 560.59,36.186 560.59,34.131 C560.59,32.076 558.924,30.41 556.869,30.41 M541,60.657 C535.114,60.657 530.342,55.887 530.342,50 C530.342,44.114 535.114,39.342 541,39.342 C546.887,39.342 551.658,44.114 551.658,50 C551.658,55.887 546.887,60.657 541,60.657 M541,33.886 C532.1,33.886 524.886,41.1 524.886,50 C524.886,58.899 532.1,66.113 541,66.113 C549.9,66.113 557.115,58.899 557.115,50 C557.115,41.1 549.9,33.886 541,33.886 M565.378,62.101 C565.244,65.022 564.756,66.606 564.346,67.663 C563.803,69.06 563.154,70.057 562.106,71.106 C561.058,72.155 560.06,72.803 558.662,73.347 C557.607,73.757 556.021,74.244 553.102,74.378 C549.944,74.521 548.997,74.552 541,74.552 C533.003,74.552 532.056,74.521 528.898,74.378 C525.979,74.244 524.393,73.757 523.338,73.347 C521.94,72.803 520.942,72.155 519.894,71.106 C518.846,70.057 518.197,69.06 517.654,67.663 C517.244,66.606 516.755,65.022 516.623,62.101 C516.479,58.943 516.448,57.996 516.448,50 C516.448,42.003 516.479,41.056 516.623,37.899 C516.755,34.978 517.244,33.391 517.654,32.338 C518.197,30.938 518.846,29.942 519.894,28.894 C520.942,27.846 521.94,27.196 523.338,26.654 C524.393,26.244 525.979,25.756 528.898,25.623 C532.057,25.479 533.004,25.448 541,25.448 C548.997,25.448 549.943,25.479 553.102,25.623 C556.021,25.756 557.607,26.244 558.662,26.654 C560.06,27.196 561.058,27.846 562.106,28.894 C563.154,29.942 563.803,30.938 564.346,32.338 C564.756,33.391 565.244,34.978 565.378,37.899 C565.522,41.056 565.552,42.003 565.552,50 C565.552,57.996 565.522,58.943 565.378,62.101 M570.82,37.631 C570.674,34.438 570.167,32.258 569.425,30.349 C568.659,28.377 567.633,26.702 565.965,25.035 C564.297,23.368 562.623,22.342 560.652,21.575 C558.743,20.834 556.562,20.326 553.369,20.18 C550.169,20.033 549.148,20 541,20 C532.853,20 531.831,20.033 528.631,20.18 C525.438,20.326 523.257,20.834 521.349,21.575 C519.376,22.342 517.703,23.368 516.035,25.035 C514.368,26.702 513.342,28.377 512.574,30.349 C511.834,32.258 511.326,34.438 511.181,37.631 C511.035,40.831 511,41.851 511,50 C511,58.147 511.035,59.17 511.181,62.369 C511.326,65.562 511.834,67.743 512.574,69.651 C513.342,71.625 514.368,73.296 516.035,74.965 C517.703,76.634 519.376,77.658 521.349,78.425 C523.257,79.167 525.438,79.673 528.631,79.82 C531.831,79.965 532.853,80.001 541,80.001 C549.148,80.001 550.169,79.965 553.369,79.82 C556.562,79.673 558.743,79.167 560.652,78.425 C562.623,77.658 564.297,76.634 565.965,74.965 C567.633,73.296 568.659,71.625 569.425,69.651 C570.167,67.743 570.674,65.562 570.82,62.369 C570.966,59.17 571,58.147 571,50 C571,41.851 570.966,40.831 570.82,37.631"></path></g></g></g></svg></div><div style="padding-top: 8px;"> <div style=" color:#3897f0; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:550; line-height:18px;">Ver esta publicación en Instagram</div></div><div style="padding: 12.5% 0;"></div> <div style="display: flex; flex-direction: row; margin-bottom: 14px; align-items: center;"><div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(0px) translateY(7px);"></div> <div style="background-color: #F4F4F4; height: 12.5px; transform: rotate(-45deg) translateX(3px) translateY(1px); width: 12.5px; flex-grow: 0; margin-right: 14px; margin-left: 2px;"></div> <div style="background-color: #F4F4F4; border-radius: 50%; height: 12.5px; width: 12.5px; transform: translateX(9px) translateY(-18px);"></div></div><div style="margin-left: 8px;"> <div style=" background-color: #F4F4F4; border-radius: 50%; flex-grow: 0; height: 20px; width: 20px;"></div> <div style=" width: 0; height: 0; border-top: 2px solid transparent; border-left: 6px solid #f4f4f4; border-bottom: 2px solid transparent; transform: translateX(16px) translateY(-4px) rotate(30deg)"></div></div><div style="margin-left: auto;"> <div style=" width: 0px; border-top: 8px solid #F4F4F4; border-right: 8px solid transparent; transform: translateY(16px);"></div> <div style=" background-color: #F4F4F4; flex-grow: 0; height: 12px; width: 16px; transform: translateY(-4px);"></div> <div style=" width: 0; height: 0; border-top: 8px solid #F4F4F4; border-left: 8px solid transparent; transform: translateY(-4px) translateX(8px);"></div></div></div> <div style="display: flex; flex-direction: column; flex-grow: 1; justify-content: center; margin-bottom: 24px;"> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; margin-bottom: 6px; width: 224px;"></div> <div style=" background-color: #F4F4F4; border-radius: 4px; flex-grow: 0; height: 14px; width: 144px;"></div></div></a><p style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; line-height:17px; margin-bottom:0; margin-top:8px; overflow:hidden; padding:8px 0 7px; text-align:center; text-overflow:ellipsis; white-space:nowrap;"><a href="https://www.instagram.com/p/CkI2h2XuV7f/?utm_source=ig_embed&amp;utm_campaign=loading" style=" color:#c9c8cd; font-family:Arial,sans-serif; font-size:14px; font-style:normal; font-weight:normal; line-height:17px; text-decoration:none;" target="_blank">Una publicación compartida por EMN Corp. (@emn_corp)</a></p></div></blockquote> <script async src="//www.instagram.com/embed.js"></script>
                </div>
                <div class="reds" style="width: 500px; height: 496px; overflow-y: scroll;">
                    <a class="twitter-timeline" data-lang="es" data-theme="light" href="https://twitter.com/EMN_Corp?ref_src=twsrc%5Etfw">Tweets by EMN_Corp</a> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
                </div>
            </div>
        </section>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

    </body>

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
                    <a href="mailto:comentarios.emn.corp@gmail.com?subject=Comentarios NIMO&body=Hola! Este es un correo mandado desde NIMO ">comentarios.emn.corp@gmail.com</a>
                </div>
            </div>
            <div class="box__footer">

                <div class="contenedorr">
                    <article>
                        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600|Open+Sans" rel="stylesheet"> 
                        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
                        <link rel="stylesheet" href="stylepopup.css">
                        <h2>¡Queremos saber tu opinión!</h2>
                        <button id="btn-abrir-popup" class="btn-abrir-popup">¡Envíanos un comentario!</button>
                    </article>

                    <div class="overlay" id="overlay">
                        <div class="popup" id="popup">
                            <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
                            <h3>Comparte con nosotros tu experiencia con el programa</h3>
                            <h4>Esto nos permitirá continuar mejorando y trayendo para ti mejores funciones y programas</h4>
                            <form action="comments.jsp" method="post" name="comentarrr">
                                <div class="contenedorr-inputs">
                                    <input type="text" placeholder="Comentario(s)" name="comenttt">
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
                <a href="emn_corp.jsp">EMN Corp.</a>
                <a href="emn_corp.jsp#nosotros">¿Quiénes somos?</a>
                <a href="emn_corp.jsp#prod">Acerca de nuestros servicios</a>
            </div>



            <div class="box__footer">
                <h2>Contacto</h2>

                <br>
                <div class="reddd">
                    <a href="https://wa.me/+525568741814?text=Contacto%20sobre%20EMN"><img src="imagenes/whatsapp.png" alt="" class="redes"></a>
                    <a href="https://www.facebook.com/profile.php?id=100086728422788"><img src="imagenes/facebook.png" alt="" class="redes"></a>
                    <a href="https://www.instagram.com/emn_corp/"><img src="imagenes/instagram.png" alt="" class="redes"></a>
                    <a href="https://twitter.com/EMN_Corp?t=ZzFRMA_u_CryASYzMuUDvg&s=09"><img src="imagenes/twitter.png" alt="" class="redes"></a>
                    <a href="mailto:comentarios.emn.corp@gmail.com?subject=Comentarios NIMO&body=Hola! Este es un correo mandado desde NIMO "><img src="imagenes/correoo.png" alt="" class="redes"></a>
                </div>
            </div>
        </div>
        <div class="box__copyright">
            <hr>
            <p>Todos los derechos reservados © 2022 
                <b>EMN Corp.</b></p>
        </div>
    </footer>
</html>
