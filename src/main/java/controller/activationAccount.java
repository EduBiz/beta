/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import model.*;
import javax.mail.*;
import javax.mail.internet.*;
import java.util.Properties;
import model.UserTransaction;
import org.hibernate.HibernateException;

/**
 *
 * @author Administrator
 */
public class activationAccount extends ActionSupport {

    
    
     private String uname;
     private String email;
     private String pwd;
     private spDAO myDao;
     private int confcode;
     private static userEnum ut; 
     User user;
    private Emailfunction sendMail;
     private String subject;
     private String content;
     
     
    
     @Override
    public String execute() throws Exception {
    
         TempUser tuser=(TempUser)myDao.getDbsession().get(TempUser.class,confcode);
                 
        email=tuser.getEmailId();  
        pwd=tuser.getPassword();
        uname=tuser.getUserName();
        
        
           user=new User(email,pwd,userEnum.NewUser.getUserType()) ;
           user.setUserName(uname);
           myDao.getDbsession().save(user);
            tuser.setUserType(userEnum.Act_User.getUserType());
           myDao.getDbsession().update(tuser);
           Map session =ActionContext.getContext().getSession();
            session.put("User",user);
            
            subject="Activation Success";
                  setContent("Hi "     + ":"+uname+ 
                             
                             
                             "Welcome to Adzappy :"
                 +"     "
                             + "                                          "
               +" Now Your Adzappy Account is Activated   & Verified "
                           
                             
                             
                             
                 +" Thanks & Regards     "
                 +" Adzappy Team");
       
        
             sendMail.test(email, subject, content);
            
            
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
