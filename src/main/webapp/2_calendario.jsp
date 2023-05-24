<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Calendario</title>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700&display=swap" rel="stylesheet">    
    </head>
    <body>
         <nav>
        <link rel="stylesheet" href="menu.css">
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
               <i class="menu-icon"> <img src="imagenes\menuicon.png"> </i>
            </label>
            <a href="index.html" class="enlace">
                <img src="imagenes/logo_nimo.png" alt="" class="logo">
            </a>
            <form action="Controler" method="post"><ul class="bot_acc">
                <li><a href="inicio.jsp" class="inicio">Inicio</a></li>
                <li><button class="desplegar" name="accion" value="Visualizar mis mascotas" style="border: none;">Mis Mascotas</button></li>
                <li><a href="calendario.html" class="">Calendario</a></li>
                <li><a href="informativo.html" class="">Información Mascotas</a></li>
                <li><a href="comunidad.html" class="">Comunidad</a></li>
                <li><button class="desplegar" name="accion" value="Visualizar mis notas" style="border: none;">Notas</button></li>
                <li><a href="citas.html" class="">Citas</a></li>
                <li><a href="saludBienestar.html" class="">Salud y Bienestar</a></li>
                <li><a href="config_usu.jsp" class="">Configuración</a></li>
            </ul>
            </form>
        </nav>
        
        
        <section id="pantalla-dividida">
        <link rel="stylesheet" href="2_calendario.css">
        
            <div class="izquierda">
                <h1><span class="creative">Agrega eventos en tu calendario</span></h1>
                <span class="text"><p>Agenda y visualiza tus eventos</p>
                </span>
                <br>
                <a class="btn" href="2_calendario.jsp#miCalendario">Mis eventos</a>
            </div>            
        
        
        
            <div class="derecha">                   
                <div class="login-box"> 
                    
            <form action="">
                <div class="user-box">
                <input type="text" name="txtusuario">
                    <label>Usuario</label>
                </div>
                <div class="user-box">
                    <input type="date" name="txtfecha">     
                    <div class="user-box">
                    <input type="time" name="txthora">
                    </div>
                    <div class="user-box">
                    <input type="text" name="txtdescripcion">
                    <label>Descripción</label>
                    </div>
                    
                    <button type="submit" name="btnEvento" value="Subir Evento">Agendar</button>
                </div><center>    
            </form>       
            </div>                                        
            </div>             
        </section>                                                  


            <%
                    String cad;
                    if (request.getParameter("btnEvento") != null) {
                        String usuario = request.getParameter("txtusuario");
                        String fecha = request.getParameter("txtfecha");
                        String hora = request.getParameter("txthora");
                        String descripcion = request.getParameter("txtdescripcion");
                        cad = "insert into calendario(id_evento,usuar,fecha_evento,hora_evento,descripcion_evento) values (null,'" + usuario + "','" + fecha + "','" + hora + "','" + descripcion + "')";
                       
                        Connection cnx = null;
                        ResultSet rs = null;
                        Statement sta = null;
                        
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                            sta = cnx.createStatement();
                            sta.executeUpdate(cad);
                            request.getRequestDispatcher("2_calendario.jsp").forward(request, response);
                        } catch (SQLException error) {
                            out.print(error.toString());
                        }
                    }
                %>

                <div id="miCalendario">
                    
                </div>
            </body>
</html>