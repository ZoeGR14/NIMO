package envioCorreos;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class validadoVete {
    private String correoo;

    public String getContras() {
        return contras;
    }

    public void setContras(String contras) {
        this.contras = contras;
    }
    private String contras;

    public String getCorreoo() {
        return correoo;
    }

    public void setCorreoo(String correoo) {
        this.correoo = correoo;
    }
    
    
    public String transfer_to_mail(String Correo){
        Correo = this.correoo;
        String contra_usu = this.contras;
        String correoEnvia = "soporte.emn.corp@gmail.com";
        String contrasenia = "drepvebatvzbarov";
        String mensaje = "¡Felicitaciones!\nTu cédula profesional ha sido validada por uno de nuestro expertos\n Tu registro ha sido modificado, y tu tipo de usuario ahora es 'Veterinario Validado'\nGracias por unirte a los Veterinarios usuarios de NIMO, cada día somos más";
        
        //String recibe = correoo;
        
        Properties objetoPEC = new Properties();
        
        objetoPEC.put("mail.smtp.host", "smtp.gmail.com");
        objetoPEC.setProperty("mail.smtp.starttls.enable", "true");
        objetoPEC.put("mail.smtp.port", "587");
        
        Session sesion = Session.getDefaultInstance(objetoPEC);
        MimeMessage mail = new MimeMessage(sesion);
        
        try {
            mail.setFrom(new InternetAddress(correoEnvia));
            mail.addRecipient(Message.RecipientType.TO, new InternetAddress(Correo));
            mail.setSubject("Estatus de Validación de Veterinario - NIMO");
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