/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.*;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;

/**
 *
 * @author Administrator
 */
public class adminviewcampaign extends ActionSupport {

    private spDAO myDao;
    private User user;
    private List<Campaign> allcamplist;

    @Override
    public String execute() throws Exception {
        try {
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));
            Criteria ucri = myDao.getDbsession().createCriteria(Campaign.class);
            ucri.setMaxResults(100);
            allcamplist = (List<Campaign>) (ucri.list());


            return "success";
        } catch (HibernateException e) {
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
     * @return the allcamplist
     */
    public List<Campaign> getAllcamplist() {
        return allcamplist;
    }

    /**
     * @param allcamplist the allcamplist to set
     */
    public void setAllcamplist(List<Campaign> allcamplist) {
        this.allcamplist = allcamplist;
    }
}
