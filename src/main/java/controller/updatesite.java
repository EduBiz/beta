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
public class updatesite extends ActionSupport {

    private String sitename;
    private String siteurl;
    private String desc;
    private String txtcolor;
    private String bgcolor;
    private String catgry;
    private spDAO myDao;
    private String publishid;
    private Long pid;
    private List<Publish> sitelist;
    private User user;

    @Override
    public void validate() {

        if (sitename == null) {

            addActionError("Please Enter Site Name");
        }
        if (siteurl == null && siteurl.equals("http://")) {

            addActionError("Please Enter Web Site Url");
        }
        if (txtcolor == null) {

            addActionError("Please Enter Text Color");
        }
        if (bgcolor == null) {

            addActionError("Please Enter Background Color");
        }



        if (catgry.equals("Please select")) {

            addActionError("Please Select a Category");

        }

    }

    @Override
    public String execute() throws Exception {
        try {
            Map session = ActionContext.getContext().getSession();
            setUser((User) session.get("User"));

            pid = (Long) Long.parseLong(publishid);
            Publish sitepublish;



            sitepublish = new Publish(getUser(), siteurl, catgry);
            sitepublish.setPublishId(pid);
            sitepublish.setBgColor(bgcolor);
            sitepublish.setTextColor(txtcolor);
            sitepublish.setDescription(desc);
            sitepublish.setSiteName(sitename);
            myDao.getDbsession().update(sitepublish);


            sitelist = (List<Publish>) myDao.getDbsession().createQuery("from Publish").list();
            Criteria crit1 = myDao.getDbsession().createCriteria(Publish.class);
            crit1.add(Restrictions.like("user", getUser()));
            crit1.setMaxResults(20);

            sitelist = (List<Publish>) crit1.list();
            addActionMessage("Site " + sitename + " Information Successfully Updated");
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
    public String getPublishid() {
        return publishid;
    }

    /**
     * @param publishid the publishid to set
     */
    public void setPublishid(String publishid) {
        this.publishid = publishid;
    }

    /**
     * @return the pid
     */
    public Long getPid() {
        return pid;
    }

    /**
     * @param pid the pid to set
     */
    public void setPid(Long pid) {
        this.pid = pid;
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
