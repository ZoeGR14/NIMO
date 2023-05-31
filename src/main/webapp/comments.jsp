<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
        <style>
            
            *{
                font-family: 'Poppins', sans-serif;
            }
            body{
                background-color: #4b277a;
            }
        </style>
        <script src="sweetalert2.all.min.js"></script>
    </head>
    <body>

<%            
              String comm=request.getParameter("comenttt");
              String inv = "invitado";
              
                Connection con= null;
                Statement stat =null;
                

                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    stat = con.createStatement();
                }
                catch(SQLException error){
                    out.print(error.toString());
                }
                try{

                        
                        stat.executeUpdate("insert into comentarios values(null,'"+comm+"','1');");
                        stat.executeUpdate("insert into usu_coment values(null,'"+inv+"');");
                        out.println("<script>Swal.fire('Gracias por tus comentarios, son de mucha ayuda para nosotros!','','success')</script>");
                        out.println("<script>function saludos(){location.href ='index.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    
                }
                catch(SQLException error){
                    out.print(error.toString());
                }
                        
%>
</body>
</html>
                