<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="sweetalert2.all.min.js"></script>
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
        <%
            Connection con = null;
            Statement stat = null;
            //Statement stat2 =null;

            ResultSet res = null;
            //ResultSet res2=null;

            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                stat = con.createStatement();
                //stat2 = con.createStatement();

            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                String usu = request.getParameter("usuario");
                String contra = request.getParameter("contrasenia");
                res = stat.executeQuery("select*from personal where trabajador='" + usu + "';");

                if (!res.next()) {
                    out.println("<script>Swal.fire({icon: 'error',title: 'Usuario no encontrado',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='inicioSPersonal.html';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                } else {

                    if (res.getString("pass_tra").equals(contra)) {
                        String tipotra = res.getString("tipo_tra");
                        HttpSession sesion = request.getSession();
                        sesion.setAttribute("tipo_usuario", tipotra);
                        if (tipotra.equals("1")) {
                            sesion.setAttribute("user", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Asistente','success')</script>");
                            out.println("<script>function saludos(){location.href ='asistente.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                        } else if (tipotra.equals("2")) {
                            sesion.setAttribute("gerenteS", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Gerente de Soporte','success')</script>");
                            out.println("<script>function saludos(){location.href ='/NIMO/ControlerZ';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                        } else if (tipotra.equals("3")) {
                            sesion.setAttribute("gerenteM", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Gerente de Mantenimiento','success')</script>");
                            out.println("<script>function saludos(){location.href ='/NIMO/ControlerZz';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("reportesMantenimiento.jsp");
                        } else if (tipotra.equals("4")) {
                            sesion.setAttribute("ingeS", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Ingeniero de Soporte','success')</script>");
                            out.println("<script>function saludos(){location.href ='/NIMO/ControlerJ?tipo=normal';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("reportess.jsp");
                        } else if (tipotra.equals("5")) {
                            sesion.setAttribute("ingeM", usu);
                            System.out.println(usu);
                            out.println("<script>Swal.fire('Bienvenido','Ingeniero de Mantenimiento','success')</script>");
                            out.println("<script>function saludos(){location.href ='/NIMO/ControlerJ?tipo=normalM';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("verRepMan.jsp");
                        } else if (tipotra.equals("6")) {
                            System.out.println(usu);
                            sesion.setAttribute("editor", usu);
                            out.println("<script>Swal.fire('Bienvenido','Editor','success')</script>");
                            out.println("<script>function saludos(){location.href ='listado.jsp';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                            //response.sendRedirect("editor.jsp");
                        } else if (tipotra.equals("0")) {
                            out.println("<script>Swal.fire({icon: 'error',title: 'Usted no es parte del equipo de NIMO',text: 'Por favor, inicie sesión como cliente'});</script>");
                            out.println("<script>function saludos(){location.href ='inicioSPersonal.html';}</script>");
                            out.println("<script>setTimeout(saludos, 1500);</script>");
                        }

                    } else {
                        out.println("<script>Swal.fire({icon: 'error',title: 'Contraseña incorrecta',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='inicioSPersonal.html';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                }
            } catch (SQLException error) {
                out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                out.println("<script>function saludos(){location.href ='inicioSPersonal.html';}</script>");
                out.println("<script>setTimeout(saludos, 1500);</script>");
            }
        %>
    </body>
</html>
