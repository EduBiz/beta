/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.List;
import java.util.Map;
import model.Publish;
import model.User;
import org.hibernate.Criteria;
import org.hibernate.HibernateException;
import org.hibernate.criterion.Restrictions;

/**
 *
 * @author Administrator
 */
public class editsite extends ActionSupport {

    private String email;
    private String sitename;
    private String siteurl;
    private String desc;
    private String txtcolor;
    private String bgcolor;
    private String catgry;
    private spDAO myDao;
    private List<Publish> sitelist;
    private Long publishid;
    private User user;

    @Override
    public String execute() throws Exception {

        return "success";
    }

    public String deletesite() throws Exception {

        try {
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));

            Publish cdel = (Publish) myDao.getDbsession().get(Publish.class, publishid);


            getMyDao().getDbsession().delete(cdel);

          
            Criteria crit = myDao.getDbsession().createCriteria(Publish.class);
            crit.add(Restrictions.eq("user", getUser()));
            crit.setMaxResults(20);

            sitelist = (List<Publish>) crit.list();
            addActionMessage("Site " + cdel.getSiteName() + " Successfully Removed");
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
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the sitename
     */
    public String getSitename() {
        return sitename;
    }

    /**
     * @param sitename the sitename to set
     */
    public void setSitename(String sitename) {
        this.sitename = sitename;
    }

    /**
     * @return the siteurl
     */
    public String getSiteurl() {
        return siteurl;
    }

    /**
     * @param siteurl the siteurl to set
     */
    public void setSiteurl(String siteurl) {
        this.siteurl = siteurl;
    }

    /**
     * @return the desc
     */
    public String getDesc() {
        return desc;
    }

    /**
     * @param desc the desc to set
     */
    public void setDesc(String desc) {
        this.desc = desc;
    }

    /**
     * @return the txtcolor
     */
    public String getTxtcolor() {
        return txtcolor;
    }

    /**
     * @param txtcolor the txtcolor to set
     */
    public void setTxtcolor(String txtcolor) {
        this.txtcolor = txtcolor;
    }

    /**
     * @return the bgcolor
     */
    public String getBgcolor() {
        return bgcolor;
    }

    /**
     * @param bgcolor the bgcolor to set
     */
    public void setBgcolor(String bgcolor) {
        this.bgcolor = bgcolor;
    }

    /**
     * @return the catgry
     */
    public String getCatgry() {
        return catgry;
    }

    /**
     * @param catgry the catgry to set
     */
    public void setCatgry(String catgry) {
        this.catgry = catgry;
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
     * @return the publishid
     */
    public Long getPublishid() {
        return publishid;
    }

    /**
     * @param publishid the publishid to set
     */
    public void setPublishid(Long publishid) {
        this.publishid = publishid;
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
}
