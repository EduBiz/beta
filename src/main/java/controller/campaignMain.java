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
       private String promotype;
       private String note;

   private spDAO myDao;
	
       @Override 
        public String execute() throws Exception {
   
        
        try{
             
            
            
         /**   if(promotype="Website")
            {
             response.sendRedirect(response.getContextPath()+"/website.jsp");
         
                else if(promotype= "BlackBerry Application Ad")
                    {
                     response.sendRedirect(request.getContextPath()+"/blackberry.jsp");
                    }
                else if(promotype= Andriod Application Ad)
                    {
                    response.sendRedirect(request.getContextPath()+"/andriod.jsp");
                    }
                else if(promotype= Iphone Application Ad)
                    {
                    response.sendRedirect(request.getContextPath()+"/iphone.jsp");    
                    }
                else if(promotype= iTunes Media Ad)
                    {
                     response.sendRedirect(request.getContextPath()+"/itunes.jsp");
                    }
                else if(promotype= Streaming Video Ad)
                    {
                     response.sendRedirect(request.getContextPath()+"/streamingvideo.jsp");
                    }
                else if(promotype= Books Ad)
                    {
                    response.sendRedirect(request.getContextPath()+"/bookad.jsp");
                    }
                else if(promotype= Click to Call Ad)
                    {
                     response.sendRedirect(response.getContextPath()+"/clicktocall.jsp");
                    }}
            else
                {
                  response.sendRedirect(response.getContextPath()+"/clicktomap.jsp");
                }
       **/
        
                Map session =ActionContext.getContext().getSession();
            User user=(User) session.get("User");
       
            Campaign camp = new Campaign(user,campaignname);
            getMyDao().getDbsession().save(camp);
            camp.setStartDate(getStartdate());
            camp.setEndDate(getEnddate());
            camp.setDialyBudget(dailybdgt);
            camp.setDeliveryMethod(deliverytype);
            camp.setPromoType(promotype);
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
     * @return the promotype
     */
    public String getPromotype() {
        return promotype;
    }

    /**
     * @param promotype the promotype to set
     */
    public void setPromotype(String promotype) {
        this.promotype = promotype;
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

  
}