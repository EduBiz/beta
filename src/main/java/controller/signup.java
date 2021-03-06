/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

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

    private String uname;
    private String email;
    private String pwd;
    private String confirmpwd;
    private spDAO myDao;
    private int confcode;
    private static userEnum ut;
    private Emailfunction sendMail;
    private String subject;
    private String content;

    @Override
    public void validate() {

        if (uname == null) {

            addActionError("Please Enter User Name");
        }
        if (email == null) {

            addActionError("Please Enter Email Address");
        }
        if (pwd == null) {

            addActionError("Please Enter Password");
        }
        if (confirmpwd == null) {

            addActionError("Please Enter Confirm Password");
        }
        if (!confirmpwd.equals(pwd)) {

            addActionError("Confirm Password and Password Not Match Please Enter Again");
        }
        User user = (User) myDao.getDbsession().get(User.class, email);
        if (user != null) //      addFieldError("email","sorry Email id Already Taken");
        {
            addActionError("Sorry Email id Already Taken");
        }

    }

    @Override
    public String execute() throws Exception {

        try {

            Random rand = new Random();

            setConfcode(rand.nextInt());


            if (pwd.equals(getConfirmpwd())) {
                TempUser tuser = new TempUser(getConfcode(), email, pwd, userEnum.NotRegistered.getUserType(), uname);
                myDao.getDbsession().save(tuser);
//            Map session =ActionContext.getContext().getSession();
//            session.put("User",email);
                subject = " Welcome to Adzappy";
                setContent("Hi\t" + uname + "\nWelcome to Adzappy :\n"
                        + "                                               "
                        + "Your Registered login  mail id is:" + email + "\n   "
                        + "                         "
                        + "   Please click th following link to activate your account\n  "
                        + "                                       "
                        + "http://beta.mathi.cloudbees.net/activationAccount.action?email=" + email + "&confcode=" + getConfcode()
                        + "\n           "
                        + " \nThanks & Regards  \n   "
                        + " Adzappy Team\n");
                if (email == null) {
                    addActionError("Please Enter Email Address");
                } else {

                    sendMail.test(email, subject, content);
                }
                addActionMessage("Hi thanks for registering with us . Please check your email for completing the activation process.");
                return "success";
            } else {
                return "error";
            }
        } catch (HibernateException e) {
            addActionError("Server  Error Please Recheck All Fields ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Recheck All Fields ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Recheck All Fields ");
            e.printStackTrace();
            return "error";
        }


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
}
