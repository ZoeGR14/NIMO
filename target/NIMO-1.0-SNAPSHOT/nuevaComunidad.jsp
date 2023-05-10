<%@page import="java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear nueva COMUNIDAD</title>
        <link rel="stylesheet" href="loginn.css">
    </head>
    <body>
        <br>
                <div class="login-card-container">
                    <div class="login-card">
                        <div class="login-card-header">
                            <h1>Crea una nueva comunidad</h1>
                        </div>
                        <div class="login-card-form">
                            <form action="" class="login-card-form">
                                <div class="form-item">
                                    Nombre de usuario:<input type="text" placeholder="Usuario" name="txtusuario_comu" required autofocus><br><br>
                                   
                                </div>
                                <div class="form-item">
                                    Nombre de la comunidad:<input type="text" placeholder="Comunidad" name="txtcomunidad"><br><br>
                                </div>
                                <div class="form-item">
                                    Descripción:<input type="text" placeholder="Descripcion_comu" name="txtdescripcionComu"><br><br>
                                </div>
                                <div class="form-item"></div>
                                <button type="submit" name="btnComu" value="Crear Comunidad">Crear comunidad</button>
                                <br><br>
                            </form>
                        </div>
                    </div>
                </div>
                <%
                    String cad;
                    if (request.getParameter("btnComu") != null) {
                        String usuario = request.getParameter("txtusuario_comu");
                        String comunidad_name = request.getParameter("txtcomunidad");
                        String descripcion_comu = request.getParameter("txtdescripcionComu");
                        
                        
                        Connection cnx = null;
                        ResultSet rs = null;
                        Statement sta = null;
                        
                        
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            cnx = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false", "root", "n0m3l0");
                            sta = cnx.createStatement();
                            rs=sta.executeQuery("select*from usuario where usuar='"+usuario+"';");
                            if(!rs.next()){
                            out.println("<script>Swal.fire({icon: 'error',title: 'Usuario no encontrado',text: 'Inténtelo de nuevo'});</script>");
                            out.println("<script>function saludos(){location.href ='nuevaComunidad.jsp';}</script>");                          
                            }
                            else{
                            cad = "insert into comunidad(usuar,comunidad_name,descripcion_comu) values ('" + usuario + "','" + comunidad_name + "','"+descripcion_comu+"')";
                            sta.executeUpdate(cad);
                            request.getRequestDispatcher("listadoComunidades.jsp").forward(request, response);
                            }                            
                        } catch (SQLException error) {
                            out.print(error.toString());
                        }         
                    }
                %>
            </body>
</html>