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
import model.User;
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
    private List<Campaign> camplist;
    private User user;
    
     @Override
    public void validate() {
      
       
        User user=(User) myDao.getDbsession().get(User.class, email); 
            if(user!=null)
            {
            }
            else{
            addFieldError("email","sorry Email id Not Available");
            }
    }
    
    
    
    
    @Override
     public String execute() throws Exception {
        
        User user1=(User)myDao.getDbsession().get(User.class,email);
        
     
      if(user1.getPassword().equals(password))
      {
        Map session =ActionContext.getContext().getSession();
            session.put("User",user1);
           
              //  Campaign camp = new Campaign();
            //  camp= (Campaign) session.put("campa",camp);
             // camp=(Campaign) session.get("campa");
            camplist=myDao.getDbsession().createQuery("from Campaign").list();
      
            Criteria crit = myDao.getDbsession().createCriteria(Campaign.class);
          // Campaign camp1=(Campaign)myDao.getDbsession().get(Campaign.class,email);
            crit.add(Restrictions.like("user",user1));
            crit.setMaxResults(10);
           // camp1=(Campaign) crit.list();
            camplist=crit.list();
            
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
