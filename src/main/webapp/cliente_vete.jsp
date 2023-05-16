<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacta Veterinarios</title>
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
                margin: 0;
                padding: 0;
                min-height: 100vh;
                background: url('imagenes/fondohuehue.png');
                display: flex;
                justify-content: center;
                align-items: center;
            }
                        .row{
                display: flex;
                flex-wrap: wrap;
            }

            .logoni{
                height: 70px;
            }
            #header{
                background: #4b277a;
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
            todo{
                width: 100%;
            }
            .princp{
                margin-top: 100px;
                margin-bottom: 150px;
                display: grid;
  grid-template-columns: repeat(3, 1fr); /* establece 3 columnas con ancho igual */
  grid-auto-rows: minmax(100px, 700px); /* establece una altura mínima de 100px */
  grid-gap: 100px; /* establece el espacio entre los elementos */
            }
            .vetecontainer{
                
                position: relative;
                justify-content: center;
            }
            .vetecontainer .vetecard{
                position: relative;
                display: inline-block;
            }
            .vetecontainer .vetecard .face{
                width: 400px;
                height: 400px;
                transition: 0.5s;
                border-radius: 3rem;
            }
            .vetecontainer .vetecard .face.face1{
                position: relative;
                background: #D1C4E9;
                display: flex;
                justify-content: center;
                align-items: center;
                z-index: 1;
                transform: translateY(200px);
            }
            .vetecontainer .vetecard:hover .face.face1{
                background: #4b277a;
                border-radius: 0rem;
                transform: translateY(0);
            }
            .vetecontainer .vetecard .face.face1 .contfcV{ 
                opacity: 0.3;
                transition: 0.5s;
            }
            .vetecontainer .vetecard:hover .face.face1 .contfcV{
                color: #fff;
                opacity: 1;
            }
            .vetecontainer .vetecard .face.face1 .contfcV h3{
                margin: 10px 0 0;
                padding: 0;
                color: #4b277a;
                text-align: center;
                
            }
            .vetecontainer .vetecard:hover .face.face1 .contfcV h3{
                color: #fff;
            }
            .vetecontainer .vetecard .face.face2{
                position: relative;
                background: #fff;
                display: flex;
                align-items: center;
                justify-content: center;
                padding: 20px;
                box-sizing: border-box;
                box-shadow: 0 20px 50px rgba(0,0,0,0.8);
                transform: translateY(-200px);
            }
            .vetecontainer .vetecard:hover .face.face2{
                border-radius: 0rem;
                transform: translateY(0);
            }
            .vetecontainer .vetecard .face.face2 p{
                margin: 0;
                padding: 0;
                font-weight: 500;
                font-size: 17px;
                justify-content: center;
            }
            .vetecontainer .vetecard .face.face2 button{
                background-color: #4b277a;
    color: white;
    padding:  1rem 2rem;
    border-radius: 3rem;
    transition: .5s;
    margin-top: 50px;
    text-decoration: none;
    cursor: pointer;
            }
            .vetecontainer .vetecard .face.face2 button:hover{
                background: #D1C4E9;
                color: #4b277a;
                transition: 0.5s;
                border: 0;
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
        <br>
        <div class="todo">
            <br>
            <div class="princp">
                <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;
                Statement sta2 = null;
                ResultSet rs2 = null;
                Statement sta3 = null;
                ResultSet rs3 = null;

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    sta = cnx.createStatement();
                    rs = sta.executeQuery("select * from veterinario where usuar='"+usuario+"'");
                    while (rs.next()) { 
                        String cedula = rs.getString(1);
                        int ced = Integer.parseInt(cedula);
                        sta2 = cnx.createStatement();
                        rs2 = sta2.executeQuery("select * from veterinario_cliente where cedula='"+ced+"'");
                        while (rs2.next()) { 
                        String client = rs2.getString(1);
                        sta3 = cnx.createStatement();
                        rs3 = sta3.executeQuery("select * from usuario where usuar='"+client+"'");
                        while (rs3.next()) { 
                %>
            <div class="vetecontainer">
                <div class="vetecard">
                    <div class="face face1">
                        <div class="contfcV">
                            <h3>Cliente</h3>
                            <h3><%=rs3.getString(8)%>&nbsp;<%=rs3.getString(6)%>&nbsp;<%=rs3.getString(7)%></h3>
                            
                        </div>
                    </div>
                    <div class="face face2">
                        <div class="contfcV">
                            <center>
                                <br>
                                <p>Teléfono:&nbsp;&nbsp;<%=rs3.getString(3)%></p><br>
                                <p>E-mail:&nbsp;&nbsp;<%=rs3.getString(10)%></p>
                            </center>
                        </div>
                    </div>
                </div>
            </div>

            <%
                }}}
                        sta.close();
                        cnx.close();
                        rs.close();
                    }
                    catch (SQLException error){
                        out.print(error.toString());
                    }
                %>
            </div>
        </div>    
        
        <%
            } else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>