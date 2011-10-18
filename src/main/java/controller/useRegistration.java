/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import model.User;
import model.UserDetails;

/**
 *
 * @author Administrator
 */
public class useRegistration extends ActionSupport {
    private String fname;
    private String lname;
    private String email;
    private String pwd;
    private String pwd1;
    private Date dob1;
    private String dob;
    private String addline1;
    private String ctry;
    private String storeg;
    private String city;
    private String postcode;

    private spDAO myDao;
    
  

    
    @Override
    public void validate() {
      
       
        UserDetails user=(UserDetails)myDao.getDbsession().get(UserDetails.class,1);
        if(user != null)
            addFieldError("email","sorry Email id Already Taken");
        
    }
    
     @Override
    public String execute() throws Exception {
    
            try{    
                SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy"); 
                dob1 = formatter.parse(dob);
                          
           
            //UserDetails user = new UserDetails(fname,lname,email,pwd, dob1,addline1,ctry,storeg,city,postcode);
         //   myDao.getDbsession().save(user);
            Map session =ActionContext.getContext().getSession();
            session.put("Dvd",email);
            
        return "success";
            
     
            }
     catch(Exception e){
            System.out.println(e.getMessage());
            addActionError("error"+e.getMessage());
            email = "";
            return "error";
        }
     
    
     
     }
    
    
    
    
    /**
     * @return the fname
     */
    public String getFname() {
        return fname;
    }

    /**
     * @param fname the fname to set
     */
    public void setFname(String fname) {
        this.fname = fname;
    }

    /**
     * @return the lname
     */
    public String getLname() {
        return lname;
    }

    /**
     * @param lname the lname to set
     */
    public void setLname(String lname) {
        this.lname = lname;
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
     * @return the pwd1
     */
    public String getPwd1() {
        return pwd1;
    }

    /**
     * @param pwd1 the pwd1 to set
     */
    public void setPwd1(String pwd1) {
        this.pwd1 = pwd1;
    }

    /**
     * @return the dob
     */
   

    /**
     * @return the addline1
     */
    public String getAddline1() {
        return addline1;
    }

    /**
     * @param addline1 the addline1 to set
     */
    public void setAddline1(String addline1) {
        this.addline1 = addline1;
    }

    /**
     * @return the ctry
     */
    public String getCtry() {
        return ctry;
    }

    /**
     * @param ctry the ctry to set
     */
    public void setCtry(String ctry) {
        this.ctry = ctry;
    }

    /**
     * @return the storeg
     */
    public String getStoreg() {
        return storeg;
    }

    /**
     * @param storeg the storeg to set
     */
    public void setStoreg(String storeg) {
        this.storeg = storeg;
    }

    /**
     * @return the city
     */
    public String getCity() {
        return city;
    }

    /**
     * @param city the city to set
     */
    public void setCity(String city) {
        this.city = city;
    }

    /**
     * @return the postcode
     */
    public String getPostcode() {
        return postcode;
    }

    /**
     * @param postcode the postcode to set
     */
    public void setPostcode(String postcode) {
        this.postcode = postcode;
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
     * @return the dob
     */
    public Date getDob1() {
        return dob1;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob1(Date dob1) {
        this.dob1 = dob1;
    }

    /**
     * @return the dob
     */
    public String getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(String dob) {
        this.dob = dob;
    }
    
    
    
}
