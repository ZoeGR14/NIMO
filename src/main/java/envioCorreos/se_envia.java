package envioCorreos;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class se_envia {
    
    private String correoo;

    public String getCorreoo() {
        return correoo;
    }

    public void setCorreoo(String correoo) {
        this.correoo = correoo;
    }
    
    public String transfer_to_mail(String Correo){
        String correoEnvia = "contreras.delgadillo.lizeth@gmail.com";
        String contrasenia = "eyozilipbefccxka";
        String mensaje = "Holaa\nEsta es una prueba de envio de correos automatizados¿ con NetBeans c:";
        
        //String recibe = correoo;
        
        Properties objetoPEC = new Properties();
        
        objetoPEC.put("mail.smtp.host", "smtp.gmail.com");
        objetoPEC.setProperty("mail.smtp.starttls.enable", "true");
        objetoPEC.put("mail.smtp.port", "587");
        
        Session sesion = Session.getDefaultInstance(objetoPEC);
        MimeMessage mail = new MimeMessage(sesion);
        
        try {
            mail.setFrom(new InternetAddress(correoEnvia));
            mail.addRecipient(Message.RecipientType.TO, new InternetAddress(this.correoo));
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
        return this.correoo;
    }
    
}
