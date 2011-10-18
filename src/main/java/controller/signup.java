/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Random;
import model.*;
import model.TempUser;
import org.hibernate.HibernateException;


/**
 *
 * @author Administrator
 */
public class signup extends ActionSupport {

    private static final String SMTP_HOST_NAME = "smtp.gmail.com";
    private static final int SMTP_HOST_PORT = 465;
    private static final String SMTP_AUTH_USER = "8aarkay@gmail.com";
    private static final String SMTP_AUTH_PWD  = "51207205033";
     private String uname;
     private String email;
     private String pwd;
     private String confirmpwd;
     private spDAO myDao;
     
       private int confcode;
     private static userEnum ut; 
     
     
     private String msg;
     @Override
  public void validate() {
      
       
   User user=(User)myDao.getDbsession().get(User.class,email);
        if(user != null)
            addFieldError("email","sorry Email id Already Taken");
        
    }
    
     @Override
    public String execute() throws Exception {
    
        try{
               
         Random rand = new Random();
       
            setConfcode(rand.nextInt());
        
         
           if(pwd.equals(getConfirmpwd()))
           {
       TempUser tuser = new TempUser(getConfcode(),email,pwd,ut.NotRegistered.getUserType(),uname);
           myDao.getDbsession().save(tuser);
            //Map session =ActionContext.getContext().getSession();
           // session.put("User",email);
      msg="Hi"       +uname+      "Welcome to Adzappy :"
              +"                                               "
            +"Your Registered login  mail id is:" + email + "    "
              +"                         "
              + "   Please click th following link to activate your account  "
              +"                                       "
              + "http://localhost:8080/activationAccount.action?email="+email+"&confcode="+getConfcode()
              +"                                                    "
              +" Thanks & Regards     "
              +" Adzappy Team";
       
           
             Properties props = new Properties();

        props.put("mail.transport.protocol", "smtps");
        props.put("mail.smtps.host", SMTP_HOST_NAME);
        props.put("mail.smtps.auth", "true");
        // props.put("mail.smtps.quitwait", "false");

        Session mailSession = Session.getDefaultInstance(props);
        mailSession.setDebug(true);
        Transport transport = mailSession.getTransport();

        MimeMessage message = new MimeMessage(mailSession);
        message.setSubject("Welcome to Adzappy");
        message.setContent(msg,"text/plain");

        message.addRecipient(Message.RecipientType.TO,
             new InternetAddress(email));

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
     catch(HibernateException e)
     {
     e.getMessage();
     }
      return "success";
     
     }
    /**
     * @return the uname
     */
    public String getUname() {
        return uname;
    }

    /**
     * @param uname the uname to set
     */
    public void setUname(String uname) {
        this.uname = uname;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the pwd
     */
    public String getPwd() {
        return pwd;
    }

    /**
     * @param pwd the pwd to set
     */
    public void setPwd(String pwd) {
        this.pwd = pwd;
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
     * @return the confirmpwd
     */
    public String getConfirmpwd() {
        return confirmpwd;
    }

    /**
     * @param confirmpwd the confirmpwd to set
     */
    public void setConfirmpwd(String confirmpwd) {
        this.confirmpwd = confirmpwd;
    }

    /**
     * @return the confcode
     */
    public int getConfcode() {
        return confcode;
    }

    /**
     * @param confcode the confcode to set
     */
    public void setConfcode(int confcode) {
        this.confcode = confcode;
    }

      
}
