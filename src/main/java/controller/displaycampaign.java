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
    @Override
    public String execute() throws Exception {


        Criteria disp = myDao.getDbsession().createCriteria(Campaign.class);

        disp.add(Restrictions.sqlRestriction("1=1 order by rand()"));
        disp.setMaxResults(1);

        
        cam= (Campaign) (disp.list().get(0));
        cid=(long) cam.getCampaignId();
        cname=cam.getCampaignName();
       
        Criteria ds12=myDao.getDbsession().createCriteria(CampaignCreative.class);
        ds12.add(Restrictions.eq("campaign", cid));
        ds12.setMaxResults(1);
        
        CampaignCreative ccr=(CampaignCreative) (ds12.list().get(0));
        cadurl=ccr.getAddUrl();
        
        /*camplist = (List<Campaign>) disp.list();
        camplist.get(0).getCampaignName();
        System.out.println("Camp id \t\t\t" + camplist.get(0).getCampaignId());
        System.out.println("Camp Name\t\t\t" + camplist.get(0).getCampaignName());

        Criteria d1 = myDao.getDbsession().createCriteria(CampaignCreative.class);
        d1.add(Restrictions.eq("styleType", type));
        d1.add(Restrictions.in("campaign_1", camplist));
        d1.setMaxResults(1);
        campcrlist = (List<CampaignCreative>) d1.list();*/
       
        //code for impression
        ReportCampaign rc=new ReportCampaign();    //creating obj
                               
        rc.setCampaign(getCam());                 //assign list to cam for set campaign
             int s4=rc.getTotalImpressions();
             int s=s4+1;
             System.out.println("S is "+s);
        rc.setTotalImpressions(s);                  //set impression
        rc.setTotalClicks(0);
        rc.setTotalCost(BigDecimal.ZERO);
                 //getting campaign id
        
        
        Criteria dd2=myDao.getDbsession().createCriteria(ReportCampaign.class);
        dd2.add(Restrictions.eq("campaign",rc.getCampaign()));
        List sss=dd2.list();                            //criteria for getting campaign which is already inserted
        if(sss.isEmpty()){      
        myDao.getDbsession().save(rc);                      
        }else{
            ReportCampaign rc1=new ReportCampaign();
             rc1.setCampaign(getCam());                 //assign list to cam for set campaign
             
             int s3=rc.getTotalImpressions();
             int s1=s3+1;
             System.out.println("S is "+s);
        rc1.setTotalImpressions(s1);                  //set impression
        rc1.setTotalClicks(0);
        rc1.setTotalCost(BigDecimal.ZERO);
            myDao.getDbsession().saveOrUpdate(rc1);
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
    }
    public String img() throws Exception{
        
         try{
            
           CampaignCreative  cam=(CampaignCreative)myDao.getDbsession().get(CampaignCreative.class, getId());
            byte[] retadd1=cam.getAddImage(); 
            fileInputStream=new ByteArrayInputStream(retadd1);
             }

           catch(Exception e)
          {
          e.printStackTrace();
          }
        return"success";
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
}
