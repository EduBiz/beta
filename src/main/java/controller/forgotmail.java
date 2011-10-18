/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author radan
 */
  
import com.opensymphony.xwork2.ActionSupport;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import model.User;

    
public class forgotmail extends ActionSupport {

    private static final String SMTP_HOST_NAME = "smtp.gmail.com";
    private static final int SMTP_HOST_PORT = 465;
    private static final String SMTP_AUTH_USER = "8aarkay@gmail.com";
    private static final String SMTP_AUTH_PWD  = "51207205033";
    private String forgetemail;
    private String password;
    private spDAO myDao;
    private String msg;
    
     @Override
    public void validate() {
      
       
        User user=(User) myDao.getDbsession().get(User.class, forgetemail); 
            if(user!=null)
            {
            }
            else{
            addFieldError("forgetemail","sorry Email id Not Available");
            }
    }
    
    
    
    
    @Override
    public String execute() throws Exception{
        
       User user=(User) myDao.getDbsession().get(User.class, forgetemail); 
            if(forgetemail.equals(user.getEmailId()))
            {
      
             
             msg="Your Email Account is :  " + user.getEmailId() + "password is" + user.getPassword();
        
        
        Properties props = new Properties();

        props.put("mail.transport.protocol", "smtps");
        props.put("mail.smtps.host", SMTP_HOST_NAME);
        props.put("mail.smtps.auth", "true");
        // props.put("mail.smtps.quitwait", "false");

        Session mailSession = Session.getDefaultInstance(props);
        mailSession.setDebug(true);
        Transport transport = mailSession.getTransport();

        MimeMessage message = new MimeMessage(mailSession);
        message.setSubject("Password Remember!!!");
        message.setContent(msg,"text/plain");

        message.addRecipient(Message.RecipientType.TO,
             new InternetAddress(forgetemail));

        transport.connect
          (SMTP_HOST_NAME, SMTP_HOST_PORT, SMTP_AUTH_USER, SMTP_AUTH_PWD);

        transport.sendMessage(message,
            message.getRecipients(Message.RecipientType.TO));
        transport.close();
          
                   
           
            return "success";
            }
        else
            {
       return "error";
            }
    }    
    
    
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the myDao
     */
    public spDAO getMyDao() {
        return myDao;
    }

    /**
     * @param myDao the myDao to set
     */
    public void setMyDao(spDAO myDao) {
        this.myDao = myDao;
    }

    /**
     * @return the email
     */
   
    /**
     * @return the msg
     */
    public String getMsg() {
        return msg;
    }

    /**
     * @param msg the msg to set
     */
    public void setMsg(String msg) {
        this.msg = msg;
    }

    /**
     * @return the forgetemail
     */
    public String getForgetemail() {
        return forgetemail;
    }

    /**
     * @param forgetemail the forgetemail to set
     */
    public void setForgetemail(String forgetemail) {
        this.forgetemail = forgetemail;
    }
}

