/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Administrator
 */
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;
import model.Adrate;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;

public class adminratechange extends ActionSupport {

    private spDAO myDao;
    private BigDecimal existrate;
    private BigDecimal newrt;
    private BigDecimal cfrt;
    private User user;

    @Override
    public void validate() {

        if (newrt == null) {

            addActionError("Please Enter New Rate");
        }

        if (cfrt == null) {

            addActionError("Please Enter Confirm New Rate");
        }


        if (getNewrt().equals(getCfrt())) {
        } else {

            addActionError("New Rate & Confirm New Rate Mismatch Please Enter Again");
        }
    }

    @Override
    public String execute() throws Exception {
        try {
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));
            Date date = new Date();
            System.out.println("--------------------------------------------------" + existrate);
            System.out.println("------------------------------------------------------" + newrt);
            System.out.println("-------------------------------------------------------" + cfrt);

//        Criteria cri=myDao.getDbsession().createCriteria(Adrate.class);
//        cri.setMaxResults(1);
//        
//        Adrate ad1 = (Adrate)(cri.list().get(0)) ;
//        
//        System.out.println("-------------------------------------------------------" + ad1.getCurrentRate());
            Adrate ad = new Adrate();
            ad.setCurrentRate(newrt);
            ad.setOldRate(existrate);
            ad.setDateChange(date);
            ad.setRateId(1);
            myDao.getDbsession().update(ad);
            //myDao.getDbsession().saveOrUpdate(ad);
            addActionMessage("New Rate Successfully Changed");
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
     * @return the existrate
     */
    public BigDecimal getExistrate() {
        return existrate;
    }

    /**
     * @param existrate the existrate to set
     */
    public void setExistrate(BigDecimal existrate) {
        this.existrate = existrate;
    }

    /**
     * @return the newrt
     */
    public BigDecimal getNewrt() {
        return newrt;
    }

    /**
     * @param newrt the newrt to set
     */
    public void setNewrt(BigDecimal newrt) {
        this.newrt = newrt;
    }

    /**
     * @return the cfrt
     */
    public BigDecimal getCfrt() {
        return cfrt;
    }

    /**
     * @param cfrt the cfrt to set
     */
    public void setCfrt(BigDecimal cfrt) {
        this.cfrt = cfrt;
    }
}