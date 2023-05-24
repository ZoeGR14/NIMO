<%@page import="envioCorreos.*"%>
<%@page import="java.sql.*,java.io.*" %>
<%@page import="java.util.Properties" %>
<%@page import="javax.swing.JOptionPane" %>
<%@page import="javax.activation.*" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="envioCorreos.enviar_corr"%>
<!DOCTYPE html>
<html>
    <head><link rel="icon" href="imagenes/logo_nimo.ico">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Olvido Contraseña</title>
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
            <ul class="bot_acc">
                <li><a href="inicio_Sesion.html" class="inis">Inicio de Sesión</a></li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="registro.html" class="regis">Registro</a></li>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <li><a href="#" class="admins">¿Eres un administrador?</a></li>
            </ul>
        </nav>
        <br><br>
        
        <%            
                Connection con= null;
                Statement stat =null;

                
                ResultSet res=null;

                
                try{
                    Class.forName("com.mysql.jdbc.Driver");
                    con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/NimoBase?autoReconnect=true&useSSL=false","root","n0m3l0");                               
                    stat = con.createStatement();

                }
                catch(SQLException error){
                    out.print(error.toString());
                }
                try{
                    String emaill=request.getParameter("mailll");
                    res=stat.executeQuery("select*from usuario where mail_us='"+emaill+"';");
                    if(!res.next()){
                        out.println("<script>Swal.fire({icon: 'error',title: 'No hay usuarios registrados a ese correo',text: 'Inténtelo de nuevo'});</script>");
                        out.println("<script>function saludos(){location.href ='inicio_Sesion.html';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                    }
                    else{
                        String contt = res.getString("pass_us");
                    enviaaa sendd = new enviaaa();
                    sendd.setCorreoo(emaill);
                    sendd.setContras(contt);
                    sendd.transfer_to_mail(emaill);
                        /*se_envia sends = new se_envia();
                        sends.setCorreoo(emaill);
                        sends.transfer_to_mail(emaill);*/
                        out.println("<script>Swal.fire('El correo de recuperación ha sido enviado','','success')</script>");
                        out.println("<script>function saludos(){location.href ='inicio_Sesion.html';}</script>");
                        out.println("<script>setTimeout(saludos, 1500);</script>");
                        /*String correoEnvia = "contreras.delgadillo.lizeth@gmail.com";
                        String contrasenia = "eyozilipbefccxka";
                        String mensaje = "Holaa\nEsta es una prueba de envio de correos automatizados¿ con NetBeans c:";

                        Properties objetoPEC = new Properties();

                        objetoPEC.put("mail.smtp.host", "smtp.gmail.com");
                        objetoPEC.setProperty("mail.smtp.starttls.enable", "true");
                        objetoPEC.put("mail.smtp.port", "587");

                        Session sesion = Session.getDefaultInstance(objetoPEC);
                        MimeMessage mail = new MimeMessage(sesion);

                        try {
                            mail.setFrom(new InternetAddress(correoEnvia));
                            mail.addRecipient(Message.RecipientType.TO, new InternetAddress(request.getParameter("mailll")));
                            mail.setSubject("Prueba: envio de correos - java");
                            mail.setText(mensaje);

                            Transport transporte = sesion.getTransport("smtp");
                            transporte.connect(correoEnvia,contrasenia);
                            transporte.sendMessage(mail, mail.getRecipients(Message.RecipientType.TO));
                            transporte.close();

                            out.println("<script> alert ('El correo de recuperación de contraseña, ha sido enviado')</script>");
                        } 

                        catch (Exception ex) {
                            out.println("<script> alert ('"+ex.toString()+"')</script>");
                        }
                    
                    String co=request.getParameter("mailll");
                    setget_corre setttt = new setget_corre();
                    setttt.setCorrei(request.getParameter("mailll"));
                    setttt.Manda();
                    enviar_corr envvv = new enviar_corr();
                    envvv.setCorrei(request.getParameter("mailll"));
                    envvv.transfer_mail(co);*/
                        
                    }
                            
                                                    
                }
                
                catch(SQLException error){
                    out.print(error.toString());
                }
             %>
    </body>
</html>
