<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Soy Veterinario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');

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
                background: url('imagenes/horizonpets.png');
                background-size: cover;
                height: 100%;
                width: 100%;
                background-repeat: no-repeat;
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

            .nav li a{
                color: #4b277a;
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

            .boton-go:hover{
                color: #fff;
                background: #9a51fa;
            }

            .about{
                width: 100%;
                background-color: #f8f3ff;
                min-height: 100vh;
                font-family: 'Nunito Sans', sans-serif;
                display: flex;
                align-items: center;
                justify-content: center;
            }
            
            .about img{
                width: 100%;
                height: 95%;
            }
            
            .cardd{
                align-items: center;
                justify-content: center;
                width: 400px;
                height: 300px;
                padding: 20px;
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
            .wrapper{
                
                display: flex;
                width: 100%;
                height: 100vh;
                justify-content: center;
                align-items: center;
                padding: 0 10%;
                overflow: hidden;
                 overflow-y:hidden;
            }
            

            @keyframes object1{
                left: -13%;
                top: 41%;
            }
            @keyframes object2{
                left: 35%;
                top: 10%;
            }
            .cols{
                width: 50%;
            }
            .cols0{
                width: 60%;
                z-index: 5;
            }
            .topline{
                display: block;
                position: relative;
                font-size: 35px;
                letter-spacing: 5px;
                color: #3d535f;
            }
            .topline::after{
                position: absolute;
                content: '';
                height: 4px;
                width: 45px;
                bottom: 10px;
                background-color: #7f00ff;
            }
            .cols h1{
                display: block;
                font-size: 7em;
                font-weight: 900;
                color: #3d535f;
            }
            .cols .multiText{
                color: #4b277a;
                text-transform: capitalize;
            }
            .cols p{
                display: block;
                width: 90%;
                font-size: 1.2em;
                color: #fff;
            }
            .btns{
                width: 100%;
                position: relative;
                
            }
            .btns button{
                outline: none;
                border: solid #3d535f;
                cursor: pointer;
                font-size: 25px;
                font-weight: 400;
                color: #fff;
                background-color: #3d535f;
                padding: 15px 10px;
                margin: 40px 20px;
                letter-spacing: 2px;
                text-transform: capitalize;
                box-shadow: 0 15px 10px rgba(0,0,0,0.4);
                border-radius: 25px;
                transition: 0.5s;
            }
            .btns button:hover{
                background-color: #7f00ff;
                border: solid #7f00ff;
                transition: 0.5s;
            }
            .imgbox{
                position: relative;
                width: 100%;
                height: 100%;
            }
            .imgbox img{
                position: relative;
                height: 100%;
                width: calc(130% - 80px);
                top: 45px;
                right: 50px;
                
            }
            @keyframes animateUser{
                50%{
                    right: 30px;
                    top: -90px;
                }
            }
            .imgbox #splash{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%) rotate(-35deg);
                width: 160%;
                filter: saturate(200%);
                
            }
            @keyframes animate{
                50%{
                    top: 49%;
                    left: 51%;
                    width: 155%;
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
                background-color: #f8f3ff;
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
    </head>
    
    <body style="overflow-y:hidden">
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
                <li><a href="calendario.html" class="">Calendario</a></li>
                <li><a href="soyVeterinario.jsp" class="">Opciones Veterinario</a></li>
                <li><a href="config_vete.jsp" class="">Configuración</a></li>
                <li><a href="cierreSesion_1.jsp" class="">Cerrar Sesión</a></li>
            </ul>
        </header>
    <div class="wrapper">
        <div class="cols cols0">
            <span class="topline">
                Bienvenido
            </span>
            <h1>Veterinario <span class="multiText"><%out.println(usuario);%></span></h1>
            <p>¡Descubre los beneficios que tenemos para ti!</p>
            <div class="btns">
                <a href="cliente_vete.jsp"> <button>Verificar Clientes</button></a>
                <a href="#"> <button>Comunidades</button></a>
            </div>
        </div>
        <div class="cols cols1">
            
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/typed.js@2.0.12"></script>
    <script>
        var typingEffect = new Typed(".multiText",{
            strings: ["Bienvenido","Veterinario&nbsp;<%out.println(usuario);%>"],
            loop : true,
            typeSpeed: 100,
            backSpeed: 80,
            backDelay: 1500;
        });
    </script>
    
        <%
        }
        else{
            out.print("<script>location.replace('ini_sesion.jsp');</script>");
        }
    %>
    </body>
</html>