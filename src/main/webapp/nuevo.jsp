<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro FAQ</title>
        <link rel="stylesheet" href="loginn.css">
    </head>
    <body>
        <br>
                <div class="login-card-container">
                    <div class="login-card">
                        <div class="login-card-header">
                            <h1>Registro de FAQS</h1>
                        </div>
                        <div class="login-card-form">
                            <form action="" class="login-card-form">
                                <div class="form-item">
                                    Pregunta frecuente:<input type="text" placeholder="Pregunta" name="txtpreguntaFAQ"><br><br>
                                </div>
                                <div class="form-item">
                                    Respuesta:<input type="text" placeholder="Respuesta" name="txtrespuestaFAQ"><br><br>
                                </div>
                                <div class="form-item"></div>
                                <button type="submit" name="btnFAQ" value="Subir FAQ">Subir</button>
                                <br><br>
                            </form>
                        </div>
                    </div>
                </div>
                <%
                    String cad;
                    if (request.getParameter("btnFAQ") != null) {
                        String preguntaFAQ = request.getParameter("txtpreguntaFAQ");
                        String respuestaFAQ = request.getParameter("txtrespuestaFAQ");
                        cad = "insert into editor(preguntaFAQ,respuestaFAQ,tipoFAQ) values ('" + preguntaFAQ + "','" + respuestaFAQ + "','A')";
                        Connection cnx = null;
                        ResultSet rs = null;
                        Statement sta = null;
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                            sta = cnx.createStatement();
                            sta.executeUpdate(cad);
                            request.getRequestDispatcher("listado.jsp").forward(request, response);
                        } catch (SQLException error) {
                            out.print(error.toString());
                        }
                    }
                %>
            </body>
</html>