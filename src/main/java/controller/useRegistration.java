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
    
    private Date dob;
   
    private String addline1;
    private String ctry;
    private String storeg;
    private String city;
    private String postcode;

    private spDAO myDao;
    
  


     @Override
    public String execute() throws Exception {
    
            try{    
                
           
          
            Map session =ActionContext.getContext().getSession();
            User user=(User) session.get("User");
              UserDetails use = new UserDetails(NONE,user,fname);
              
            
              use.setLastName(lname);
              use.setDob(dob);
              use.setAddressLine1(addline1);
              use.setCountry(ctry);
              use.setStateRegion(storeg);
              use.setCity(city);
              use.setPostalCode(postcode);
              
              
              
           myDao.getDbsession().save(use);
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

  
    
    
}
