/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class loadlist extends ActionSupport {
  
  
    private List<User> userlist;
    private spDAO myDao;
    private List<Publish> sitelist;
    private List<Campaign> camplist;
     private List<UserDetails> uselist;
      private User  user; 
    @Override
     public String execute() throws Exception {
      
         
           try{
               Map session =ActionContext.getContext().getSession();
             setUser((User) session.get("User"));
            
         
          
                setSitelist((List<Publish>) getMyDao().getDbsession().createQuery("from Publish").list());
                Criteria crit1 = getMyDao().getDbsession().createCriteria(Publish.class);
                crit1.add(Restrictions.like("user", getUser()));
                crit1.setMaxResults(20);
           
                setSitelist((List<Publish>) crit1.list());
            
                 
                  setCamplist((List<Campaign>) getMyDao().getDbsession().createQuery("from Campaign").list());
                Criteria crit = getMyDao().getDbsession().createCriteria(Campaign.class);
                crit.add(Restrictions.like("user", getUser()));
                crit.setMaxResults(20);
                 setCamplist((List<Campaign>) crit.list());
                
                  setUselist((List<UserDetails>) myDao.getDbsession().createQuery("from UserDetails").list());
            Criteria ucri=myDao.getDbsession().createCriteria(UserDetails.class);
            ucri.add(Restrictions.like("user", getUser()));
            ucri.setMaxResults(1);
            return "success";
                 
           }
         catch (HibernateException e) {
            addActionError("Server  Error Please Try Again ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Try Again ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Try Again ");
            e.printStackTrace();
            return "error";
        }
      
       }

    
    /**
     * @return the userlist
     */
    public List<User> getUserlist() {
        return userlist;
    }

    /**
     * @param userlist the userlist to set
     */
    public void setUserlist(List<User> userlist) {
        this.userlist = userlist;
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
     * @return the sitelist
     */
    public List<Publish> getSitelist() {
        return sitelist;
    }

    /**
     * @param sitelist the sitelist to set
     */
    public void setSitelist(List<Publish> sitelist) {
        this.sitelist = sitelist;
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
     * @return the uselist
     */
    public List<UserDetails> getUselist() {
        return uselist;
    }

    /**
     * @param uselist the uselist to set
     */
    public void setUselist(List<UserDetails> uselist) {
        this.uselist = uselist;
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
