/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import java.util.List;
import java.util.Map;
import model.Publish;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class searsite {

    private String s;
    private List<Publish> sitelist;
    private spDAO myDao;
   
    public String execute() throws Exception {

        try {
             Map session =ActionContext.getContext().getSession();
            User user1=(User) session.get("User");

            setSitelist((List<Publish>) getMyDao().getDbsession().createQuery("from Publish").list());
            Criteria crit1 = getMyDao().getDbsession().createCriteria(Publish.class);
            crit1.add(Restrictions.like("siteName", getS()+"%"));
             crit1.add(Restrictions.eq("user", user1));
            crit1.setMaxResults(20);

            setSitelist((List<Publish>) crit1.list());
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "success";

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
