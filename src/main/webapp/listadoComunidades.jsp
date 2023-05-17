<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Listado Comunidades</title>        
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
                    <li><button class="desplegar" name="accion" value="Visualizar mis notas" style="border: none;">Notas</button></li></form>
                    <li><a href="citas.html" class="">Citas</a></li>
                    <li><a href="saludBienestar.html" class="">Salud y Bienestar</a></li>
                    <li><a href="config_usu.jsp" class="">Configuración</a></li>
                </ul>
            </nav>
            <section>
                <%
                    Connection cnx = null;
                    Statement sta = null;
                    ResultSet rs = null;

                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");
                        sta = cnx.createStatement();
                        rs = sta.executeQuery("select * from comunidad");
                        while (rs.next()) {   
                                                             
                    %>
                <link rel="stylesheet" href="tarjetas_listadoComu.css">
                    <div class="contenedor">
                        <div class="card">
                            <div class="card-encabezado"><%=rs.getString(3)%></div>
                        <div class="card-contenido">
                            <div class="nombre desplazar">
                               ¿De qué trata la comunidad?             
                            </div>
                            <div class="descripcion">
                                <%=rs.getString(4)%>
                            </div>                          
                        </div>
                        </div>
                    </div>                   

                    <%
    
                            }
                            sta.close();
                            cnx.close();
                            rs.close();
                        }
                        catch (SQLException error){
                            out.print(error.toString());
                        }
                    %>

            </section>
    </body>
</html>
