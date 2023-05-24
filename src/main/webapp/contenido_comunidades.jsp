<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Comunity content</title>        
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
<<<<<<< HEAD
                    <li><a href="2_calendario.jsp" class="">Calendario</a></li>
=======
                    <li><a href="calendario.html" class="">Calendario</a></li>
>>>>>>> 438f1c1153ba0547562242cdc4f8d52a22a90556
                    <li><a href="informativo.html" class="">Información Mascotas</a></li>
                    <li><a href="comunidad.html" class="">Comunidad</a></li>
                    <li><button class="desplegar" name="accion" value="Visualizar mis notas" style="border: none;">Notas</button></li></form>
            <li><a href="citas.html" class="">Citas</a></li>
            <li><a href="saludBienestar.html" class="">Salud y Bienestar</a></li>
            <li><a href="config_usu.jsp" class="">Configuración</a></li>
        </ul>
                </nav>
    <section>
        <br>
        <link rel="stylesheet" href="contenido_comu.css">
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
        <!-- <div class="login-card-container">
              <div class="login-card">
                 
                  <div class="login-card-form">
                      <form action="" class="login-card-form">
                          <div class="form-item">
                              Nueva publicación:<input type="text" placeholder="Nueva publicación" name="txtpublicacion"><br><br>
                          </div>
                         
                          <div class="form-item"></div>
                          <button type="submit" name="btnPubli" value="Publicar coso">Publicar</button>
                          <br><br>
                      </form>
                  </div>
              </div>
          </div> 
        -->

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
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                    sta = cnx.createStatement();
                    sta.executeUpdate(paso);

                    request.setAttribute("paso", paso2);
                    response.sendRedirect("contenido_comunidades.jsp?paso="+paso2+"");
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
    </section>
    <section>                                                         

        <%
            try {
                Class.forName("com.mysql.jdbc.Driver");
                cnx2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
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

    </section>
</body>
</html>
