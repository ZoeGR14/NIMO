<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar FAQ</title>
    </head>
    <body>
        <%
            String id = request.getParameter("paso");
            Connection cnx = null;
            Statement sta = null;
            ResultSet rs = null;
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                cnx  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");
                sta = cnx.createStatement();
                sta.executeUpdate("delete from editor where id_FAQ ="+id+"");
                sta.executeUpdate("update cerrado_FAQ set estado = 0 where id_reporte = "+id+"");
                request.getRequestDispatcher("listado.jsp").forward(request,response);
                sta.close();
                rs.close();
                cnx.close();
            }
            catch (SQLException error){
                out.print(error.toString());
            }
        %>
    </body>
</html>