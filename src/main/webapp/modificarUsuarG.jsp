<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
                <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Datos de Usuario</title>
        <link rel="stylesheet" href="loginn.css">
        <style>
            body{
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
            #relojito img{
                height: 700px;
                width:  700px;
                
                /*display: flex;*/
            }
            .relo{
                margin-left: 70px;
            }
            .login-card-container{
                width: 100%;
                /*display: flex;*/
            }
            .login-card{
                width: 33%;
                align-items: center;
                justify-content: center;
            }
            
            .conttti{
                margin-top: 35px;
                display: flex;
            }
            #separa p{
                color: #4b277a;
            }
            form-item input{
                width: 10%;
                align-items: center;
            }
            
            /*.spcaja{
                float: left;
                display: flex;
                height: 90%;
                width: 100%;
            }
            .cajita{
                height: 100%;
                width: 50%;
            }
            .cajita2{
                height: 100%;
                width: 50%;
            }

            /*#cajita{
                display: table;
                width: 100%;
                height: 900px;
            }*/
            header{
                height: 100%;
            }
              .bg_animate{
                width: 100%;
                height: 200%;
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
            .show{
                position: absolute;
                top: 55%;
                right: 5%;
                width: 10%;
                height: 10%;
                cursor: pointer;
                display: flex;
                justify-content: center;
                align-items: center;
            }
            .show::before{
                content: url("imagenes/ver.png");
                font-size: 0.6em;
                color: #000;
                letter-spacing: 0.15em;
                text-transform: uppercase;
            }
            .show.hide::before{
                content: url("imagenes/esconder.png");
            }
            .login-card input[type="text"],
.login-card input[type="password"]{
    display: inline;
    border: none;
    outline: none;
    background: rgba(255,255,255,.3);
    padding: 1rem 1.5rem;
    padding-left: calc(1rem * 3.5);
    border-radius: 100px;
    width: 70%;
    transition: background .5s;
    align-items: center;
    justify-content: center;
}

.login-card input[type="tel"],
.login-card input[type="email"],
.login-card input[type="date"],
.login-card input[type="time"]{
    display: inline;
    border: none;
    outline: none;
    background: rgba(255,255,255,.3);
    padding: 1rem 1.5rem;
    padding-left: calc(1rem * 3.5);
    border-radius: 100px;
    width: 70%;
    transition: background .5s;
    align-items: center;
    justify-content: center;
}

.login-card input:focus{
    background: white;
}

.login-card-form button{
    background: #4b277a;
    color: white;
    padding: 1rem;
    border: none;
    border-radius: 100px;
    text-transform: uppercase;
    letter-spacing: 2px;
    transition: background .5s;
}

.login-card-form button:hover{
    background-color: rgba(75,39,122,.85);
    cursor: pointer;
}
.login-card-form a{
    background: #4b277a;
    color: white;
    padding: 1rem;
    border: none;
    border-radius: 100px;
    text-transform: uppercase;
    letter-spacing: 2px;
    transition: background .5s;
}

.login-card-form a:hover{
    background-color: rgba(75,39,122,.85);
    cursor: pointer;
    text-decoration: none;
}
.login-card button[type="radio"]{
    display: inline;
    align-items: center;
}
.form-item{
    justify-content: center;
    align-items: center;
}
        </style>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;
            
            String usu=request.getParameter("usuMO");
            
            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();

                Connection conx= null;
                Statement sta =null;
                
                ResultSet res = null;
                

                try{
                        Class.forName("com.mysql.jdbc.Driver");
                        conx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                        sta = conx.createStatement();
                    }
                    catch(SQLException error){
                        out.print(error.toString());
                    }   
                    try{

                        res = sta.executeQuery("select*from usuario where usuar='"+usu+"';");
                        if(res.next()){

        %>
        <br>
        <section>
            
                <div class="login-card-container">
                    <div class="login-card">
                        <div class="login-card-logo">
                            <img src="imagenes/logo_nimo.png" alt="logo">
                        </div>
                        <div class="login-card-header">
                            <h1>Modificación a Datos de Usuario</h1>
                        </div>
                        <form action="modificandoUsuG.jsp" method="post" name="registros" class="login-card-form">
                            
                            <div class="form-item">
                                <input type="text" placeholder="Nombre" name="nombre" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+" title="Escriba solo letras del abecedario" required autofocus value="<%=res.getString(8)%>">
                            </div>
                            <div class="form-item">
                                <input type="text" placeholder="Apellido Paterno" name="ap_pat" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+" title="Escriba solo letras del abecedario" required value="<%=res.getString(6)%>">
                            </div>
                            <div class="form-item">
                                <input type="text" placeholder="Apellido Materno" name="ap_mat" pattern="[a-zA-ZñÑáéíóúÁÉÍÓÚ\s]+" title="Escriba solo letras del abecedario" required value="<%=res.getString(7)%>">
                            </div>
                            <div class="form-item">
                                <input type="email" placeholder="Correo electrónico" name="correo" required value="<%=res.getString(10)%>" readonly="true">
                            </div>
                            <div class="form-item">
                                <input type="tel" placeholder="Teléfono" name="telef" pattern="[0-9]{10}" required maxlength="10" title="Ingrese un número telefónico válido" value="<%=res.getString(3)%>">
                            </div>
                            <div class="form-item">
                                <input type="date" name="f_nac" required value="<%=res.getString(5)%>">
                            </div>
                            <div class="form-item">
                                Género:&nbsp;&nbsp;&nbsp;
                                <%
                                    if(res.getString(4).equals("Masculino")){
                                    %>
                                    <p>Masculino</p>&nbsp;&nbsp;<input type="radio" value="Masculino" id="gene" name="gen" checked="true">
                                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Femenino</p>&nbsp;&nbsp;<input type="radio" value="Femenino" id="gene" name="gen" disabled="true">
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Personalizado</p>&nbsp;&nbsp;<input type="radio" value="Otro" id="gene" name="gen" disabled="true">
                                <%
                                    }
                                
                                    else 
                                        if(res.getString(4).equals("Femenino")){
                                    %>
                                    <p>Masculino</p>&nbsp;&nbsp;<input type="radio" value="Masculino" id="gene" name="gen" disabled="true">
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Femenino</p>&nbsp;&nbsp;<input type="radio" value="Femenino" id="gene" name="gen"  checked="true">
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Personalizado</p>&nbsp;&nbsp;<input type="radio" value="Otro" id="gene" name="gen" disabled="true">
                                <%
                                    }
                                
                                    else 
                                        if(res.getString(4).equals("Otro")){
                                    %>
                                    <p>Masculino</p>&nbsp;&nbsp;<input type="radio" value="Masculino" id="gene" name="gen" disabled="true">
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Femenino</p>&nbsp;&nbsp;<input type="radio" value="Femenino" id="gene" name="gen" >
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Personalizado</p>&nbsp;&nbsp;<input type="radio" value="Otro" id="gene" name="gen"  checked="true">
                                <%
                                    }
                                %>
                            </div>
                            <div class="form-item">
                                Tipo de usuario:&nbsp;&nbsp;&nbsp;
                                <%
                                    if(res.getString(2).equals("1")){
                                    %>
                                    <p>Veterinario</p>&nbsp;&nbsp;<input type="radio" value="3" id="vet" name="tipi" disabled="true">
                                    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Cliente</p>&nbsp;&nbsp;<input type="radio" value="1" id="client" name="tipi" checked="true">
                            <%
                                    }
                                
                                    else 
                                        if(res.getString(2).equals("2")){
                                    %>
                                    <p>Veterinario</p>&nbsp;&nbsp;<input type="radio" value="3" id="vet" name="tipi" checked="true">
                                <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p>Cliente</p>&nbsp;&nbsp;<input type="radio" value="1" id="client" name="tipi" disabled="true">
                            <%
                                    }%>
                            </div>
                            <div class="form-item">
                                <input type="text" placeholder="Usuario" name="usu" minlength="3" title="El nombre de usuario debe contener por lo menos 3 caracteres" required value="<%=res.getString(1)%>" readonly="true">
                            </div>
                            <div class="form-item">
                                
                                    
                                        <input type="password" placeholder="Contraseña" name="contrasenia" id="contra" minlength="6" title="La contraseña debe contener por lo menos 6 caracteres" required value="<%=res.getString(9)%>" readonly="true">
                                    
                            </div>
                            <button type="submit" name="registro" id="boton" value="Regístrate" onclick="verificando()">Modificar</button>
                            <br><br>
                            <a href="gestorUsuarios.jsp"><center>Regresar</center></a>
                        </form>
                    </div>
                </div>
                
            
        </section>                                                
                                                        
                                                        
                                                        
                                                        
                                                        
        <%
                        }

                    conx.close();
                    sta.close();
                
                }
                catch(SQLException error){
                    out.println("<script>Swal.fire({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='gestorUsuarios.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                }
            }
            else {
                out.print("<script>location.replace('inicioSPersonal.jsp');</script>");
            }
        %>
    </body>
</html>