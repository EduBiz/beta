/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.sql.SQLException;
import java.util.Map;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class resetpass extends ActionSupport {

    private spDAO myDao;
    private String existpass;
    private String newpass;
    private String cfnewpass;
    private User user;
    private Map session;

    @Override
    public void validate() {
        session = ActionContext.getContext().getSession();
        User u1 = (User) session.get("User");
        Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
        ucri.add(Restrictions.eq("emailId", u1.getEmailId()));
        ucri.add(Restrictions.eq("password", existpass));
        ucri.setMaxResults(1);
        if (existpass.isEmpty()) {

            addActionError("Please Enter Existing Password");
        } else if (ucri.list().isEmpty()) {
            addActionError("Current password doesn't match please try again");

        }

        if (newpass.isEmpty()) {

            addActionError("Please Enter New Password");
        }
        if (cfnewpass.isEmpty()) {

            addActionError("Please Enter Confirm New Password");
        } else if (!cfnewpass.equals(newpass) && !newpass.equals(cfnewpass)) {

            addActionError("New Password & Confirm New Password Mismatch Please Enter Again");
        }
    }

    @Override
    public String execute() throws Exception {
        try {
            session = ActionContext.getContext().getSession();
            User u1 = (User) session.get("User");
            if (existpass.isEmpty()) {
                addActionError("Please Enter existing password");
                return "error";
            } else {
                Criteria ucri = getMyDao().getDbsession().createCriteria(User.class);
                ucri.add(Restrictions.eq("emailId", u1.getEmailId()));
                ucri.add(Restrictions.eq("password", existpass));
                ucri.setMaxResults(1);
                if (ucri.list().isEmpty()) {
                    addActionError("Current password doesn't match please try again");
                    return "error";
                } else {
                    user = (User) myDao.getDbsession().get(User.class, u1.getEmailId());
                    user.setPassword(newpass);
                    myDao.getDbsession().update(user);
                    session.put("User", user);
                    addActionMessage("New Password Successfully Changed");
                    return "success";
                }

            }

        } catch (HibernateException e) {
            addActionError("Server  Error Please Try Again Later ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Try Again Later ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Try Again Later ");
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
     * @return the existpass
     */
    public String getExistpass() {
        return existpass;
    }

    /**
     * @param existpass the existpass to set
     */
    public void setExistpass(String existpass) {
        this.existpass = existpass;
    }

    /**
     * @return the newpass
     */
    public String getNewpass() {
        return newpass;
    }

    /**
     * @param newpass the newpass to set
     */
    public void setNewpass(String newpass) {
        this.newpass = newpass;
    }

    /**
     * @return the cfnewpass
     */
    public String getCfnewpass() {
        return cfnewpass;
    }

    /**
     * @param cfnewpass the cfnewpass to set
     */
    public void setCfnewpass(String cfnewpass) {
        this.cfnewpass = cfnewpass;
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
     * @return the session
     */
    public Map getSession() {
        return session;
    }

    /**
     * @param session the session to set
     */
    public void setSession(Map session) {
        this.session = session;
    }
}