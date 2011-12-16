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
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class editcamplist  extends ActionSupport{
    
    
    private List<Campaign> camplist;
    private spDAO myDao;
    
   @Override
    public String execute() throws Exception
       { 
    
           Map session =ActionContext.getContext().getSession();
               User  user=(User) session.get("User");
            
                 camplist=(List<Campaign>) getMyDao().getDbsession().createQuery("from Campaign").list();
            Criteria crit = getMyDao().getDbsession().createCriteria(Campaign.class);
            crit.add(Restrictions.like("user",user));
            crit.setMaxResults(20);
            camplist=(List<Campaign>) crit.list();
           
           return "success";
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
