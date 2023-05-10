<%-- 
    Document   : cierreSesion
    Created on : 21/11/2022, 01:35:08 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="loginn.css">
        <style>
            body{
                background: url('imagenes/fondohuehue.png') no-repeat;
            }
        </style>
        <script src="sweetalert2.all.min.js"></script>
    </head>
    <body>    

        <%
            HttpSession sesion = request.getSession();
                sesion.invalidate();
                out.println("<script>Swal.fire('Hasta luego')</script>");
                out.println("<script> location.href ='inicioSPersonal.html';</script>");
                
            %>
    </body>
</html>
