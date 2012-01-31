/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class displaycampaign extends ActionSupport {

    private spDAO myDao;
    private Campaign cam;
    private CampaignCreative campcr;
    private String type;
    private InputStream fileInputStream;
    private long Id;
    private long cid;
    private String cname;
    private String cadurl;
    private long camprepid;
    private ReportCampaign rc1;
    private ReportcDaily rcd;
    private long reportcKey;
    private Date date;

    @Override
    public String execute() throws Exception {

        try {
            Criteria disp = myDao.getDbsession().createCriteria(Campaign.class);

            disp.add(Restrictions.sqlRestriction("1=1 order by rand()"));
            disp.setMaxResults(1);
            cam = (Campaign) (disp.list().get(0));
            cid = (long) cam.getCampaignId();
            cname = cam.getCampaignName();

            Criteria ds12 = myDao.getDbsession().createCriteria(CampaignCreative.class);
            ds12.add(Restrictions.eq("campaign", cid));
            ds12.setMaxResults(1);
            CampaignCreative ccr = (CampaignCreative) (ds12.list().get(0));
            cadurl = ccr.getAddUrl();
            System.out.println("Campaign id " + cid);
            System.out.println("Campaign name " + cname);
            System.out.println("Campaign url " + cadurl);

            Criteria repcampid = myDao.getDbsession().createCriteria(ReportCampaign.class);
            repcampid.add(Restrictions.eq("campaign", cam));
            repcampid.setMaxResults(1);

            List sss = repcampid.list();
            if (!sss.isEmpty()) {
                rc1 = (ReportCampaign) (repcampid.list().get(0));
                camprepid = rc1.getReportcId();
                int s3 = rc1.getTotalImpressions();
                System.out.println("ReportCampaign id " + camprepid);

                rc1 = (ReportCampaign) myDao.getDbsession().get(ReportCampaign.class, camprepid);
                //assign list to cam for set campaign


                int s1 = s3 + 1;
                System.out.println("S is " + s1);
                rc1.setReportcId(camprepid);
                rc1.setCampaign(getCam());
                rc1.setTotalImpressions(s3 + 1);                  //set impression
                rc1.setTotalClicks(0);
                rc1.setTotalCost(BigDecimal.ZERO);
                myDao.getDbsession().update(rc1);


            } else {
                rc1 = new ReportCampaign();    //creating obj

                rc1.setCampaign(getCam());                 //assign list to cam for set campaign


                rc1.setTotalImpressions(1);                  //set impression
                rc1.setTotalClicks(0);
                rc1.setTotalCost(BigDecimal.ZERO);
                //getting campaign id
                myDao.getDbsession().save(rc1);
            }
            Calendar currentDate = Calendar.getInstance();
            currentDate.add(Calendar.DATE, 0);
            Criteria dailcam = myDao.getDbsession().createCriteria(ReportcDaily.class);
            dailcam.add(Restrictions.eq("rdate", currentDate.getTime()));
            dailcam.add(Restrictions.eq("reportCampaign", rc1));
            dailcam.setMaxResults(1);
           
            List dacam = dailcam.list();
            if (dacam.isEmpty()) {
                Date date1 = new Date();
                ReportcDaily daycamp = new ReportcDaily();
                daycamp.setReportCampaign(rc1);
                daycamp.setImpressions(1);
                daycamp.setRdate(date1);
                myDao.getDbsession().save(daycamp);

            } else {
                Date sysdte = new Date();
                 rcd = (ReportcDaily) (dailcam.list().get(0));
            reportcKey = rcd.getReportcKey();
            date = rcd.getRdate();
            int dcl = rcd.getImpressions();
                if (sysdte == date || rc1 == rcd.getReportCampaign()) {
                    ReportcDaily rcd1 = (ReportcDaily) myDao.getDbsession().get(ReportcDaily.class, reportcKey);
                    rcd1.setImpressions(dcl + 1);
                    rcd1.setRdate(sysdte);
                    rcd1.setReportCampaign(rc1);
                    rcd1.setReportcKey(reportcKey);
                    myDao.getDbsession().update(rcd1);
                } else {

                    ReportcDaily daycamp = new ReportcDaily();
                    daycamp.setReportCampaign(rc1);
                    daycamp.setImpressions(1);
                    daycamp.setRdate(sysdte);
                    myDao.getDbsession().save(daycamp);
                }

            }

            if (type.equals("text")) {
                return "text";
            } else if (type.equals("mobile")) {
                return "mobile";
            } else if (type.equals("tablets")) {
                return "tablets";
            } else {
                return "error";
            }
        } catch (Exception e) {
            e.printStackTrace();
            return "error";
        }
    }

    public String img() throws Exception {

        try {

            CampaignCreative cam = (CampaignCreative) myDao.getDbsession().get(CampaignCreative.class, getId());
            byte[] retadd1 = cam.getAddImage();
            fileInputStream = new ByteArrayInputStream(retadd1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "success";
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
     * @return the campcr
     */
    public CampaignCreative getCampcr() {
        return campcr;
    }

    /**
     * @param campcr the campcr to set
     */
    public void setCampcr(CampaignCreative campcr) {
        this.campcr = campcr;
    }

    /**
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }

    /**
     * @return the fileInputStream
     */
    public InputStream getFileInputStream() {
        return fileInputStream;
    }

    /**
     * @param fileInputStream the fileInputStream to set
     */
    public void setFileInputStream(InputStream fileInputStream) {
        this.fileInputStream = fileInputStream;
    }

    /**
     * @return the Id
     */
    public long getId() {
        return Id;
    }

    /**
     * @param Id the Id to set
     */
    public void setId(long Id) {
        this.Id = Id;
    }

    /**
     * @return the cam
     */
    public Campaign getCam() {
        return cam;
    }

    /**
     * @param cam the cam to set
     */
    public void setCam(Campaign cam) {
        this.cam = cam;
    }

    /**
     * @return the cid
     */
    public long getCid() {
        return cid;
    }

    /**
     * @param cid the cid to set
     */
    public void setCid(long cid) {
        this.cid = cid;
    }

    /**
     * @return the cname
     */
    public String getCname() {
        return cname;
    }

    /**
     * @param cname the cname to set
     */
    public void setCname(String cname) {
        this.cname = cname;
    }

    /**
     * @return the cadurl
     */
    public String getCadurl() {
        return cadurl;
    }

    /**
     * @param cadurl the cadurl to set
     */
    public void setCadurl(String cadurl) {
        this.cadurl = cadurl;
    }

    /**
     * @return the camprepid
     */
    public long getCamprepid() {
        return camprepid;
    }

    /**
     * @param camprepid the camprepid to set
     */
    public void setCamprepid(long camprepid) {
        this.camprepid = camprepid;
    }

    /**
     * @return the rc1
     */
    public ReportCampaign getRc1() {
        return rc1;
    }

    /**
     * @param rc1 the rc1 to set
     */
    public void setRc1(ReportCampaign rc1) {
        this.rc1 = rc1;
    }

    /**
     * @return the rcd
     */
    public ReportcDaily getRcd() {
        return rcd;
    }

    /**
     * @param rcd the rcd to set
     */
    public void setRcd(ReportcDaily rcd) {
        this.rcd = rcd;
    }

    /**
     * @return the reportcKey
     */
    public long getReportcKey() {
        return reportcKey;
    }

    /**
     * @param reportcKey the reportcKey to set
     */
    public void setReportcKey(long reportcKey) {
        this.reportcKey = reportcKey;
    }

    /**
     * @return the date
     */
    public Date getDate() {
        return date;
    }

    /**
     * @param date the date to set
     */
    public void setDate(Date date) {
        this.date = date;
    }
}
