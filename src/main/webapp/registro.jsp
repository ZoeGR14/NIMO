<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %><html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registro</title>
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
            <a href="index.jsp" class="enlace">
                <img src="imagenes/logo_nimo.png" alt="" class="logo">
            </a>
            <ul alt="" class="bot_acc">
                <li><a href="inicio_Sesion.jsp" class="inis">Inicio de Sesión</a></li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="registro.html" class="regis">Registro</a></li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="#" class="admins">¿Eres un administrador?</a></li>
            </ul>
        </nav>

        <%
                Connection conec= null;
                PreparedStatement pstat =null;
                Statement sta =null;
                ResultSet results=null;
                Connection conec2= null;
                PreparedStatement pstat2 =null;
                Statement sta2 =null;
                ResultSet results2=null;
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    conec  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NIMOBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    pstat = conec.prepareStatement("select * from usuario where usuar=?");
                    String usu=request.getParameter("usu");
                    //String contras=request.getParameter("contrasenia");
                    pstat.setString(1, usu);
                    results=pstat.executeQuery();
                    if (results.next()){
                        out.println("<script>Swal.fire({icon: 'error',title: 'El usuario ya existe',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                        pstat.close();
                    }
                    else{
                        try{
                            Class.forName("com.mysql.jdbc.Driver");
                            conec2  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NIMOBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                            pstat2 = conec2.prepareStatement("select * from usuario where mail_us=?");
                            String correito=request.getParameter("correo");
                            pstat2.setString(1, correito);
                            results2=pstat2.executeQuery();
                            if (results2.next()){
                                out.println("<script>Swal.fire({icon: 'error',title: 'El correo ya ha sido registrado con otra cuenta',text: 'Inténtelo de nuevo'});</script>");
                                out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                                out.println("<script>setTimeout(saludos, 1500);</script>");
                                pstat.close();
                            }
                            else{
                                String nom = request.getParameter("nombre");
                                nom = nom.replaceAll("\\\\", "\\\\\\\\'");
                                nom = nom.replaceAll("\\n", "\\\\n'");
                                nom = nom.replaceAll("\\r", "\\\\r'");
                                nom = nom.replaceAll("\\t", "\\\\t'");
                                nom = nom.replaceAll("\\n", "\\\\n'");
                                nom = nom.replaceAll("'", "\\\\'");
                                String apP  = request.getParameter("ap_pat");
                                apP = apP.replaceAll("\\\\", "\\\\\\\\'");
                                apP = apP.replaceAll("\\n", "\\\\n'");
                                apP = apP.replaceAll("\\r", "\\\\r'");
                                apP = apP.replaceAll("\\t", "\\\\t'");
                                apP = apP.replaceAll("\\n", "\\\\n'");
                                apP = apP.replaceAll("'", "\\\\'");
                                String apM = request.getParameter("ap_mat");
                                apM = apM.replaceAll("\\\\", "\\\\\\\\'");
                                apM = apM.replaceAll("\\n", "\\\\n'");
                                apM = apM.replaceAll("\\r", "\\\\r'");
                                apM = apM.replaceAll("\\t", "\\\\t'");
                                apM = apM.replaceAll("\\n", "\\\\n'");
                                apM = apM.replaceAll("'", "\\\\'");
                                String cor = request.getParameter("correo");
                                cor = cor.replaceAll("\\\\", "\\\\\\\\'");
                                cor = cor.replaceAll("\\n", "\\\\n'");
                                cor = cor.replaceAll("\\r", "\\\\r'");
                                cor = cor.replaceAll("\\t", "\\\\t'");
                                cor = cor.replaceAll("\\n", "\\\\n'");
                                cor = cor.replaceAll("'", "\\\\'");
                                String tel = request.getParameter("telef");
                                tel = tel.replaceAll("\\\\", "\\\\\\\\'");
                                tel = tel.replaceAll("\\n", "\\\\n'");
                                tel = tel.replaceAll("\\r", "\\\\r'");
                                tel = tel.replaceAll("\\t", "\\\\t'");
                                tel = tel.replaceAll("\\n", "\\\\n'");
                                tel = tel.replaceAll("'", "\\\\'");
                                String naci = request.getParameter("f_nac");
                                naci = naci.replaceAll("\\\\", "\\\\\\\\'");
                                naci = naci.replaceAll("\\n", "\\\\n'");
                                naci = naci.replaceAll("\\r", "\\\\r'");
                                naci = naci.replaceAll("\\t", "\\\\t'");
                                naci = naci.replaceAll("\\n", "\\\\n'");
                                naci = naci.replaceAll("'", "\\\\'");
                                String sex = request.getParameter("gen");
                                sex = sex.replaceAll("\\\\", "\\\\\\\\'");
                                sex = sex.replaceAll("\\n", "\\\\n'");
                                sex = sex.replaceAll("\\r", "\\\\r'");
                                sex = sex.replaceAll("\\t", "\\\\t'");
                                sex = sex.replaceAll("\\n", "\\\\n'");
                                sex = sex.replaceAll("'", "\\\\'");
                                String tipo = request.getParameter("tipi");
                                tipo = tipo.replaceAll("\\\\", "\\\\\\\\'");
                                tipo = tipo.replaceAll("\\n", "\\\\n'");
                                tipo = tipo.replaceAll("\\r", "\\\\r'");
                                tipo = tipo.replaceAll("\\t", "\\\\t'");
                                tipo = tipo.replaceAll("\\n", "\\\\n'");
                                tipo = tipo.replaceAll("'", "\\\\'");
                                int tipe = Integer.parseInt(tipo);
                                String usuar = request.getParameter("usu"); 
                                usuar = usuar.replaceAll("\\\\", "\\\\\\\\'");
                                usuar = usuar.replaceAll("\\n", "\\\\n'");
                                usuar = usuar.replaceAll("\\r", "\\\\r'");
                                usuar = usuar.replaceAll("\\t", "\\\\t'");
                                usuar = usuar.replaceAll("\\n", "\\\\n'");
                                usuar = usuar.replaceAll("'", "\\\\'");
                                String con = request.getParameter("contrasenia");
                                con = con.replaceAll("\\\\", "\\\\\\\\'");
                                con = con.replaceAll("\\n", "\\\\n'");
                                con = con.replaceAll("\\r", "\\\\r'");
                                con = con.replaceAll("\\t", "\\\\t'");
                                con = con.replaceAll("\\n", "\\\\n'");
                                con = con.replaceAll("'", "\\\\'");
                                
                                try{
                                    sta = conec2.createStatement();
                            
                                sta.executeUpdate("insert into usuario values('"+usuar+"','"+tipe+"','"+tel+"','"+sex+"', '"+naci+"', '"+apP+"','"+apM+"','"+nom+"','"+con+"','"+cor+"')");
                                if(tipe == 1){
                                    out.println("<script>Swal.fire('Registro dado de alta','','success')</script>");
                                    out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                                    out.println("<script>setTimeout(saludos, 1500);</script>");
                                    conec.close();
                                    sta.close();
                                }
                                else
                                    if(tipe == 3){
                                        out.println("<script>Swal.fire('Registro dado de alta')</script>");
                                        out.println("<br><br>");
                                        out.println("<div class='login-card-container'>");
                                        out.println("<div class='login-card'>");
                                        out.println("<div class='login-card-logo'>");
                                        out.println("<img src='imagenes/logo_nimo.png' alt='logo'>");
                                        out.println("</div>");
                                        out.println("<div class='login-card-header'>");
                                        out.println("<h1>Registro aún en proceso</h1>");
                                        out.println("<div>Por favor, complete el siguiente formulario para completar su registro como veterinario</div>");
                                        out.println("</div>");
                                        out.println("<form name='alta_vet' action='registro_vete.jsp' method='post' class='login-card-form'>");
                                        out.println("<input type='hidden' name='nusuar' value='"+usuar+"'><br><br>"); 
                                        out.println("<button type='submit' name='registro' id='boton' value='Siguiente'>Siguiente</button>");
                                        out.println("</form>");
                                        out.println("</div>");
                                        out.println("</div>");

                                        conec.close();
                                        sta.close();
                                    }
                                }
                                catch(SQLException error){
                                    out.println("<script>Swal.fire({icon: 'error',title: 'Algo salió mal',text: 'Inténtelo de nuevo'});</script>");
                                    out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                                    out.println("<script>setTimeout(saludos, 1500);</script>");
                                }
                            }
                        } 
                        catch(SQLException error){
                                out.println("<script>Swal({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                                out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                                out.println("<script>setTimeout(saludos, 1000);</script>");
                        }
                    }
                }
                catch(SQLException error){
                    out.println("<script>Swal({icon: 'error',title: 'Ocurrió un error',text: 'Inténtelo de nuevo'});</script>");
                    out.println("<script>function saludos(){location.href ='registro.html';}</script>");
                    out.println("<script>setTimeout(saludos, 1000);</script>");
                }
                
            %>        
    </body>
</html>
