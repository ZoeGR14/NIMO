<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes Cerrados</title>
        <style>
            body{
                background: url('imagenes/fondohuehue.png') no-repeat;
            }
        </style>
    </head>
    <body>
        <link rel="stylesheet" href="styleAsistente.css">
        <section class="explore">
             <div class="ini_acci">
                
                 <div class="margensito" style="margin-top: 70px; align-content: center; justify-content: center;">
                     <h5 align="center">Reportes CERRADOS: </h5>
                     <table border="1" width="700" align="center" class="tablita" cellSpacing=1 cellPadding=1>
            
            <tr style="color: #4b277a; border-radius:10px;">
                <th style="border-radius:10px;">Id</th>
                <th style="border-radius:10px;">Usuario</th>
                <th style="border-radius:10px;">Estatus</th>
                <th style="border-radius:10px;">Solución</th>
            </tr>
            <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;
               
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");          
                    sta = cnx.createStatement();
                    rs = sta.executeQuery("select * from reportes inner join trabajador_reporte on trabajador_reporte.id_reporte = reportes.id_reporte inner join cerrado_FAQ on cerrado_FAQ.id_reporte = reportes.id_reporte where estatus = 'Cerrado' and estado = 0");
                    while (rs.next()) { 
                %>
                <tr>
                    <td align="center"><%=rs.getString(1)%></td>
                    <td align="center"><%=rs.getString(8)%></td>
                    <td align="center"><%=rs.getString(3)%></td>
                    <td align="center"><%=rs.getString(6)%></td>
                    <td>
                        <a href="reporteFAQ.jsp?cod=<%=rs.getString(1)%>">
                            <img src="imagenes/faq.jpg" width="30" height="30">
                        </a>                        
                    </td> 
                   
                </tr>
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
        </table>
                 </div>
             </div>
            
        </section>

    </body>
</html>
