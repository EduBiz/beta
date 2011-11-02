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
public class android extends ActionSupport{
    
     private spDAO myDao;
     private String platform;
     private String location;
     private String android;
    
      @Override
    public void validate() {
      
      
        if(platform==null)
        {
         addFieldError("platform","Please Select Platorm");
        }
        if(location==null)
        {
         addFieldError("location","Please Select Location");
        }
         if(android.equals("Please select"))
        {
         addFieldError("android","Please Select Os");
        }
    } 
    
     @Override 
     public String execute() throws Exception {
   
          try{
              
              Map session =ActionContext.getContext().getSession();
               Campaign camp=(Campaign) session.get("campa");
              
               CampaignDevice campdev=new CampaignDevice(camp, getPlatform());
              getMyDao().getDbsession().save(campdev);
             
              
               CampaignLocation camploc= new CampaignLocation(camp, getLocation());
               getMyDao().getDbsession().save(camploc);
               
               CampaignOs campos=new CampaignOs(camp,android);
               getMyDao().getDbsession().save(campos);
            
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
}
