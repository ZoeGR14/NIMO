<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listado FAQS</title>
        <style>
            @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap');
            *{
                font-family: 'Poppins', sans-serif;
            }
            body{
                background: url('imagenes/fondohuehue.png') no-repeat;
            }
        </style>
    </head>

    <body>
        <nav class="nopuedo">
            <link rel="stylesheet" href="menu.css">
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="menu-icon"> <img src="imagenes\menuicon.png"> </i>
            </label>
            <a href="index.html" class="enlace">
                <img src="imagenes/logo_nimo.png" alt="" class="logo">
            </a>
            <ul alt="" class="bot_acc">
                <li><a href="inicio_Sesion.html" class="inis">Inicio de Sesión</a></li>
                <li><a href="registro.html" class="regis">Registro</a></li>
                <li><a href="listado_FAQS.jsp" class="regis">FAQs</a></li>
                <li><a href="inicioSPersonal.html" class="admins">¿Eres un administrador?</a></li>
            </ul>
        </nav>
        <link rel="stylesheet" href="styleAsistente.css">
        <section class="explore">
            <div class="ini_acci" >

                <div class="margensito" style="margin-top: 70px; align-content: center; justify-content: center;">
                    <h5 align="center">FAQS:</h5>
                    <table border="1" width="700" align="center" class="tablita" cellSpacing=1 cellPadding=1>

                        <tr style="color: #4b277a; border-radius:10px;">
                            <th>Pregunta frecuente</th>
                            <th>Respuesta</th>
                        </tr>
                        <%
                            Connection cnx = null;
                            Statement sta = null;
                            ResultSet rs = null;

                            try {
                                Class.forName("com.mysql.jdbc.Driver");
                                cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                                sta = cnx.createStatement();
                                rs = sta.executeQuery("select * from editor");
                                while (rs.next()) {
                        %>
                        <tr>
                            <td align="center"><%=rs.getString(3)%></td>
                            <td align="center"><%=rs.getString(4)%></td>
                        </tr>
                        <%
                                }
                                sta.close();
                                cnx.close();
                                rs.close();
                            } catch (SQLException error) {
                                out.print(error.toString());
                            }
                        %>
                    </table>
                </div>
            </div>
        </section>
    </body>
</html>
