<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Configuración NIMO</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script src="sweetalert2.all.min.js"></script>
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
                <li><a href="misMascotas_1.jsp" class="">Mis Mascotas</a></li>
                <li><a href="calendario_1.jsp" class="">Calendario</a></li>
                <li><a href="informativo_1.jsp" class="">Información Mascotas</a></li>
                <li><a href="comunidad_1.jsp" class="">Comunidad</a></li>
                <li><a href="notas_1.jsp" class="">Notas</a></li>
                <li><a href="citas_1.jsp" class="">Citas</a></li>
                <li><a href="saludBienestar_1.jsp" class="">Salud y Bienestar</a></li>
                <li><a href="2_calendario.jsp" class="">Calendario</a></li>
                <li><a href="soyVeterinario.jsp" class="">Opciones Veterinario</a></li>
                <li><a href="cierreSesion_1.jsp" class="">Cerrar Sesión</a></li>
            </ul>
        </header>
    
    

        
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
                                    <a href="cambiaContra_vete.jsp">Vamos</a>
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
                            <form action="eliminaCuenta.jsp" method="post" name="buscarUsu">
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


btnAbrirModal.addEventListener("click",()=>{
    modal.showModal();
});

btnCerrarModal.addEventListener("click",()=>{
    modal.close();
});

function limpiar(){
    var camp = document.getElementById("campito");
    camp.value="";
}
                                    </script>
                    
                                </div>
                            </div>
                        </div>
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
    
    <script type="module" src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@7.1.0/dist/ionicons/ionicons.js"></script>

    </body>
</html>
