/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package navigation;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.Map;
import model.*;
import org.hibernate.Criteria;

/**
 *
 * @author Administrator
 */
public class ratechangenav extends ActionSupport {

    private User user;
    private Adrate ad;
 private spDAO myDao;
    @Override
    public String execute() throws Exception {

        Map session = ActionContext.getContext().getSession();
        setUser((User) session.get("User"));
        
                Criteria ai = getMyDao().getDbsession().createCriteria(Adrate.class);
                     ai.setMaxResults(1);
                     ad=(Adrate)(ai.list().get(0));   
                   //  ad=(Adrate)myDao.getDbsession().get(Adrate.class, 1);
                   
        return "success";
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
     * @return the ad
     */
    public Adrate getAd() {
        return ad;
    }

    /**
     * @param ad the ad to set
     */
    public void setAd(Adrate ad) {
        this.ad = ad;
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