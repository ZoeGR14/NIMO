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
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="2_calendario.css">
        <link rel="stylesheet" href="menusito.css">
        <title>Calendario</title>
        <style>
            .sidebar{
                width: 50px;
            }
        </style>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700&display=swap" rel="stylesheet">    
    </head>
    <body>
        <aside class="sidebar">
            <div class="logo_content">
                <div class="logo">
                    <img src="imagenes/logo_nimo.png" alt="" class="logo2">
                    <div class="logo_name">NIMO</div>
                </div>
                <i class='bx bx-menu' id='btn'></i>
            </div>

            <ul class="nav">
                <li>
                    <a href="/NIMO/Controler?visualizar=mascotas">
                        <i class='bx bxs-dog'></i>
                        <span class="link_name">Mis Mascotas</span>
                    </a>
                    <span class="tooltip">Mis Mascotas</span>
                </li>
                <li>
                    <a href="2_calendario.jsp">
                        <i class='bx bx-calendar'></i>
                        <span class="link_name">Calendario</span>
                    </a>
                    <span class="tooltip">Calendario</span>
                </li>
                <li>
                    <a href="informativo.html">
                        <i class='bx bx-info-circle'></i>
                        <span class="link_name">Información Mascotas</span>
                    </a>
                    <span class="tooltip">Información Mascotas</span>
                </li>
                <li>
                    <a href="comunidad.html">
                        <i class='bx bx-group'></i>
                        <span class="link_name">Comunidad</span>
                    </a>
                    <span class="tooltip">Comunidad</span>
                </li>
                <li>
                    <a href="/NIMO/Controler?visualizar=notas">
                        <i class='bx bx-note'></i>
                        <span class="link_name">Notas</span>
                    </a>
                    <span class="tooltip">Notas</span>
                </li>
                <li>
                    <a href="saludBienestar.html">
                        <i class='bx bxs-heart-circle'></i>
                        <span class="link_name">Salud y Bienestar</span>
                    </a>
                    <span class="tooltip">Salud y Bienestar</span>
                </li>
                <li>
                    <a href="adopciones.jsp">
                        <i class='bx bxs-clinic'></i>
                        <span class="link_name">Adopciones</span>
                    </a>
                    <span class="tooltip">Adopciones</span>
                </li>
                <li>
                    <a href="config_usu.jsp">
                        <i class='bx bx-cog'></i>
                        <span class="link_name">Configuración</span>
                    </a>
                    <span class="tooltip">Configuración</span>
                </li>
                <li>
                    <a href="cierreSesion.jsp">
                        <i class='bx bx-log-out-circle'></i>
                        <span class="link_name">Cerrar Sesión</span>
                    </a>
                    <span class="tooltip">Cerrar Sesión</span>
                </li>
            </ul>
        </aside>
        <section class="ventana">
            <section id="pantalla-dividida">

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
    <script src="prueba.js"></script>
</html>