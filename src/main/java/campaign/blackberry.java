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
import model.*;
import org.hibernate.HibernateException;

/**
 *
 * @author radan
 */
public class blackberry extends ActionSupport {

    private spDAO myDao;
    private String platform;
    private String location;
    private String blackberry;
    private String campaignname;
    private Date startdate;
    private Date enddate;
    private String dailybdgt;

    @Override
    public void validate() {


        if (platform == null) {

            addActionError("Please Select Platorm");
        }
        if (location == null) {

            addActionError("Please Select Location");
        }
        if (blackberry.equals("Please select")) {

            addActionError("Please Select Os");
        }
    }

    @Override
    public String execute() throws Exception {

        try {

            Map session = ActionContext.getContext().getSession();
            Campaign camp = (Campaign) session.get("campa");

            CampaignDevice campdev = new CampaignDevice(camp, getPlatform());
            getMyDao().getDbsession().save(campdev);


            CampaignLocation camploc = new CampaignLocation(camp, getLocation());
            getMyDao().getDbsession().save(camploc);

            CampaignOs campos = new CampaignOs(camp, blackberry);
            getMyDao().getDbsession().save(campos);
            return "success";

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
     * @return the platform
     */
    public String getPlatform() {
        return platform;
    }

    /**
     * @param platform the platform to set
     */
    public void setPlatform(String platform) {
        this.platform = platform;
    }

    /**
     * @return the location
     */
    public String getLocation() {
        return location;
    }

    /**
     * @param location the location to set
     */
    public void setLocation(String location) {
        this.location = location;
    }

    /**
     * @return the blackberry
     */
    public String getBlackberry() {
        return blackberry;
    }

    /**
     * @param blackberry the blackberry to set
     */
    public void setBlackberry(String blackberry) {
        this.blackberry = blackberry;
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
}
