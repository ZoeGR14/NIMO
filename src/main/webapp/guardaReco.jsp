<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
                <title>Guardando Recordatorio</title>
                <style>@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap');
            @import url('https://fonts.googleapis.com/css2?family=Archivo+Black&display=swap');
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
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;
            
            if(sesion.getAttribute("user")!=null && sesion.getAttribute("tipo_usuario")!=null){
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();
            
        
                Connection conx= null;
                                                Statement sta =null;
                                                Statement sta2 =null;
                                                ResultSet res = null;
                                                ResultSet res2 = null;
                                                
                                                try{
                                                        Class.forName("com.mysql.jdbc.Driver");
                                                        conx  = DriverManager.getConnection("jdbc:mysql://mysql-db:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                                                        sta = conx.createStatement();
                                                        sta2 = conx.createStatement();

                                                    }
                                                    catch(SQLException error){
                                                        out.print(error.toString());
                                                    }   
                                                    try{
                                                    String clien = request.getParameter("client");
                                                    String descR = request.getParameter("motive");
                                                    String fechaR = request.getParameter("f_rec");
                                
                                                        res = sta.executeQuery("select*from veterinario where usuar='"+usuario+"';");
                                                        if(!res.next()){
                        out.println("<script>Swal.fire({icon: 'error',title: 'No es veterinario',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='agregarecordatorio.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                                                        else{
                                                            try{
                                                            String vete = res.getString(1);
                                                            int cedu = Integer.parseInt(vete);
                                                            sta.executeUpdate("insert into recordatorios values(null,'"+clien+"','"+descR+"','"+fechaR+"');");
                                                            sta.executeUpdate("insert into recordatorio_vete values(null,'"+cedu+"');");
                                                  out.println("<script>Swal.fire('Recordatorio guardado exitosamente','','success')</script>");
                                out.println("<script>function saludos(){location.href ='cliente_vete.jsp';}</script>");
                                out.println("<script>setTimeout(saludos, 1500);</script>");
                                                  }
                                                  catch(SQLException error){
                                                        out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='cliente_vete.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                                                    }

                                                        }

                                                        conx.close();
                                                        sta.close();
                                                        sta2.close();
                                                    }
                                                    catch(SQLException error){
                                                        out.println("<script>Swal.fire({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='cliente_vete.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                                                    }
        }
        else{
            out.print("<script>location.replace('ini_sesion.jsp');</script>");
        }
    %>
    </body>
</html>
