/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.Campaign;
import model.Publish;
import model.User;
import model.UserDetails;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class login  extends ActionSupport{
    
    private String email;
    private String password;
    private List<User> userlist;
    private spDAO myDao;
    private List<Publish> sitelist;
    private List<Campaign> camplist;
    private List<UserDetails> uselist;
     @Override
    public void validate() {
      
       
        User user=(User) myDao.getDbsession().get(User.class, email); 
            if(user!=null)
            {
                if(user.getPassword().equals(password)){
                }
                else
                {
                addFieldError("password","Please enter Correct password");
                }
            }  
            else{
            addFieldError("email","sorry Email id Not Available");
            }
    }
    
    
    
    
    @Override
     public String execute() throws Exception {
        
        User user=(User)myDao.getDbsession().get(User.class,email);
        
     
      if(user.getPassword().equals(password))
      {
        
        Map session =ActionContext.getContext().getSession();
            session.put("User",user);
        User user1=(User)myDao.getDbsession().get(User.class,email);

            
            camplist=(List<Campaign>) myDao.getDbsession().createQuery("from Campaign").list();
            Criteria crit = myDao.getDbsession().createCriteria(Campaign.class);
            crit.add(Restrictions.like("user",user1));
            crit.setMaxResults(20);
            camplist=(List<Campaign>) crit.list();
         
            sitelist=(List<Publish>) myDao.getDbsession().createQuery("from Publish").list();
                Criteria crit1 = myDao.getDbsession().createCriteria(Publish.class);
                crit1.add(Restrictions.like("user",user));
                crit1.setMaxResults(20);
           
                sitelist=(List<Publish>) crit1.list();
            
            uselist=(List<UserDetails>) myDao.getDbsession().createQuery("from UserDetails").list();
            Criteria ucri=myDao.getDbsession().createCriteria(UserDetails.class);
            ucri.add(Restrictions.like("user", user));
            ucri.setMaxResults(1);
            return "success";
      
      }
      
      else
      {
   return "error";
    }
    }
    
   
    
    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
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
    
    
}
