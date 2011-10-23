package model;
// Generated Oct 22, 2011 6:35:46 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;

/**
 * ReportrDaily generated by hbm2java
 */
public class ReportrDaily  implements java.io.Serializable {


     private Long reportrKey;
     private ReportPublish reportPublish;
     private Integer impressions;
     private Integer clicks;
     private BigDecimal totalCost;

    public ReportrDaily() {
    }

	
    public ReportrDaily(ReportPublish reportPublish) {
        this.reportPublish = reportPublish;
    }
    public ReportrDaily(ReportPublish reportPublish, Integer impressions, Integer clicks, BigDecimal totalCost) {
       this.reportPublish = reportPublish;
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


