/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package campaign;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import controller.spDAO;
import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Map;
import model.Campaign;
import model.User;
import org.hibernate.HibernateException;

/**
 *
 * @author Administrator
 */
public class adtype extends ActionSupport {

    private String promotype;
    private spDAO myDao;

     @Override
    public void validate() {


      
        if (promotype.equals("Please select")) {

            addActionError("Please Select Promotype");
        }
    
       }
    @Override
    public String execute() throws Exception {

        try {

           Map session = ActionContext.getContext().getSession();
            Campaign camp = (Campaign) session.get("campa");


           

            camp =(Campaign)myDao.getDbsession().get(Campaign.class, camp.getCampaignId());
          
            camp.setPromoType(promotype);
          
            getMyDao().getDbsession().update(camp);
            if (promotype.equals("Website")) {
                return "website";
            }
            if (promotype.equals("BlackBerry Application Ad")) {
                return "BlackBerry";
            }
            if (promotype.equals("Android Application Ad")) {
                return "Andriod";
            }
            if (promotype.equals("Iphone Application Ad")) {
                return "Iphone";
            }
            if (promotype.equals("iTunes Media Ad")) {
                return "iTunes";
            }
            if (promotype.equals("Streaming Video Ad")) {
                return "Streaming";
            }
            if (promotype.equals("Books Ad")) {
                return "Books";
            }
            if (promotype.equals("Click to Call Ad")) {
                return "clickcall";
            }
            if (promotype.equals("Click to Map Ad")) {
                return "clickmap";
            }

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

        return "success";
    }
    
    
    /**
     * @return the promotype
     */
    public String getPromotype() {
        return promotype;
    }

    /**
     * @param promotype the promotype to set
     */
    public void setPromotype(String promotype) {
        this.promotype = promotype;
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
