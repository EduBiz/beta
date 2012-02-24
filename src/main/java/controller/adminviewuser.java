/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import model.User;
import model.UserDetails;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class adminviewuser extends ActionSupport {

    private spDAO myDao;
    private User user;
    private List<UserDetails> alluserlist;

    @Override
    public String execute() throws Exception {
        try {
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));
            Criteria ucri = myDao.getDbsession().createCriteria(UserDetails.class);
            ucri.setMaxResults(100);
            alluserlist=(List<UserDetails>)ucri.list();

            return "success";
        } catch (HibernateException he) {
            he.printStackTrace();
            return "error";
        } catch (Exception e) {
            e.getMessage();

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
     * @return the alluserlist
     */
    public List<UserDetails> getAlluserlist() {
        return alluserlist;
    }

    /**
     * @param alluserlist the alluserlist to set
     */
    public void setAlluserlist(List<UserDetails> alluserlist) {
        this.alluserlist = alluserlist;
    }
}
