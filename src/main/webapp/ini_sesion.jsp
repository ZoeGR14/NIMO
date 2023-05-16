<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="sweetalert2.all.min.js"></script>
    </head>
    <body>
        <%            
                Connection con= null;
                Statement stat =null;
                //Statement stat2 =null;
                
                
                ResultSet res=null;
                //ResultSet res2=null;
                

                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    stat = con.createStatement();
                    //stat2 = con.createStatement();
                    
                }
                catch(SQLException error){
                    out.print(error.toString());
                }
                try{
                    String usu=request.getParameter("usuario");
                    String contra=request.getParameter("contrasenia");
                    res=stat.executeQuery("select*from usuario where usuar='"+usu+"';");
                    
                    if(!res.next()){
                        out.println("<script>Swal.fire({icon: 'error',title: 'Usuario no encontrado',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='inicio_Sesion.html';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                    else{
                          
                        if(res.getString("pass_us").equals(contra)){
                        String tipous = res.getString("tipo_us");
                            HttpSession sesion = request.getSession();
                            sesion.setAttribute("user", usu);
                            sesion.setAttribute("tipo_usuario", tipous);
                            if(tipous.equals("1")){
                                out.println("<script>Swal.fire('Bienvendio','','success')</script>");
                                response.sendRedirect("inicio.jsp");
                            }
                            else
                                if(tipous.equals("2")){
                                    out.println("<script>Swal.fire('Bienvendio','','success')</script>");
                                    response.sendRedirect("inicio_vete.jsp");
                                }
                            else
                                if(tipous.equals("4")){
                                    out.println("<script>Swal.fire('Administrador detectado, redirigiendo al Log In indicado','','success')</script>");
                                    response.sendRedirect("inicioSPersonal.html");
                                }
                        }
                        else{
                            out.println("<script>Swal.fire({icon: 'error',title: 'Contraseña incorrecta',text: 'Inténtelo de nuevo'});</script>");
                            out.println("<script>function saludos(){location.href ='inicio_Sesion.html';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                        }
            }
            }
                
                catch(SQLException error){
                    out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                }
             %>
    </body>
</html>
