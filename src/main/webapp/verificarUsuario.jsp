<%@page import="java.sql.*,java.io.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reportes</title>
        <script src="sweetalert2.all.min.js"></script>
        <link rel="stylesheet" href="loginn.css">
    </head>
    <body>
        <%
            HttpSession sesion = request.getSession();
            String usuario;
            String tipo;
            
            String user=request.getParameter("nusuar");
            
            if (sesion.getAttribute("user") != null && sesion.getAttribute("tipo_usuario") != null) {
                usuario = sesion.getAttribute("user").toString();
                tipo = sesion.getAttribute("tipo_usuario").toString();

                   
                Connection con= null;
                Statement stat =null;
                Statement stat2 =null;
                
                
                ResultSet res=null;
                ResultSet res2=null;
                

                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con  = DriverManager.getConnection("jdbc:mysql://localhost:3308/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    stat = con.createStatement();
                    stat2 = con.createStatement();
                    
                }
                catch(SQLException error){
                    out.print(error.toString());
                }
                try{
                    String usu=request.getParameter("usuario");
                    
                    res=stat.executeQuery("select*from usuario where usuar='"+usu+"';");
                    
                    if(!res.next()){
                        out.println("<script>Swal.fire({icon: 'error',title: 'Usuario no encontrado',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='asistente.jsp';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                    
                    else{
                            out.println("<script>Swal.fire('Usuario encontrado','Continuando al levantamiento de reporte','success')</script>");
                            
                    %>
                    
                            <br>
        
       <div class="login-card-container">
            <div class="login-card">
                <div class="login-card-logo">
                    <img src="imagenes/reporte.png" alt="logo">
                </div>
                <div class="login-card-header">
                    <h1>Ingreso de reportes</h1>
                </div>
                <form action="registroReporte.jsp" method="post" name="reportes" class="login-card-form">
                    <div class="form-item">
                        <input type="text" placeholder="Descripción" name="description" maxlength="110" title="No exceda el límite de caracteres" required autofocus>
                    </div>
                    <div class="form-item">
                        <p style="display: inline;">Estatus:&nbsp;&nbsp;</p><input type="text" placeholder="Estatus" name="status" value="Abierto" readonly="true" style="display: inline; width: 35%;">
                    </div>
                    <div class="form-item">
                        <p style="display: inline;">Solución:&nbsp;&nbsp;</p><input type="text" placeholder="Solución" name="solution" value="" readonly="true" style="display: inline; width: 35%;">
                    </div>
                    <div class="form-item">
                        <p style="display: inline;">Asistente que registra:&nbsp;&nbsp;</p><input type="text" placeholder="Asistente" name="assistant" value="<%out.println(usuario);%>" style="display: inline; width: 35%;" required readonly="true">
                    </div>
                    <div class="form-item">
                        <p style="display: inline;">Cliente con el problema:&nbsp;&nbsp;</p><input type="text" name="user" value="<%out.println(usu);%>" readonly="true" style="display: inline; width: 30%;">
                    </div>
                    <button type="submit" name="rReporte" id="boton" value="guardar">Guardar Reporte</button>
                </form>
            </div>
       </div>
                    
            <%        
                    }
            }
                
                catch(SQLException error){
                    out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='asistente.jsp';}</script>");
                    out.println("<script>setTimeout(saludos, 1500);</script>");
                }
            }
            else {
                out.print("<script>location.replace('inicioSPersonal.html');</script>");
            }
             %>
    </body>
</html>