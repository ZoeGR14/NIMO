package envioCorreos;

import java.util.Properties;
import javax.mail.Message;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.swing.JOptionPane;

public class ola_env {
    public static void main(String[] args) {
        String mail = JOptionPane.showInputDialog("Digite el correo al cual desea enviar el mensaje");
        int x = JOptionPane.showConfirmDialog(null, "Desea enviar un correo","Enviando correo...",JOptionPane.PLAIN_MESSAGE);
        if (x==0) {
            //transfer_to_email(mail);
            transfer_to_mail(mail);
            JOptionPane.showMessageDialog(null, "Que tenga un buen día");
        }
        else{
            JOptionPane.showMessageDialog(null, "Gracias por utilizar la aplicación");
        }
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
            
            JOptionPane.showMessageDialog(null, "El correo se envio correctamente");
        } 
        
        catch (Exception ex) {
            JOptionPane.showMessageDialog(null, "Error de envio de correo...\n" + ex);
        }
    }
    
}