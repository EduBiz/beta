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
public class demograhics extends ActionSupport {

    private spDAO myDao;
    private String gender;
    private String age;
    private String campaignname;
    private Date startdate;
    private Date enddate;
    private String dailybdgt;
    private String platform;
    private String android;
    private String location;
    private String blackberry;
    private String iphone;

    @Override
    public void validate() {


        if (gender == null) {

            addActionError("Please Select Gender");
        }
        if (age == null) {

            addActionError("Please Select Age");
        }

    }

    @Override
    public String execute() throws Exception {

        try {

            Map session = ActionContext.getContext().getSession();
            Campaign camp = (Campaign) session.get("campa");

            CampaignDemography campdemo = new CampaignDemography();
            campdemo.setCampaign(camp);
            campdemo.setSex(gender);
            campdemo.setAge(getAge());
            getMyDao().getDbsession().save(campdemo);
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
     * @return the gender
     */
    public String getGender() {
        return gender;
    }

    /**
     * @param gender the gender to set
     */
    public void setGender(String gender) {
        this.gender = gender;
    }

    /**
     * @return the age
     */
    public String getAge() {
        return age;
    }

    /**
     * @param age the age to set
     */
    public void setAge(String age) {
        this.age = age;
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
     * @return the android
     */
    public String getAndroid() {
        return android;
    }

    /**
     * @param android the android to set
     */
    public void setAndroid(String android) {
        this.android = android;
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
     * @return the iphone
     */
    public String getIphone() {
        return iphone;
    }

    /**
     * @param iphone the iphone to set
     */
    public void setIphone(String iphone) {
        this.iphone = iphone;
    }
}
