/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.hibernate.HibernateException;

/**
 *
 * @author Administrator
 */
public class logoutaction extends ActionSupport {

    private spDAO myDao;

    @Override
    public String execute() throws Exception {
        try {
            Map session = ActionContext.getContext().getSession();
            session.put("User", null);
            session.clear();
            myDao.getDbsession().close();
            addActionMessage("Successfully Logged Out. Login as Different User");
            return "success";
        } catch (HibernateException e) {
            addActionError("Server  Error Please Try Again ");
            e.printStackTrace();
            return "error";
        } catch (NullPointerException ne) {

            addActionError("Server  Error Please Try Again ");
            ne.printStackTrace();
            return "error";
        } catch (Exception e) {

            addActionError("Server  Error Please Try Again ");
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
}
