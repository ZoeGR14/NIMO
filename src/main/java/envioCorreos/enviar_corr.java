package envioCorreos;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class enviar_corr {
    private String correi;

    public String getCorrei() {
        return correi;
    }

    public void setCorrei(String correi) {
        this.correi = correi;
    }

    public static void transfer_to_mail(String Correo){
        String correoEnvia = "contreras.delgadillo.lizeth@gmail.com";
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
            mail.addRecipient(Message.RecipientType.TO, new InternetAddress(Correo));
            mail.setSubject("Prueba: envio de correos - java");
            mail.setText(mensaje);
            
            Transport transporte = sesion.getTransport("smtp");
            transporte.connect(correoEnvia,contrasenia);
            transporte.sendMessage(mail, mail.getRecipients(Message.RecipientType.TO));
            transporte.close();
            
            
        } 
        
        catch (Exception ex) {
            System.out.println(ex);
        }
    }
    
    public String transfer_mail(String Correo){
        String se_pudo ="";
        String correoEnvia = "contreras.delgadillo.lizeth@gmail.com";
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
            mail.addRecipient(Message.RecipientType.TO, new InternetAddress(Correo));
            mail.setSubject("Prueba: envio de correos - java");
            mail.setText(mensaje);
            
            Transport transporte = sesion.getTransport("smtp");
            transporte.connect(correoEnvia,contrasenia);
            transporte.sendMessage(mail, mail.getRecipients(Message.RecipientType.TO));
            transporte.close();
            se_pudo = "Correo enviado correctamente";
            
        } 
        
        catch (Exception ex) {
            System.out.println(ex);
            se_pudo = "No se pudo mandar el correo";
        }
        return se_pudo;
    }
}


