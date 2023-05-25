<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="menusito.css">
        <link rel="stylesheet" href="miCalendario.css"> 
        <title>Mi Calendario</title>        
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700&display=swap" rel="stylesheet">
        <style>
            .sidebar{
                width: 50px;
            }
            h1{
                font-size: 30px;
                margin-top: 15px;
                text-align: center;
            }
        </style>
    </head>
    <body>
        <%HttpSession sesion = request.getSession();
            String usuario = "";
            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
            }
        %>
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
                <h1>Mis Eventos</h1>
            <div class="contenedor">
                   
                <%
                    Connection cnx = null;
                    Statement sta = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                        sta = cnx.createStatement();
                        rs = sta.executeQuery("select * from calendario where usuar = '" + usuario + "'");
                        while (rs.next()) {

                %>
<!--                <div class="card">
                    <div class="card-border-top">
                    </div>
                    Fecha
                    <span></span>
                    Hora
                    <p class="job"></p>
                    Descripcion
                    <p class="job"><%=rs.getString(5)%></p>

                </div>-->


                <div class="card">
                    <div class="card__content">
                        <div class="card__content-body">
                            <p>Fecha: <%=rs.getString(3)%></p>
                            <p>Hora: <%=rs.getString(4)%></p>
                            <p>Hora: <%=rs.getString(5)%></p>
                        </div>
                        <div class="card__content-footer">
                            <button> Eliminar evento</button>
                        </div>
                    </div>
                </div>



                <%

                        }
                        sta.close();
                        cnx.close();
                        rs.close();
                    } catch (SQLException error) {
                        out.print(error.toString());
                    }
                %>

            </div>
        </section>
    </body>
    <script src="prueba.js"></script>
</html>