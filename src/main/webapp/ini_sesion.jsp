<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="sweetalert2.all.min.js"></script>
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
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                stat = con.createStatement();
                //stat2 = con.createStatement();

            } catch (SQLException error) {
                out.print(error.toString());
            }
            try {
                String usu = request.getParameter("usuario");
                String contra = request.getParameter("contrasenia");
                res = stat.executeQuery("select*from usuario where usuar='" + usu + "';");

                if (!res.next()) {
                    out.println("<script>Swal.fire({icon: 'error',title: 'Usuario no encontrado',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='inicio_Sesion.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                } else {

                    if (res.getString("pass_us").equals(contra)) {
                        String tipous = res.getString("tipo_us");
                        HttpSession sesion = request.getSession();
                        sesion.setAttribute("user", usu);
                        sesion.setAttribute("tipo_usuario", tipous);
                        
                        if (tipous.equals("4") || tipous.equals("5") || tipous.equals("7") || tipous.equals("8")) {
                            out.println("<script>Swal.fire('Trabajador detectado, redirigiendo al Login de trabajadores','','success')</script>");
                            response.sendRedirect("inicioSPersonal.jsp");
                        } else
                            response.sendRedirect("inicio.jsp");
                    } else {
                        out.println("<script>Swal.fire({icon: 'error',title: 'Contraseña incorrecta',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='inicio_Sesion.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                }
            } catch (SQLException error) {
                out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                out.println("<script>function saludos(){location.href ='registro.jsp';}</script>");
                out.println("<script>setTimeout(saludos, 1500);</script>");
            }
        %>
    </body>
</html>

