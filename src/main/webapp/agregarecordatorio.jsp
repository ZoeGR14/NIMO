<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cambio de Contraseña</title>
        <link rel="stylesheet" href="recordatorioc.css">
        <style>@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
            body{
                height: calc(100vh-100px);
                width: 100%;
                background-image: url(imagenes/lavander.png);
                background-size: cover;
                background-repeat: no-repeat;
                background-position: center center;
            }
                        

            .bgcolor{
                background-color: #541c0a;
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

            .nav{
                position: relative;
                display: flex;
            }

            .nav li{
                margin: 0 0 0 30px;
            }

            .nav li a{
                color: #fff;
                font-weight: 300;
                text-transform: capitalize;
                &.sticky{
                color: #fff;}
            }

            .nav li a:hover{
                color: #c59bfb;
                font-weight: 300;
                text-transform: capitalize;
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
            
                        .containss{
                display: flex;
                justify-content: center;
                align-items: center;
                flex-direction: column;
            }
            
            .containss .strengthMeter{
                position: absolute;
                bottom: 0;
                left: 0;
                width: 100%;
                height: 3px;
                
            }
            .containss .strengthMeter::before{
                content: '';
                position: absolute;
                width: 0;
                height: 100%;
                transition: 0.5s;
            }
            .containss.weak .strengthMeter::before{
                width: 10%;
                background: #f00;
                /*filter: drop-shadow(0 0 5px #f00) drop-shadow(0 0 10px #f00) drop-shadow(0 0 20px #f00);*/
            }
            .containss.medium .strengthMeter::before{
                width: 66.66%;
                background: #ffa500;
                /*filter: drop-shadow(0 0 5px #ffa500) drop-shadow(0 0 10px #ffa500) drop-shadow(0 0 20px #ffa500);*/
            }
            .containss.strong .strengthMeter::before{
                width: 100%;
                background: #0f0;
                /*filter: drop-shadow(0 0 5px #0f0) drop-shadow(0 0 10px #0f0) drop-shadow(0 0 20px #0f0);*/
            }
            .containss .strengthMeter::after{
                position: absolute;
                top: 5px;
                left: 30px;
                color: #fff;
                transition: 0.5s;
                font-size: xx-small;
            }
            .containss.weak .strengthMeter::after{
                content: 'Weak Password';
                color: #f00;
                /*filter: drop-shadow(0 0 5px #f00);*/
            }
            .containss.medium .strengthMeter::after{
                content: 'Medium Password';
                color: #ffa500;
                /*filter: drop-shadow(0 0 5px #ffa500);*/
            }
            .containss.strong .strengthMeter::after{
                content: 'Strong Password';
                color: #0f0;
                /*filter: drop-shadow(0 0 5px #0f0);*/
            }
        </style>
        <script src="sweetalert2.all.min.js"></script>
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB9wkNCBFjfknOvfJd2s1MCUM42Ia2QJdU&libraries=places"></script>

    </head>
    <body>
    <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;
            
            String clie=request.getParameter("clientesito");
            
            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
                %>
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
                <li><a href="calendario.html" class="">Calendario</a></li>
                <li><a href="soyVeterinario.jsp" class="">Opciones Veterinario</a></li>
                <li><a href="cierreSesion_1.jsp" class="">Cerrar Sesión</a></li>
            </ul>
        </header>
        <br><br><br><br>
        <br><br>
         <div class="login-card-container">
            <div class="login-card">
                <div class="login-card-logo">
                    <img src="imagenes/logo_nimo.png" alt="logo">
                </div>
                <div class="login-card-header">
                    <h1>Nuevo Recordatorio</h1>
                    <div>Agrega un recordatorio sobre tu cliente</div>
                </div>
                <form action="guardaReco.jsp" method="post" name="registros" class="login-card-form">
                    
                    <div class="form-item">
                        Cliente:&nbsp;<input type="text" placeholder="Cliente" name="client" value="<%out.println(clie);%>" required="true" readonly="true">
                    </div>
                    <div class="form-item">
                        Descripción:&nbsp;<input type="text" placeholder="Motivo del recordatorio" name="motive" required="true" autofocus="true">
                    </div>
                    <div class="form-item">
                            Programado para:&nbsp;    <input type="date" name="f_rec" required>
                            </div>
                    <center>
                        <button type="submit" name="guardar" id="boton" value="Guardar">Guardar</button>
                    </center>
                    <br><br>
                </form>


            </div>
        </div>  
<%
    }
else {
                out.print("<script>location.replace('inicioSPersonal.jsp');</script>");
            }
        %>        
    </body>
</html>