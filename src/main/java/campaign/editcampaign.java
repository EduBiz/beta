/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package campaign;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.math.BigDecimal;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author radan
 */
public class editcampaign extends ActionSupport{
    
       private String campaid;
       private String campaignname;
       private BigDecimal dailybdgt;
       private String deliverytype;
       private String promotype;
       private String note;
       private String sdate ;
       private String edate;
       private String[] temp;
       private Long lc;
        private List<Campaign> camplist;
      private spDAO myDao;
      private User user;
       
       @Override 
        public String execute() throws Exception {
   
             /* delimiter */
         String delimiter ="-";   /* given string will be split by the argument delimiter provided. */
          setTemp(getSdate().split(delimiter));
         for(int i =0; i < 1; i++){        /* print substrings */
            setSdate(getTemp()[i+1] + '/' + getTemp()[i+2] + '/' + getTemp()[i]) ; 
         }
         setTemp(getEdate().split(delimiter));
         for(int i =0; i < 1; i++)  {      /* print substrings */
            setEdate(getTemp()[i+1] + '/' + getTemp()[i+2] + '/' + getTemp()[i]) ; 
         }
           
        return"success";
        }

        public String deletecamp() throws Exception {
           
           try{
               Map session =ActionContext.getContext().getSession();
            user=(User) session.get("User");
            lc=(Long) Long.parseLong(getCampaid());
            Campaign cdel=(Campaign) getMyDao().getDbsession().get(Campaign.class, getLc());
                
              
                 getMyDao().getDbsession().delete(cdel);
                 
                  setCamplist((List<Campaign>) getMyDao().getDbsession().createQuery("from Campaign").list());
                Criteria crit = getMyDao().getDbsession().createCriteria(Campaign.class);
                crit.add(Restrictions.like("user",user));
                crit.setMaxResults(20);
                    setCamplist((List<Campaign>) crit.list());
           }
           catch(Exception e)
           {
               e.printStackTrace();
           }
        return"success";   
       }

    /**
     * @return the campaid
     */
    public String getCampaid() {
        return campaid;
    }

    /**
     * @param campaid the campaid to set
     */
    public void setCampaid(String campaid) {
        this.campaid = campaid;
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
     * @return the sdate
     */
    public String getSdate() {
        return sdate;
    }

    /**
     * @param sdate the sdate to set
     */
    public void setSdate(String sdate) {
        this.sdate = sdate;
    }

    /**
     * @return the edate
     */
    public String getEdate() {
        return edate;
    }

    /**
     * @param edate the edate to set
     */
    public void setEdate(String edate) {
        this.edate = edate;
    }

    /**
     * @return the temp
     */
    public String[] getTemp() {
        return temp;
    }

    /**
     * @param temp the temp to set
     */
    public void setTemp(String[] temp) {
        this.temp = temp;
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
