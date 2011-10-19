/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.User;

/**
 *
 * @author radan
 */
public class login  extends ActionSupport{
    
    private String email;
    private String password;
    private List<User> userlist;
    private spDAO myDao;

    
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
            session.put("user",user);
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
    
    
}
