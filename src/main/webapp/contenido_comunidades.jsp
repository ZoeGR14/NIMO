<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
        <link rel="stylesheet" href="menusito.css">
        <link rel="stylesheet" href="contenido_comu.css">
        <title>Comunity content</title>
        <style>
            .sidebar{
                width:50px;
            }
            .container{
                display: flex;
                justify-content: center;
                align-items: center;
                gap: 25px;
                margin: 0;
                flex-direction: column;
                padding: 20px;
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
                    <a href="/Controler?visualizar=mascotas">
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
                    <a href="/Controler?visualizar=notas">
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
            <div class="container">

                <div class="login-card">
                    <div class="subscribe">
                        <form action="" class="publicacion">
                            <p>Nueva publicación</p>
                            <input name="idcomu" type="hidden" value="<%=request.getParameter("paso")%>">
                            <input placeholder="Nueva publicación" class="subscribe-input" name="txtpublicacion" type="text">
                            <br>    
                            <button class="submit-btn" type="submit" name="btnPubli" value="Publicar coso">Publicar</button>
                        </form>
                    </div>
                </div>

                <%
                    String paso;
                    if (request.getParameter("btnPubli") != null) {
                        String publicacion = request.getParameter("txtpublicacion");
                        String paso2 = request.getParameter("idcomu");

                        paso = "insert into publicaciones(id_comu, nueva_publi) values (" + paso2 + ", '" + publicacion + "')";
                        System.out.println(paso);
                        Connection cnx = null;
                        Statement sta = null;

                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cnx = DriverManager.getConnection("jdbc:mysql://mysql-db:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                            sta = cnx.createStatement();
                            sta.executeUpdate(paso);

                            request.setAttribute("paso", paso2);
                            response.sendRedirect("contenido_comunidades.jsp?paso=" + paso2 + "");
                        } catch (SQLException error) {
                            out.print(error.toString());
                        }
                        sta.close();
                        cnx.close();
                    } else {
                        String paso2 = request.getParameter("paso");
                        Connection cnx2 = null;
                        ResultSet rs2 = null;
                        Statement sta2 = null;
                %>  


                <%
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx2 = DriverManager.getConnection("jdbc:mysql://mysql-db:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                        sta2 = cnx2.createStatement();
                        rs2 = sta2.executeQuery("select * from publicaciones where id_comu =" + paso2 + "");
                        System.out.println("prueba");
                        while (rs2.next()) {

                %>

                <div class="contenedor">
                    <div class="card">
                        <div class="tools">
                            <div class="circle">
                                <span class="red box"></span>
                            </div>
                            <div class="circle">
                                <span class="yellow box"></span>
                            </div>
                            <div class="circle">
                                <span class="green box"></span>
                            </div>
                        </div>
                        <div class="card__content"><%=rs2.getString(3)%>
                        </div>
                    </div>
                    <%
                                }
                            } catch (SQLException error) {
                                out.print(error.toString());
                            }
                            sta2.close();
                            cnx2.close();
                            rs2.close();
                        }
                    %>

                </div>
            </div>                    
        </section>
    </body>
    <script src="prueba.js"></script>
</html>
