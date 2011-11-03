/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package navigation;



import model.Publish;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.util.List;
import java.util.Map;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
/**
 *
 * @author Administrator
 */
public class editsitenav extends ActionSupport{
    
    
    private List<Publish> sitelist;
     private spDAO myDao;

      @Override
    public String execute() throws Exception
       { 
    
           Map session =ActionContext.getContext().getSession();
               User  user=(User) session.get("User");
      
       sitelist=(List<Publish>) myDao.getDbsession().createQuery("from Publish").list();
                Criteria crit1 = myDao.getDbsession().createCriteria(Publish.class);
                crit1.add(Restrictions.like("user",user));
                crit1.setMaxResults(20);
           
                sitelist=(List<Publish>) crit1.list();
              return "success";
       
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

