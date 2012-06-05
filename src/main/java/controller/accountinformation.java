/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Date;
import java.util.Map;
import model.User;
import model.UserDetails;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class accountinformation extends ActionSupport {

    private spDAO myDao;
    private String fname;
    private String lname;
    private String email;
    private Date dob;
    private String addline1;
    private String ctry;
    private String storeg;
    private String city;
    private String postcode;
    private UserDetails userdetails;
    private User user;

    @Override
    public String execute() throws Exception {
        try {

            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));


            setUserdetails((UserDetails) getMyDao().getDbsession().get(UserDetails.class, getUser().getEmailId()));


            if (getUserdetails() != null) {


                Criteria ucri = getMyDao().getDbsession().createCriteria(UserDetails.class);
                ucri.add(Restrictions.like("user", getUser().getEmailId()));
                ucri.setMaxResults(1);
                setUserdetails((UserDetails) (ucri.list().get(0)));

                return "update";
            } else {


                return "save";
            }
        } catch (HibernateException e) {
            addActionError("Server  Error Please Try Again Later ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Try Again Later ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Try Again Later ");
            e.printStackTrace();
            return "error";
        }
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
     * @return the dob
     */
    public Date getDob() {
        return dob;
    }

    /**
     * @param dob the dob to set
     */
    public void setDob(Date dob) {
        this.dob = dob;
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
     * @return the userdetails
     */
    public UserDetails getUserdetails() {
        return userdetails;
    }

    /**
     * @param userdetails the userdetails to set
     */
    public void setUserdetails(UserDetails userdetails) {
        this.userdetails = userdetails;
    }

    /**
     * @return the user
     */
    public User getUser() {
        return user;
    }

    /**
     * @param user the user to set
     */
    public void setUser(User user) {
        this.user = user;
    }
}