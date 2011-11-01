package model;
// Generated Oct 30, 2011 6:58:50 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * Publish generated by hbm2java
 */
public class Publish  implements java.io.Serializable {


     private Long publishId;
     private User user;
     private String siteName;
     private String siteUrl;
     private String category;
     private String desc;
     private String bgColor;
     private String textColor;
     private Set<ReportPublish> reportPublishs = new HashSet<ReportPublish>(0);

    public Publish() {
    }

	
    public Publish(User user, String siteUrl, String category) {
        this.user = user;
        this.siteUrl = siteUrl;
        this.category = category;
    }
    public Publish(User user, String siteName, String siteUrl, String category, String desc, String bgColor, String textColor, Set<ReportPublish> reportPublishs) {
       this.user = user;
       this.siteName = siteName;
       this.siteUrl = siteUrl;
       this.category = category;
       this.desc = desc;
       this.bgColor = bgColor;
       this.textColor = textColor;
       this.reportPublishs = reportPublishs;
    }
   
    public Long getPublishId() {
        return this.publishId;
    }
    
    public void setPublishId(Long publishId) {
        this.publishId = publishId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getSiteName() {
        return this.siteName;
    }
    
    public void setSiteName(String siteName) {
        this.siteName = siteName;
    }
    public String getSiteUrl() {
        return this.siteUrl;
    }
    
    public void setSiteUrl(String siteUrl) {
        this.siteUrl = siteUrl;
    }
    public String getCategory() {
        return this.category;
    }
    
    public void setCategory(String category) {
        this.category = category;
    }
    public String getDesc() {
        return this.desc;
    }
    
    public void setDesc(String desc) {
        this.desc = desc;
    }
    public String getBgColor() {
        return this.bgColor;
    }
    
    public void setBgColor(String bgColor) {
        this.bgColor = bgColor;
    }
    public String getTextColor() {
        return this.textColor;
    }
    
    public void setTextColor(String textColor) {
        this.textColor = textColor;
    }
    public Set<ReportPublish> getReportPublishs() {
        return this.reportPublishs;
    }
    
    public void setReportPublishs(Set<ReportPublish> reportPublishs) {
        this.reportPublishs = reportPublishs;
    }




}


