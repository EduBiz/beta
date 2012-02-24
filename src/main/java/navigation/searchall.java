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
import model.Campaign;
import model.User;
import model.UserDetails;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class searchall extends ActionSupport {

    private spDAO myDao;
    private User user;
    private List<UserDetails> alluserlist;
    private String s;

    @Override
    public String execute() throws Exception {

        try {
            Map session = ActionContext.getContext().getSession();
            user = (User) session.get("User");

            Criteria ucri = myDao.getDbsession().createCriteria(UserDetails.class);
            ucri.add(Restrictions.not(Restrictions.eq("user", "admin@adzappy.com")));
            ucri.add(Restrictions.or(Restrictions.like("user", s + "%"), Restrictions.like("firstName", s + "%")));
            ucri.setMaxResults(50);
            alluserlist = (List<UserDetails>) ucri.list();
             addActionMessage(alluserlist.size()+"\t\tResults Found");
            return "success";

        } catch (Exception e) {
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
