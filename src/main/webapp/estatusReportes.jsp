<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes - Estatus</title>
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();

        %>
        
        <link rel="stylesheet" href="styleAsistente.css">
        <section id="explorar" class="explore">
             <div class="ini_acci" id="ini_acci">
                
                 <div class="margensito" style="margin-top: 70px; align-content: center; justify-content: center;">
                     <h5 align="center">Estatus de reportes escritos por:&nbsp;<%out.println(usuario);%></h5>
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
                Statement sta2 = null;
                ResultSet rs2 = null;
                Statement sta3 = null;
                ResultSet rs3 = null;

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");
                    sta = cnx.createStatement();
                    rs = sta.executeQuery("select * from escritor where trabajador='"+usuario+"'");
                    while (rs.next()) { 
                        int ids = Integer.parseInt(rs.getString(1));
                        sta2 = cnx.createStatement();
                        rs2 = sta2.executeQuery("select * from trabajador_reporte where id_reporte='"+ids+"'");
                        while (rs2.next()) { 
                            int idsR = Integer.parseInt(rs2.getString(1));
                            sta3 = cnx.createStatement();
                            rs3 = sta3.executeQuery("select * from reportes where id_reporte='"+idsR+"'");
                            while (rs3.next()) { 
                %>
                <tr>
                    <td align="center"><%=rs.getString(1)%></td>
                    <td align="center"><%=rs2.getString(2)%></td>
                    <td align="center"><%=rs3.getString(3)%></td>
                    <td align="center"><%=rs3.getString(6)%></td>
                    
                   
                </tr>
                <%
                    }}}
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
            
        
        <%
            } else {
                out.print("<script>location.replace('asistente.jsp');</script>");
            }
        %>
    </body>
</html>