/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;
import model.Campaign;
import model.User;
import org.hibernate.HibernateException;

/**
 *
 * @author Administrator
 */
public class campaignMain extends ActionSupport{
    
   private String campaignname;
   private Date startdate;
   private Date enddate;
   private BigDecimal dailybdgt;
   private String deliverytype;
   private String note;
   private User  user;
    private spDAO myDao;
	@Override
    public String execute() throws Exception {
    
        try{
                Map session =ActionContext.getContext().getSession();
             setUser((User) session.get("User"));
       
            Campaign camp = new Campaign(getUser(),campaignname);
            getMyDao().getDbsession().save(camp);
            camp.setStartDate(getStartdate());
            camp.setEndDate(getEnddate());
            camp.setDialyBudget(dailybdgt);
            camp.setDeliveryMethod(getDeliverytype());
            camp.setNote(note);
                
            
        }
        catch(HibernateException e){
        e.printStackTrace();
        }
        return"success";
        }

    /**
     * @return the campaignname
     */
    public String getCampaignname() {
        return campaignname;
    }

    /**
     * @param campaignname the campaignname to set
     */
    public void setCampaignname(String campaignname) {
        this.campaignname = campaignname;
    }

    /**
     * @return the dailybdgt
     */
    public BigDecimal getDailybdgt() {
        return dailybdgt;
    }

    /**
     * @param dailybdgt the dailybdgt to set
     */
    public void setDailybdgt(BigDecimal dailybdgt) {
        this.dailybdgt = dailybdgt;
    }

   

    /**
     * @return the note
     */
    public String getNote() {
        return note;
    }

    /**
     * @param note the note to set
     */
    public void setNote(String note) {
        this.note = note;
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
     * @return the startdate
     */
    public Date getStartdate() {
        return startdate;
    }

    /**
     * @param startdate the startdate to set
     */
    public void setStartdate(Date startdate) {
        this.startdate = startdate;
    }

    /**
     * @return the enddate
     */
    public Date getEnddate() {
        return enddate;
    }

    /**
     * @param enddate the enddate to set
     */
    public void setEnddate(Date enddate) {
        this.enddate = enddate;
    }

    /**
     * @return the deliverytype
     */
    public String getDeliverytype() {
        return deliverytype;
    }

    /**
     * @param deliverytype the deliverytype to set
     */
    public void setDeliverytype(String deliverytype) {
        this.deliverytype = deliverytype;
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