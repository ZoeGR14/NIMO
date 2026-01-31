<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>

<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head>
        <link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacta Veterinarios</title>
        <script src="sweetalert2.all.min.js"></script>
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
        *{
            font-family: 'Poppins', sans-serif;
        }
        body{
            background: url('imagenes/fondohuehue.png');
        }
    </style>
    <body>
                <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;

            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();

            int vet = Integer.parseInt(request.getParameter("veterinarioR"));
            
                        Connection conx = null;
            Statement sta = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conx  = DriverManager.getConnection("jdbc:mysql://mysql-db:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");               

                sta = conx.createStatement();
            }
            catch (SQLException error){
                out.print(error.toString());
            }
            try{
                sta.executeUpdate("insert into veterinario_cliente values('"+usuario+"','"+vet+"');");
                out.println("<script>Swal.fire('Has contactado al veterinario','Por favor, espera su respuesta','success')</script>");
                if(tipo.equals("1")){
                    out.println("<script>function saludos(){location.href ='veteDesplegar.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                    conx.close();
                    sta.close();
                }
                else
                    if(tipo.equals("2")){
                        out.println("<script>function saludos(){location.href ='despVete.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                        conx.close();
                        sta.close();
                    }
                    else
                        if(tipo.equals("3")){
                            out.println("<script>function saludos(){location.href ='despVete.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            conx.close();
                            sta.close();
                        }
                
                
            }
            catch(SQLException error){
                out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='asistente.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
            }
            
        
            } else {
                out.print("<script>location.replace('ini_sesion.jsp');</script>");
            }
        %>
    </body>
</html>
