<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear nueva COMUNIDAD</title>
        <link rel="stylesheet" href="loginn.css">
    </head>
    <body>
        <%HttpSession sesion = request.getSession();
                    String usuario = "";
                    if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                        usuario = sesion.getAttribute("user").toString();
                    }
                %>
        <br>
                <div class="login-card-container">
                    <div class="login-card">
                        <div class="login-card-header">
                            <h1>Crea una nueva comunidad</h1>
                        </div>
                        <div class="login-card-form">
                            <form action="" class="login-card-form">
                                <div class="form-item">
                                    Nombre de usuario:<input type="text" name="txtusuario_comu" hidden disabled value="<%=usuario%>"><br><br>
                                   
                                </div>
                                <div class="form-item">
                                    Nombre de la comunidad:<input type="text" placeholder="Nombre de la comunidad" name="txtcomunidad"><br><br>
                                </div>
                                <div class="form-item">
                                    Descripción:<input type="text" placeholder="Descripción de la comunidad" name="txtdescripcionComu"><br><br>
                                </div>
                                <div class="form-item"></div>
                                <button type="submit" name="btnComu" value="Crear Comunidad">Crear comunidad</button>
                                <br><br>
                            </form>
                        </div>
                    </div>
                </div>
                <%
                    String cad;
                    if (request.getParameter("btnComu") != null) {
                        String comunidad_name = request.getParameter("txtcomunidad");
                        String descripcion_comu = request.getParameter("txtdescripcionComu");
                        cad = "insert into comunidad(id_comu,usuar,comunidad_name,descripcion_comu) values (null,'" + usuario + "','" + comunidad_name + "','"+descripcion_comu+"')";
                        
                        Connection cnx = null;
                        ResultSet rs = null;
                        Statement sta = null;
                        
                        
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                            sta = cnx.createStatement();
                            sta.executeUpdate(cad);
                            response.sendRedirect("listadoComunidades.jsp");
                        } catch (SQLException error) {
                            out.print(error.toString());
                        }         
                    }
                %>
            </body>
</html>