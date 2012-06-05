/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package campaign;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.Date;
import java.util.Map;
import model.Campaign;
import org.hibernate.HibernateException;

/**
 *
 * @author Administrator
 */
public class adtype extends ActionSupport {

    private String promotype;
    private spDAO myDao;
    private String campaignname;
    private Date startdate;
    private Date enddate;
    private String dailybdgt;
    private String deliverytype;

    @Override
    public void validate() {



        if (getPromotype() == null) {

            addActionError("Please Select Ad Group Type");
        }

    }

    @Override
    public String execute() throws Exception {

        try {

            Map session = ActionContext.getContext().getSession();
            Campaign camp = (Campaign) session.get("campa");




            camp = (Campaign) getMyDao().getDbsession().get(Campaign.class, camp.getCampaignId());

            camp.setPromoType(getPromotype());

            getMyDao().getDbsession().update(camp);
            if (getPromotype().equals("Website")) {
                return "website";
            }
            if (getPromotype().equals("BlackBerry Application Ad")) {
                return "BlackBerry";
            }
            if (getPromotype().equals("Android Application Ad")) {
                return "Andriod";
            }
            if (getPromotype().equals("Iphone Application Ad")) {
                return "Iphone";
            }
            if (getPromotype().equals("iTunes Media Ad")) {
                return "iTunes";
            }
            if (getPromotype().equals("Streaming Video Ad")) {
                return "Streaming";
            }
            if (getPromotype().equals("Books Ad")) {
                return "Books";
            }
            if (getPromotype().equals("Click to Call Ad")) {
                return "clickcall";
            }
            if (getPromotype().equals("Click to Map Ad")) {
                return "clickmap";
            }
            else
                  addActionError("Please Select Ad Group Type");
                return "error";

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
     * @return the dailybdgt
     */
    public String getDailybdgt() {
        return dailybdgt;
    }

    /**
     * @param dailybdgt the dailybdgt to set
     */
    public void setDailybdgt(String dailybdgt) {
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
}
