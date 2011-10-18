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
    private String msg;
      private static final String SMTP_HOST_NAME = "smtp.gmail.com";
    private static final int SMTP_HOST_PORT = 465;
    private static final String SMTP_AUTH_USER = "8aarkay@gmail.com";
    private static final String SMTP_AUTH_PWD  = "51207205033";
     
    
     @Override
    public String execute() throws Exception {
    
         TempUser tuser=(TempUser)myDao.getDbsession().get(TempUser.class,confcode);
                 
        email=tuser.getEmailId1();  
        pwd=tuser.getPassword1();
        uname=tuser.getUserName1();
                   
           Set<UserTransaction> userTransactions1 = new HashSet<UserTransaction>();
           Set<Publish> publishs1 = new HashSet<Publish>();
           Set<UserAccount> userAccounts1 = new HashSet<UserAccount>();
           Set<PaymentDetails> paymentDetailses1 = new HashSet<PaymentDetails>();
           Set<Campaign> campaigns1 = new HashSet<Campaign>();
           Set<UserDetails> userDetailses1 = new HashSet<UserDetails>();
               userTransactions1.add(new UserTransaction());
               publishs1.add(new Publish());
               userAccounts1.add(new UserAccount());
               paymentDetailses1.add(new PaymentDetails());
               campaigns1.add(new Campaign());
               userDetailses1.add(new UserDetails());
           user = new User(email,pwd,userEnum.NewUser.getUserType(),uname,userTransactions1,publishs1,userAccounts1,paymentDetailses1,campaigns1,userDetailses1);
           myDao.getDbsession().save(user);
            tuser.setUserType1(userEnum.Act_User.getUserType());
           myDao.getDbsession().update(tuser);
           Map session =ActionContext.getContext().getSession();
            session.put("User",email);
            
            
                  msg="Hi "     + ":"+uname+ 
                          
                          
                          "Welcome to Adzappy :"
              +"     "
                          + "                                          "
            +" Now Your Adzappy Account is Activated   & Verified "
                        
                          
                          
                          
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

   
    
    
}
