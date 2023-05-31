<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicia sesión - NIMO</title>
        <link rel="stylesheet" href="loginn.css">
        <style>
            body{
                zoom: adjust;
                background-color: #4b277a;
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
            .bg_animate{
                width: 100%;
                height: 140%;
                position: absolute;
                overflow: hidden;
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
        </style>
    </head>
    <body>
        <nav>
            <link rel="stylesheet" href="menu.css">
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
               <i class="menu-icon"> <img src="imagenes\menuicon.png"> </i>
            </label>
            <a href="index.jsp" class="enlace">
                <img src="imagenes/logo_nimo.png" alt="" class="logo">
            </a>
            <ul alt="" class="bot_acc">
                <li><a href="inicio_Sesion.jsp" class="inis">Inicio de Sesión</a></li>
                <li><a href="registro.jsp" class="regis">Registro</a></li>
                <li><a href="inicioSPersonal.jsp" class="admins">¿Eres un administrador?</a></li>
            </ul>
        </nav>
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


        <div class="login-card-container">
            <div class="login-card">
                <div class="login-card-logo">
                    <img src="imagenes/logo_nimo.png" alt="logo">
                </div>
                <div class="login-card-header">
                    <h1>Inicio de Sesión</h1>
                    <div>Por favor, inicia sesión para usar la plataforma</div>
                </div>
                <form class="login-card-form" action="ini_sesion.jsp" method="post" name="inici_sesi">
                    <div class="form-item">
                        <span class="form-item-icon material">
                            <img src="imagenes/usuario.png">
                        </span>
                        <input type="text" placeholder="Usuario" name="usuario" required autofocus>
                    </div>
                    <div class="form-item">
                        <span class="form-item-icon material">
                            <img src="imagenes/candado.png">
                        </span>
                        <input type="password" name="contrasenia" placeholder="Contraseña" required>
                    </div>
                    <button type="submit" name="ingreso">Acceder</button>
                    <br><br>
                </form>
                <div class="login-card-footer">
                    <div class="contenedorr">
                        <article>
                            <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,600|Open+Sans" rel="stylesheet"> 
                            <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
                            <link rel="stylesheet" href="stylepopup.css">
                            <button id="btn-abrir-popup" class="btn-abrir-popup-2">Olvidé mi contraseña</button>
                        </article>

                        <div class="overlay" id="overlay">
                            <div class="popup2" id="popup">
                                <a href="#" id="btn-cerrar-popup" class="btn-cerrar-popup"><i class="fas fa-times"></i></a>
                                <h3>¿Olvidaste tu contraseña?</h3>
                                <h4>Ingresa tu correo electrónico y te enviaremos un enlace para que recuperes el acceso a tu cuenta.</h4>
                                <form action="fgtpass.jsp" method="post" name="fgt_pass">
                                    <div class="contenedorr-inputs">
                                        <input type="email" placeholder="Correo eléctronico" name="mailll">
                                    </div>
                                    <input type="submit" class="btn-submit" value="Enviar enlace">
                                </form>
                            </div>
                        </div>

                        <script src="popup.js"></script>
                    </div>
                    <h5>¿No tienes cuenta?&nbsp;&nbsp;<a href="registro.jsp">Regístrate</a></h5>
                </div>
            </div>
        </div>
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