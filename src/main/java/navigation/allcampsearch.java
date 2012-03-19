/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package navigation;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.*;
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class allcampsearch extends ActionSupport {

    private spDAO myDao;
    private User user;
    private List<Campaign> allcamplist;
    private String s;

    @Override
    public String execute() throws Exception {

        try {
            Map session = ActionContext.getContext().getSession();
            user = (User) session.get("User");

            Criteria ucri = myDao.getDbsession().createCriteria(Campaign.class);
            ucri.add(Restrictions.like("campaignName", s + "%"));
            ucri.setMaxResults(50);
            allcamplist = (List<Campaign>) (ucri.list());
            addActionMessage(allcamplist.size() + "\t\tResults Found");
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
}
