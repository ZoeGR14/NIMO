<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<%@page import="envioCorreos.*"%>
<%@page import="java.sql.*,java.io.*" %>
<%@page import="java.util.Properties" %>
<%@page import="javax.swing.JOptionPane" %>
<%@page import="javax.activation.*" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@page import="envioCorreos.enviar_corr"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Validar Veterinarios</title>
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Nunito+Sans:wght@400;600;700&display=swap');

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
                color: white;
                font-weight: 300;
                text-transform: capitalize;
                &.sticky{
                    color: #fff;}
            }

            .nav li a:hover{
                color: #4B277A;
                font-weight: 300;
                text-transform: capitalize;
            }
            body {
                position: relative;
                margin: 0;
            }
            .sect {
                width: 100%;
                min-height: 100vh;
            }
            #sect1,
            #sect3 {
                background-color: rgba(0,0,0,0.15);
                color: #fff;
            }
            #sect2 {
                background-color: #dddddd7d;
                color: #333;
            }

            .imagensita {
                position: fixed;
                right: 0;
                bottom: 0;
                min-width: 105%;
                min-height: 100%;
                transform: translateX(calc((100% - 100vw) / 2));
                transform: translateY(100px);
                z-index: -2;
            }
            h1 {
                margin: 0;
                padding-top: 3rem;
                padding-left: 2rem;
            }
            h2 {
                margin: 0;
                padding-top: 3rem;
                padding-left: 2rem;
            }

            .gridd{
                margin-top: 0%;
                margin-bottom: 50px;
                margin-left: 150px;
                display: grid;
                grid-template-columns: repeat(3, 1fr); /* establece 3 columnas con ancho igual */
                grid-auto-rows: minmax(100px, 700px); /* establece una altura mínima de 100px */
                grid-gap: 100px; /* establece el espacio entre los elementos */
            }
            .cardContainer {
                width: 430px;
                height: 450px;
                background-color: rgb(255, 255, 255);
                display: flex;
                align-items: center;
                justify-content: center;
                position: relative;
                transition-duration: .5s;
                border-radius: 10px;
                margin-top: 55%;
            }

            .profileDiv {
                z-index: 2;
                width: 100%;
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                background-color: #AD90D0;
                transition-duration: .5s;
                color: white;
                font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
                font-weight: 500;
                font-size: 20px;
                border-radius: 10px;
            }

            .cardContainer:hover .profileDiv {
                transform: translateX(-25%) translateY(-20%);
                transition-duration: .5s;
            }

            .infoDiv {
                position: absolute;
                width: 100%;
                height: 100%;
                display: flex;
                align-items: center;
                justify-content: center;
                background-color: aliceblue;
                z-index: 1;
                border-radius: 10px;
                background-color: rgba(255, 255, 255,0.3);
            }

            .nameDiv {
                width: 75%;
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: flex-end;
                background-color: aliceblue;
                font-family: Whitney, -apple-system, BlinkMacSystemFont, Segoe UI, Roboto, Helvetica, Arial, sans-serif;
                gap: 2px;
                border-radius: 10px;
                background-color: rgba(255, 255, 255,0.3);
            }

            .name {
                margin: 0;
                padding: 0;
                font-size: 16px;
                font-weight: 500;
                color: black;
            }

            .role {
                margin: 0;
                padding: 0;
                font-size: 13px;
                font-weight: 400;
                color: rgb(48, 48, 48);
                margin-bottom: 5px;
            }

            .socialDiv {
                width: 25%;
                height: 100%;
                display: flex;
                flex-direction: column;
                align-items: center;
                justify-content: center;
                color: rgb(14, 14, 14);
                gap: 25px;
                background-color: rgba(255, 255, 255,0.3);
                border-radius: 10px;
            }

            .infoDiv a {
                width: 50%;
            }

            .socials {
                width: 100%;
                fill: rgb(14, 14, 14);
            }

            .bottar{
                background-color: rgba(255, 255, 255,0.3);
                border: none;
                cursor: pointer;
            }

        </style>
        <script src="sweetalert2.all.min.js"></script>
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
        <header class="headersito" id="header">
            <a href="cierreSesion.jsp" class="logoin">
                <img src="imagenes/logo_nimo.png" alt="" class="logoni" draggable="false">
            </a>
            <ul class="nav">
                <li><a href="administrador.jsp"> Inicio</a></li>
                <li><a href="gestorVeterinarios.jsp">Veterinarios</a></li>
                <li><a href="gestorComentarios.jsp">Comentarios</a></li>
                <li><a href="gestorUsuarios.jsp">Usuarios</a></li>
                <li><a href="cierreSesion.jsp">Cerrar Sesión</a></li>
            </ul>
        </header>
        <br><br>
        <%                    Connection conx = null;
            Statement sta = null;
            Statement sta2 = null;
            ResultSet res = null;
            ResultSet res2 = null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                conx = DriverManager.getConnection("jdbc:mysql://mysql-db:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                sta = conx.createStatement();
                sta2 = conx.createStatement();

            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                String usu = request.getParameter("usuE");
                res = sta.executeQuery("select*from usuario where usuar='" + usu + "';");
                if (res.next()) {

                    String contt = res.getString("pass_us");
                    String emaill = res.getString("mail_us");
                    validadoVete sendd = new validadoVete();
                    sendd.setCorreoo(emaill);
                    sendd.setContras(contt);
                    sendd.transfer_to_mail(emaill);
                    sta.executeUpdate("update usuario set tipo_us='2' where usuar='" + usu + "';");
                    out.println("<script>Swal.fire('El correo de notificación ha sido enviado','','success')</script>");
                    out.println("<script>function saludos(){location.href ='gestorVeterinarios.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");

                    out.println("<script>Swal.fire('Veterinario Validado','','success')</script>");
                    out.println("<script>function saludos(){location.href ='gestorVeterinarios.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");

                }

                conx.close();
                sta.close();
                sta2.close();
            } catch (SQLException error) {
                out.println("<script>Swal.fire({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                out.println("<script>function saludos(){location.href ='gestorVeterinarios.jsp';}</script>");
                out.println("<script>setTimeout(saludos, 1500);</script>");
            }


        %>

        <%                 } else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>