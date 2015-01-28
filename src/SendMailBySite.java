import java.util.Properties;  
import javax.mail.*;  
import javax.mail.internet.*;  
  
public class SendMailBySite {  
 public static void main(String[] args) {  
  
  //String host="mail.google.com";  
  final String user="simplesellings@gmail.com";//change accordingly  
  final String password="adonai10";//change accordingly  
    
  String to="srinadh.vemuri@vijayinfoart.com";//change accordingly  
  
   //Get the session object  
   Properties props = new Properties();  
   props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.socketFactory.port", "465");
	props.put("mail.smtp.socketFactory.class",
			"javax.net.ssl.SSLSocketFactory");
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.port", "465"); 
     
   Session session = Session.getDefaultInstance(props,  
    new javax.mail.Authenticator() {  
      protected PasswordAuthentication getPasswordAuthentication() {  
    return new PasswordAuthentication(user,password);  
      }  
    });  
  
   //Compose the message  
    try {  
     MimeMessage message = new MimeMessage(session);  
     message.setFrom(new InternetAddress(user));  
     message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
     message.setSubject("Offer With promotion");
     message.setContent("<h1 style='color:red;'>Hi dear Srinadh</h1></br><img src='http://img.b8cdn.com/images/uploads/user_photos/28/17231328_20131009050329.jpg'/> </br>you have got your promotion as <b>Project Manager</b> in Kaskas Inc..</br><p>we will contact you shortly... then pant up..!</p>",
             "text/html" );
       
    //send the message  
     Transport.send(message);  
  
     System.out.println("message sent successfully...");  
   
     } catch (MessagingException e) {e.printStackTrace();}  
 }  
} 