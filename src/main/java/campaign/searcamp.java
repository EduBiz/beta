/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package campaign;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import java.util.Map;
import model.Campaign;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

public class searcamp extends ActionSupport {

    private String s;
    private List<Campaign> camplist;
    private spDAO myDao;

    @Override
    public String execute() throws Exception {

        try {
            Map session = ActionContext.getContext().getSession();
            User user1 = (User) session.get("User");

            setCamplist((List<Campaign>) getMyDao().getDbsession().createQuery("from Campaign").list());
            Criteria crit = getMyDao().getDbsession().createCriteria(Campaign.class);
            crit.add(Restrictions.like("campaignName", getS() + "%"));
            crit.add(Restrictions.like("user", user1));
            crit.setMaxResults(20);
            setCamplist((List<Campaign>) crit.list());
            addActionMessage(camplist.size() + "\t\tResults Found");
            return "success";
        } catch (Exception e) {
            addActionError("Server  Error Please Try Again ");
            e.printStackTrace();
            return "error";
        }



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
