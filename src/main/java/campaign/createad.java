/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package campaign;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.Map;
import model.*;
import org.hibernate.HibernateException;

/**
 *
 * @author radan
 */
public class createad extends ActionSupport{
    
     private spDAO myDao;
     private String adtype;
     private String adname;
     private String url;
     private String displayurl;
     private String adtext;
     private String addimage;
     private String tileimage;
     
      
     @Override 
     public String execute() throws Exception {
   
          try{
              
               Map session =ActionContext.getContext().getSession();
               Campaign camp=(Campaign) session.get("campa");
               Long campid=camp.getCampaignId();
               // System.out.println("Camp is" + camp.toString());
             //  Long campl=Long.parseLong(camp.toString());
              
               CampaignCreative campcre=new CampaignCreative();
               campcre.setCampaign(campid);
               campcre.setStyleType(adtype);
               campcre.setAddName(adname);
               campcre.setAddUrl(url);
               campcre.setDisplayUrl(displayurl);
               campcre.setAddText(adtext);
               campcre.setAddImage(addimage);
               campcre.setTileImage(tileimage);
                getMyDao().getDbsession().save(campcre);
          
          }
    
           catch(HibernateException e)
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
     * @return the adtype
     */
    public String getAdtype() {
        return adtype;
    }

    /**
     * @param adtype the adtype to set
     */
    public void setAdtype(String adtype) {
        this.adtype = adtype;
    }

    /**
     * @return the adname
     */
    public String getAdname() {
        return adname;
    }

    /**
     * @param adname the adname to set
     */
    public void setAdname(String adname) {
        this.adname = adname;
    }

    /**
     * @return the url
     */
    public String getUrl() {
        return url;
    }

    /**
     * @param url the url to set
     */
    public void setUrl(String url) {
        this.url = url;
    }

    /**
     * @return the displayurl
     */
    public String getDisplayurl() {
        return displayurl;
    }

    /**
     * @param displayurl the displayurl to set
     */
    public void setDisplayurl(String displayurl) {
        this.displayurl = displayurl;
    }

    /**
     * @return the adtext
     */
    public String getAdtext() {
        return adtext;
    }

    /**
     * @param adtext the adtext to set
     */
    public void setAdtext(String adtext) {
        this.adtext = adtext;
    }

    /**
     * @return the addimage
     */
    public String getAddimage() {
        return addimage;
    }

    /**
     * @param addimage the addimage to set
     */
    public void setAddimage(String addimage) {
        this.addimage = addimage;
    }

    /**
     * @return the tileimage
     */
    public String getTileimage() {
        return tileimage;
    }

    /**
     * @param tileimage the tileimage to set
     */
    public void setTileimage(String tileimage) {
        this.tileimage = tileimage;
    }
}
