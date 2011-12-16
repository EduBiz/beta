/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package campaign;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;
import model.Campaign;
import model.User;
import org.hibernate.HibernateException;


/**
 *
 * @author Administrator
 */	
public class campaignMain extends ActionSupport{
       
       private String campaid;
       private String campaignname;
       private Date startdate;
       private Date enddate;
       private BigDecimal dailybdgt;
       private String deliverytype;
       private String promotype;
       private String note;
       private List<Campaign> camplist;
       private Long lc;
   private spDAO myDao;
    @Override
    public void validate() {
      
      
        if(deliverytype==null)
        {
         addFieldError("deliverytype","Please Select Delivery Type");
        }
        if(promotype.equals("Please select"))
        {
         addFieldError("promotype","Please Select Promotype");
        }
       if(startdate==null)
        {
             addFieldError("startdate","Enter Date");
        }
       else if(startdate.after(enddate))
        {
            addFieldError("enddate","Enter Correct Date");
        }
        
    } 
    
       @Override 
        public String execute() throws Exception {
   
             try{
            
                Map session =ActionContext.getContext().getSession();
            User user=(User) session.get("User");
             
            Campaign camp;
          //  System.out.println("campaign id is" +campaid);
           
                  camp=new Campaign(user,campaignname);
                  camp=(Campaign) session.put("campa", camp);

                        camp.setStartDate(startdate);
                        camp.setEndDate(enddate);
                        camp.setDialyBudget(dailybdgt);
                        camp.setDeliveryMethod(deliverytype);
                        camp.setPromoType(promotype);
                        camp.setNote(note);  
                         getMyDao().getDbsession().saveOrUpdate(camp);
                  if(promotype.equals("Website"))  return "website";  
                  if(promotype.equals("BlackBerry Application Ad"))  return"BlackBerry";  
                  if(promotype.equals("Android Application Ad"))     return"Andriod";    
                  if(promotype.equals("Iphone Application Ad"))      return"Iphone";    
                  if(promotype.equals("iTunes Media Ad"))            return"iTunes"; 
                  if(promotype.equals("Streaming Video Ad"))      return"Streaming";   
                  if(promotype.equals("Books Ad"))               return"Books";  
                  if(promotype.equals("Click to Call Ad"))      return"clickcall";  
                  if(promotype.equals("Click to Map Ad"))       return"clickmap"; 
                
         }
             
          catch(HibernateException e)
             {
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

    /**
     * @return the campaignid
     */
    public String getCampaid() {
        return campaid;
    }

    /**
     * @param campaignid the campaignid to set
     */
    public void setCampaid(String campaid) {
        this.campaid = campaid;
    }

    /**
     * @return the camplist
     */
    public List<Campaign> getCamplist() {
        return camplist;
    }

    /**
     * @param camplist the camplist to set
     */
    public void setCamplist(List<Campaign> camplist) {
        this.camplist = camplist;
    }

    /**
     * @return the lc
     */
    public Long getLc() {
        return lc;
    }

    /**
     * @param lc the lc to set
     */
    public void setLc(Long lc) {
        this.lc = lc;
    }

  
}