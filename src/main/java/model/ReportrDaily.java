package model;
// Generated Feb 27, 2012 11:42:50 AM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;
import java.util.Date;

/**
 * ReportrDaily generated by hbm2java
 */
public class ReportrDaily  implements java.io.Serializable {


     private Long reportrKey;
     private ReportPublish reportPublish;
     private Date rdate;
     private Integer impressions;
     private Integer clicks;
     private BigDecimal totalCost;

    public ReportrDaily() {
    }

	
    public ReportrDaily(ReportPublish reportPublish) {
        this.reportPublish = reportPublish;
    }
    public ReportrDaily(ReportPublish reportPublish, Date rdate, Integer impressions, Integer clicks, BigDecimal totalCost) {
       this.reportPublish = reportPublish;
       this.rdate = rdate;
       this.impressions = impressions;
       this.clicks = clicks;
       this.totalCost = totalCost;
    }
   
    public Long getReportrKey() {
        return this.reportrKey;
    }
    
    public void setReportrKey(Long reportrKey) {
        this.reportrKey = reportrKey;
    }
    public ReportPublish getReportPublish() {
        return this.reportPublish;
    }
    
    public void setReportPublish(ReportPublish reportPublish) {
        this.reportPublish = reportPublish;
    }
    public Date getRdate() {
        return this.rdate;
    }
    
    public void setRdate(Date rdate) {
        this.rdate = rdate;
    }
    public Integer getImpressions() {
        return this.impressions;
    }
    
    public void setImpressions(Integer impressions) {
        this.impressions = impressions;
    }
    public Integer getClicks() {
        return this.clicks;
    }
    
    public void setClicks(Integer clicks) {
        this.clicks = clicks;
    }
    public BigDecimal getTotalCost() {
        return this.totalCost;
    }
    
    public void setTotalCost(BigDecimal totalCost) {
        this.totalCost = totalCost;
    }




}


