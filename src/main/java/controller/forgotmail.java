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

    
    private String forgetemail;
    private String password;
    private spDAO myDao;
    private Emailfunction sendMail;
     private String subject;
     private String content;
    
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
      
             subject="Your Adzappy Password";
             content="Your Email Account is \t:  " + user.getEmailId() + "\npassword is\t" + user.getPassword()+"\n  " +"\nThanks & Regards \n    "
                 +" Adzappy Team\n";
        
            getSendMail().test(forgetemail, getSubject(), getContent());
           
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

    /**
     * @return the sendMail
     */
    public Emailfunction getSendMail() {
        return sendMail;
    }

    /**
     * @param sendMail the sendMail to set
     */
    public void setSendMail(Emailfunction sendMail) {
        this.sendMail = sendMail;
    }

    /**
     * @return the subject
     */
    public String getSubject() {
        return subject;
    }

    /**
     * @param subject the subject to set
     */
    public void setSubject(String subject) {
        this.subject = subject;
    }

    /**
     * @return the content
     */
    public String getContent() {
        return content;
    }

    /**
     * @param content the content to set
     */
    public void setContent(String content) {
        this.content = content;
    }
}

