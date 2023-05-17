<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes FAQS</title>
        <style>
            body{
                background: url('imagenes/fondohuehue.png') no-repeat;
            }
        </style>
    </head>
    <body>

                <link rel="stylesheet" href="styleAsistente.css">

                <%@ page language="java" %>
                <%
                    String id_reporte = request.getParameter("cod");
                    Connection cnx = null;
                    Statement sta = null;
                    ResultSet rs = null;

                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        cnx = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                        sta = cnx.createStatement();
                        rs = sta.executeQuery("select * from reportes where id_reporte = '" + id_reporte + "'");
                        rs.next();
                %>
                <section class="explore">
                    <div class="ini_acci">

                        <div class="margensito" style="margin-top: 70px; align-content: center; justify-content: center;">
                            <h5 align="center">Reportes FAQS: </h5>
                            <table border="1" width="700" align="center" class="tablita" cellSpacing=1 cellPadding=1>

                                <form action="" method="post">

                                    <tr style="color: #4b277a; border-radius:10px;">
                                        <td align="center">Descripción del reporte = Pregunta frecuente:</td>
                                        <td align="center">
                                            <input type="text" name="txttitulo" value="<%=rs.getString(2)%>" readonly="readonly">
                                        </td>
                                    </tr>
                                    <tr style="color: #4b277a; border-radius:10px;">
                                        <td align="center">Solución del reporte = Respuesta:</td>
                                        <td align="center">
                                            <input type="text" name="txtcosto" value="<%=rs.getString(6)%>" readonly="readonly">
                                        </td>
                                    </tr>

                                    <input type="submit" name="btnFAQ" value="Verificar FAQ">
                                    </table>
                                </form>
                                <% } catch (SQLException error) {%>
                                <%= error.toString()%>
                                <% } %>
                                <%
                                    if (request.getParameter("btnFAQ") != null) {
                                        String id = request.getParameter("txtcod");
                                        String pregunta_FAQ = request.getParameter("txttitulo");
                                        String respuesta_FAQ = request.getParameter("txtcosto");
                                        sta.execute("insert into editor(preguntaFAQ,respuestaFAQ,tipoFAQ) values('" + pregunta_FAQ + "','" + respuesta_FAQ + "','B')");
                                        sta.execute("update cerrado_FAQ set estado = 1 where id_reporte = " + id_reporte + "");
                                        RequestDispatcher rd = request.getRequestDispatcher("listado.jsp");
                                        rd.forward(request, response);
                                        sta.close();
                                        rs.close();
                                        cnx.close();
                                    }
                                %>

                        </div>
                    </div>
                </section>
    </body>
</html>

