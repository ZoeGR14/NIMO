<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="menusito.css">
        <link rel="stylesheet" href="2_calendario.css">
        <title>Calendario</title>
        <style>
            .sidebar{
                width: 50px;
            }
            .button {
                text-align: center;
                width: 10em;
                position: relative;
                height: 3.5em;
                border: 3px ridge #f76d84;
                outline: none;
                background-color: transparent;
                color: white;
                transition: 1s;
                border-radius: 0.3em;
                font-size: 16px;
                font-weight: bold;
            }

            .button::after {
                content: "";
                position: absolute;
                top: -10px;
                left: 3%;
                width: 95%;
                height: 40%;
                background-color: #1A1617;
                transition: 0.5s;
                transform-origin: center;
            }

            .button::before {
                content: "";
                transform-origin: center;
                position: absolute;
                top: 80%;
                left: 3%;
                width: 95%;
                height: 40%;
                background-color: #1A1617;
                transition: 0.5s;
            }

            .button:hover::before, .button:hover::after {
                transform: scale(0)
            }

            .button:hover {
                box-shadow: inset 0px 0px 25px #f76d84;
            }
        </style>
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,700&display=swap" rel="stylesheet">    
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
                    <a href="informativo.jsp">
                        <i class='bx bx-info-circle'></i>
                        <span class="link_name">Información Mascotas</span>
                    </a>
                    <span class="tooltip">Información Mascotas</span>
                </li>
                <li>
                    <a href="comunidad.jsp">
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
                    <a href="saludBienestar.jsp">
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
                <c:if test="${sessionScope.tipo_usuario eq 2}">
                    <li>
                        <a href="soyVeterinario.jsp">
                            <i class='bx bx-plus-medical'></i>
                            <span class="link_name">Opciones Veterinario</span>
                        </a>
                        <span class="tooltip">Adopciones</span>
                    </li>
                </c:if>
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
                <link rel="stylesheet" href="2_calendario.css">

                <div class="izquierda">
                    <h1><span class="creative">Agrega eventos en tu calendario</span></h1>
                    <span class="text"><p>Agenda y visualiza tus eventos</p>
                    </span>
                    </span>
                    <br>
                    <a class="btn" href="miCalendario.jsp">Mis eventos</a>
                </div>            



                <div class="derecha">                   
                    <div class="login-box"> 

                        <form action="">

                            <div class="user-box">
                                <input type="text" name="txtusuario" value="<%=usuario%>" hidden>

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

                                <center><button class="button" type="submit" name="btnEvento" value="Subir Evento">Agendar</button></center>
                            </div>    
                        </form>       
                    </div>                                        
                </div>             
            </section>                                                  


            <%
                Connection cnx = null;
                PreparedStatement stmt = null;
                ResultSet rs = null;

                if (request.getParameter("btnEvento") != null) {
                    String id_usuario = request.getParameter("txtusuario");
                    String fecha = request.getParameter("txtfecha");
                    String hora = request.getParameter("txthora");
                    String descripcion = request.getParameter("txtdescripcion");

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");

                        // Verificar si el registro ya existe
                        String selectQuery = "SELECT id_evento FROM calendario WHERE usuar = ? AND fecha_evento = ? AND hora_evento = ?";
                        stmt = cnx.prepareStatement(selectQuery);
                        stmt.setString(1, id_usuario);
                        stmt.setString(2, fecha);
                        stmt.setString(3, hora);
                        rs = stmt.executeQuery();

                        if (rs.next()) {

                        } else {
                            // Realizar la inserción
                            String insertQuery = "INSERT INTO calendario(id_evento, usuar, fecha_evento, hora_evento, descripcion_evento) VALUES (null, ?, ?, ?, ?)";
                            stmt = cnx.prepareStatement(insertQuery);
                            stmt.setString(1, id_usuario);
                            stmt.setString(2, fecha);
                            stmt.setString(3, hora);
                            stmt.setString(4, descripcion);
                            stmt.executeUpdate();
                            request.getRequestDispatcher("2_calendario.jsp").forward(request, response);
                        }
                    } catch (ClassNotFoundException e) {

                    } catch (SQLException error) {

                    } finally {
                        try {
                            if (stmt != null) {
                                stmt.close();
                            }
                            if (cnx != null) {
                                cnx.close();
                            }
                            if (rs != null) {
                                rs.close();
                            }
                        } catch (SQLException e) {
                            out.print(e.toString());
                        }
                    }
                }


            %>

    </body>
    <script src="prueba.js"></script>
</html>