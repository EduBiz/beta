/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import model.User;
/**
 *
 * @author Administrator
 */
public class edituseregister extends ActionSupport {
    
    
    
   private String fname;
    private String lname;
    private String email;
    
    private String  dob;
   
    private String addline1;
    private String ctry;
    private String storeg;
    private String city;
    private String postcode;

    private spDAO myDao;
    private String[] temp;
  

     @Override
    public String execute() throws Exception {
         
         
        try{ 
                /* delimiter */
         String delimiter = "-";   /* given string will be split by the argument delimiter provided. */
          temp = dob.split(delimiter);
         for(int i =0; i < 1; i++)        /* print substrings */
            dob=temp[i+1]+'/'+temp[i+2]+'/'+temp[i] ; 
            
            
     return "success";
        }
 catch(Exception e)
         
         {
           e.printStackTrace();
            //addActionError("error"+e.getMessage());
            return "error" ; 
          }
     }
    
     
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
