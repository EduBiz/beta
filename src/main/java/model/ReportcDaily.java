package model;
// Generated Oct 17, 2011 12:07:51 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;

/**
 * ReportcDaily generated by hbm2java
 */
public class ReportcDaily  implements java.io.Serializable {


     private Long reportcKey;
     private ReportCampaign reportCampaign;
     private Integer impressions;
     private Integer clicks;
     private BigDecimal totalCost;

    public ReportcDaily() {
    }

	
    public ReportcDaily(ReportCampaign reportCampaign) {
        this.reportCampaign = reportCampaign;
    }
    public ReportcDaily(ReportCampaign reportCampaign, Integer impressions, Integer clicks, BigDecimal totalCost) {
       this.reportCampaign = reportCampaign;
       this.impressions = impressions;
       this.clicks = clicks;
       this.totalCost = totalCost;
    }
   
    public Long getReportcKey() {
        return this.reportcKey;
    }
    
    public void setReportcKey(Long reportcKey) {
        this.reportcKey = reportcKey;
    }
    public ReportCampaign getReportCampaign() {
        return this.reportCampaign;
    }
    
    public void setReportCampaign(ReportCampaign reportCampaign) {
        this.reportCampaign = reportCampaign;
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


