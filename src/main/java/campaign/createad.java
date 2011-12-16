/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package campaign;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

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
     private List<Campaign> camplist;
     
     private File addimage;
     private File tileimage;
    
      @Override
    public void validate() {
      
        if(adtype==null)
        {
         addFieldError("adtype","Please Select Type");
        }
       
    } 
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
               
            byte[] aFile = new byte[(int) addimage.length()];
            byte[] tFile = new byte[(int) tileimage.length()];
            FileInputStream fileInputStream = new FileInputStream(addimage);
            //convert file into array of bytes
	     fileInputStream.read(aFile);
             campcre.setAddImage(aFile);
         
             fileInputStream=new FileInputStream(tileimage);
             fileInputStream.read(tFile);
             fileInputStream.close();
             campcre.setTileImage(tFile);
              
             getMyDao().getDbsession().save(campcre);
          
                 User user=(User) session.get("User");
                 
                setCamplist((List<Campaign>) myDao.getDbsession().createQuery("from Campaign").list());
                Criteria crit = myDao.getDbsession().createCriteria(Campaign.class);
                crit.add(Restrictions.like("user",user));
                crit.setMaxResults(20);
                    setCamplist((List<Campaign>) crit.list());
                 
                    // Avatar avatar2 = (Avatar)session.get(Avatar.class, avatar.getAvatarId());
                 //  byte[] bAvatar = avatar2.getImage();
             byte[] retadd=campcre.getAddImage();
                    
                FileOutputStream fos = new FileOutputStream("D:\\test.gif"); 
                fos.write(retadd);
           byte[] rettile=campcre.getTileImage();
                    
            fos = new FileOutputStream("D:\\test1.gif"); 
            fos.write(rettile);
            fos.close();
            
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
     * @return the addimage
     */
    public File getAddimage() {
        return addimage;
    }

    /**
     * @param addimage the addimage to set
     */
    public void setAddimage(File addimage) {
        this.addimage = addimage;
    }

    /**
     * @return the tileimage
     */
    public File getTileimage() {
        return tileimage;
    }

    /**
     * @param tileimage the tileimage to set
     */
    public void setTileimage(File tileimage) {
        this.tileimage = tileimage;
    }

}
