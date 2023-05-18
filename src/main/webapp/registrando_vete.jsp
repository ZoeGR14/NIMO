<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="loginn.css">
        <style>
            body{
                background-color: #4b277a;
            }
        </style>
        <script src="sweetalert2.all.min.js"></script>
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
            <ul alt="" class="bot_acc">
                <li><a href="inicio_Sesion.html" class="inis">Inicio de Sesión</a></li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="registro.html" class="regis">Registro</a></li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="#" class="admins">¿Eres un administrador?</a></li>
            </ul>
        </nav>

        <%
                String usuario = request.getParameter("nombre_usu");           
                String cedul = request.getParameter("cedula");
                int cedulita = Integer.parseInt(cedul);
                String direc = request.getParameter("direccion");
                Connection conx = null;
                Statement sta = null;
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conx  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");
                    sta = conx.createStatement();
                }
                catch (SQLException error){
                    out.println("<script>Swal({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                    out.println("<script>setTimeout(saludos, 1000);</script>");
                }
                try{
                    sta.executeUpdate("insert into veterinario values('"+cedulita+"','"+direc+"','"+usuario+"');");
                    out.println("<script>Swal.fire('Veterinario registrado exitosamente','','success')</script>");
                    out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                    conx.close();
                    sta.close();
                }
                catch(SQLException error){
                    out.println("<script>Swal({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                    out.println("<script>setTimeout(saludos, 1000);</script>");
                }
                
            %>        
    </body>
</html>
