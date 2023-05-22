<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro Reportes</title>
        <script src="sweetalert2.all.min.js"></script>
        <style>
            body{
                background: url('imagenes/fondohuehue.png') no-repeat;
            }
        </style>
    </head>
    <body>
        <%
            request.setCharacterEncoding("UTF-8");
            String desc = request.getParameter("description");
            String estatus  = request.getParameter("status");
            String solucion = request.getParameter("solution");
            String escribe = request.getParameter("assistant");
            String client = request.getParameter("user");

            
            Connection conx = null;
            Statement sta = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conx  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                 

                sta = conx.createStatement();
            }
            catch (SQLException error){
                out.print(error.toString());
            }
            try{
                sta.executeUpdate("insert into reportes (id_reporte,descripcion,estatus,solucion) values(null,'"+desc+"','"+estatus+"','"+solucion+"');");
                sta.executeUpdate("insert into trabajador_reporte values(null,'"+client+"');");
                sta.executeUpdate("insert into escritor values(null,'"+escribe+"');");
                sta.executeUpdate("insert into cerrado_FAQ values(null, 0)");
                out.println("<script>Swal.fire('Registro guardado exitosamente','Hasta luego','success')</script>");
                out.println("<script>function saludos(){location.href ='asistente.jsp';}</script>");
                out.println("<script>setTimeout(saludos, 1500);</script>");
                conx.close();
                sta.close();
            }
            catch(SQLException error){
                out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='asistente.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
            }
                
        %>    
    </body>
</html>