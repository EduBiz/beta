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

/**
 *
 * @author Administrator
 */
public class campaignMain extends ActionSupport{
    
   private String campaignname;
   private Date todaydate;
   private Date enddate;
   private BigDecimal dailybdgt;
   private int deliverytype;
   private String note;
  
    private spDAO myDao;
	@Override
    public String execute() throws Exception {
    
        try{
                Map session =ActionContext.getContext().getSession();
            User user=(User) session.get("User");
 
            Campaign camp = new Campaign(user,campaignname);
             getMyDao().getDbsession().save(camp);
            camp.setStartDate(todaydate);
            camp.setEndDate(enddate);
            camp.setDialyBudget(dailybdgt);
            camp.setDeliveryMethod(deliverytype);
            camp.setNote(note);
            
            
           
            
            
        }
        catch(Exception e){}
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
     * @return the todaydate
     */
    public Date getTodaydate() {
        return todaydate;
    }

    /**
     * @param todaydate the todaydate to set
     */
    public void setTodaydate(Date todaydate) {
        this.todaydate = todaydate;
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
     * @return the deliverytype
     */
    public int getDeliverytype() {
        return deliverytype;
    }

    /**
     * @param deliverytype the deliverytype to set
     */
    public void setDeliverytype(int deliverytype) {
        this.deliverytype = deliverytype;
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

}