<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <title>Administrador NIMO</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&display=swap');
            *{
                margin: 0;
                padding: 0;
                box-sizing: border-box;
            }
            
            body{
                font-family: 'Open Sans', sans-serif;
            }
            
            .contenedor{
                padding: 60px 0;
                width: 90%;
                max-width: 1000px;
                margin: auto;
                overflow: hidden;
            }
            
            header{
                width: 100%;
                height: 800px;
                background: #FF512F;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, hsla(35,88%,52%,0.15), hsla(10,100%,59%,0.15)),url(imagenes/ojalaqsi.png);
background: linear-gradient(to right, hsla(35,88%,52%,0.15), hsla(10,100%,59%,0.15)),url(imagenes/oesta.png);
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;
                position: relative;
            }
            
            nav{
                text-align: right;
                padding: 30px 50px 0 0;
            }
            
            nav a{
                color: #ffff;
                font-weight: 300;
                text-decoration: none;
                margin-right: 16px;
            }
            
            nav a:hover{
                color: #4B277A;
            }
            
            header .texto-header{
                display: flex;
                height: 430px;
                width: 100%;
                align-items: center;
                justify-content: center;
                flex-direction: column;
                text-align: center;
            }
            
            .texto-header h1{
                font-size: 50px;
                color: white;
                font-weight: 900;
            }
            .texto-header h2{
                font-size: 30px;
                color: white;
                font-weight: 400;
            }
            
            .contenedorop{
                width: 100%;
                height: calc(100vh - 200px);
                align-items: center;
                justify-content: center;
            }
            
            .card {
                margin-top: 100px;
  width: calc(100% - 400px);
  height: calc(100vh - 450px);
  border-radius: 4px;
  background: #fff;
  display: flex;
  gap: 35px;
  padding: .4em;
}

.card a {
  height: 100%;
  flex: 1;
  overflow: hidden;
  cursor: pointer;
  border-radius: 2px;
  transition: all .5s;
  text-decoration: none;
  border: 3px solid #ff5a91;
  display: flex;
  justify-content: center;
  align-items: center;
}

.uno{
    background: url(imagenes/cadmlado1.png);
    background-size: cover;
}
.dos{
    background: url(imagenes/cadmmedio.png);
        background-size: cover;
}
.tres{
    background: url(imagenes/cadmlado2.png);
        background-size: cover;
}

.card a:hover {
  flex: 4;
}

.card a p {
  min-width: 14em;
  padding: .5em;
  text-align: center;
  transform: rotate(-90deg);
  transition: all .5s;
  text-transform: uppercase;
  color: #ff568e;
  letter-spacing: .1em;
  text-decoration: none;
  font-weight: 700;
}

.card a:hover p {
  transform: rotate(0);
}
            
            .wave{
                position: absolute;
                bottom: 0;
                width: 100%;
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
        </style>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();

        %>
        
        <header>
            <nav>
                <a href="administrador.jsp"> Inicio</a>
                <a href="gestorVeterinarios.jsp">Veterinarios</a>
                <a href="gestorComentarios.jsp">Comentarios</a>
                <a href="gestorUsuarios.jsp">Usuarios</a>
                <a href="cierreSesion.jsp">Cerrar Sesión</a>
            </nav>
            <section class="texto-header">
                <h1>Bienvenido Administrador, <%out.println(usuario);%></h1>
                <br>
                <h2>Gracias por tus servicios</h2>
            </section>
                <div class="wave" style="height: 150px; overflow: hidden;" ><svg viewBox="0 0 500 150" preserveAspectRatio="none" style="height: 100%; width: 100%;"><path d="M0.00,49.98 C149.99,150.00 349.20,-49.98 500.00,49.98 L500.00,150.00 L0.00,150.00 Z" style="stroke: none; fill: #fff;"></path></svg></div>
        </header>
        <main>
            <section class="contenedorop">
                <center>
                    <div class="card">
                        <a class="uno" href="gestorVeterinarios.jsp">
                            <p>Gestiona Veterinarios</p>
                        </a>
                        <a class="dos" href="gestorComentarios.jsp">
                            <p>Gestiona Comentarios</p>
                        </a>
                        <a class="tres" href="gestorUsuarios.jsp">
                            <p>Gestiona Usuarios</p>
                        </a>
                    </div>
                </center>
            </section>
        </main>
                
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
        <%
            } else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>
