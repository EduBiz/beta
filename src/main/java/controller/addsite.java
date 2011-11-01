/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import model.Publish;
import model.User;

/**
 *
 * @author Administrator
 */
public class addsite extends ActionSupport{
    private String email;
    private String sitename;
    private String siteurl;
    private String desc;
    private String txtcolor;
    private String bgcolor;
    private String catgry;
   private spDAO myDao;
    
    @Override
    public String execute() throws Exception
       {
           try{
       Map session =ActionContext.getContext().getSession();
            User user=(User) session.get("User");
             email=user.getEmailId();  
             
            Publish sitepublish=new Publish(user,siteurl,catgry);
             sitepublish.setBgColor(bgcolor);
             sitepublish.setTextColor(txtcolor);
             sitepublish.setDesc(desc);
             sitepublish.setSiteName(sitename);
             
             myDao.getDbsession().saveOrUpdate(sitepublish);
       return "success";
       }
          catch(Exception e)
          {
            System.out.println(e.getMessage());
            addActionError("error"+e.getMessage());
            return "error" ; 
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
    
    
}
