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
import model.*;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author radan
 */
public class campaignlist extends ActionSupport {

    private List<Campaign> camplist;
    private spDAO myDao;

    @Override
    public String execute() throws Exception {
        try {
            //camplist=(List<Dvddog>) myDao.getDbsession().createQuery("from Dvddog").list());

            Map session = ActionContext.getContext().getSession();
            Campaign camp = (Campaign) session.get("campa");
            camplist = (List<Campaign>) myDao.getDbsession().createQuery("from Campaign").list();

            Criteria crit = myDao.getDbsession().createCriteria(Campaign.class);
            crit.add(Restrictions.like("user", camp.getCampaignName()));
            crit.setMaxResults(10);
            camplist = (List<Campaign>) crit.list();

            return "success";
        } catch (HibernateException e) {
            addActionError("Server  Error Please Recheck All Fields ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Recheck All Fields ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Recheck All Fields ");
            e.printStackTrace();
            return "error";
        }
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
