/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package navigation;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
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
public class searchall extends ActionSupport {

    private spDAO myDao;
    private User user;
    private List<User> alluserlist;
   
    private String s;

    @Override
    public String execute() throws Exception {

        try {
            Map session = ActionContext.getContext().getSession();
            user = (User) session.get("User");

            Criteria ucri = myDao.getDbsession().createCriteria(User.class);
            ucri.add(Restrictions.not(Restrictions.eq("emailId", "admin@adzappy.com")));
            ucri.add(Restrictions.or(Restrictions.like("emailId", s + "%"), Restrictions.like("userName", s + "%")));
            ucri.setMaxResults(50);
            setAlluserlist((List<User>) ucri.list());
            addActionMessage(getAlluserlist().size() + "\t\tResults Found");
            return "success";

        } catch (HibernateException e) {
            addActionError("Server  Error Please Try Again ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Try Agains ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Try Again ");
            e.printStackTrace();
            return "error";
        }



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

  

    /**
     * @return the s
     */
    public String getS() {
        return s;
    }

    /**
     * @param s the s to set
     */
    public void setS(String s) {
        this.s = s;
    }

    /**
     * @return the alluserlist
     */
    public List<User> getAlluserlist() {
        return alluserlist;
    }

    /**
     * @param alluserlist the alluserlist to set
     */
    public void setAlluserlist(List<User> alluserlist) {
        this.alluserlist = alluserlist;
    }

  
}
