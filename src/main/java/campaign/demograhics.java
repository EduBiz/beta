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
public class demograhics extends ActionSupport {
    
     private spDAO myDao;
     private String gender;
     private String age;
    
     @Override
    public void validate() {
      
      
        if(gender==null)
        {
         addFieldError("gender","Please Select Gender");
        }
        if(age==null)
        {
         addFieldError("age","Please Select Age");
        }
         
    } 
     
     @Override 
     public String execute() throws Exception {
   
          try{
              
               Map session =ActionContext.getContext().getSession();
               Campaign camp=(Campaign) session.get("campa");
               
               CampaignDemography campdemo=new CampaignDemography();
               campdemo.setCampaign(camp);
               campdemo.setSex(gender);
               campdemo.setAge(getAge());
              getMyDao().getDbsession().save(campdemo);
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

          
}
