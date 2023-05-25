<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Mi Calendario</title>        
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
                <div class="contenedor">
                <link rel="stylesheet" href="miCalendario.css">    
                <%
                    String id_usuar = request.getParameter("paso");
                    Connection cnx = null;
                    Statement sta = null;
                    ResultSet rs = null;

                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");
                        sta = cnx.createStatement();
                        rs = sta.executeQuery("select * from calendario where usuar = '" + id_usuar + "'" );
                        while (rs.next()) {   
                                                             
                    %>
                
                
            <div class="card">
                    <div class="card-border-top">
                    </div>
               
                <span><%=rs.getString(3)%></span>
                <p class="job"><%=rs.getString(4)%></p>
                <p class="job"><%=rs.getString(5)%></p>
            
            </div>

                      <br>
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