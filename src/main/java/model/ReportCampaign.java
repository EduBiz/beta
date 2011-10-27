package model;
// Generated Oct 27, 2011 8:45:20 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;
import java.util.HashSet;
import java.util.Set;

/**
 * ReportCampaign generated by hbm2java
 */
public class ReportCampaign  implements java.io.Serializable {


     private Long reportcId;
     private Campaign campaign;
     private int totalImpressions;
     private int totalClicks;
     private BigDecimal totalCost;
     private Set<ReportcDaily> reportcDailies = new HashSet<ReportcDaily>(0);

    public ReportCampaign() {
    }

	
    public ReportCampaign(Campaign campaign, int totalImpressions, int totalClicks, BigDecimal totalCost) {
        this.campaign = campaign;
        this.totalImpressions = totalImpressions;
        this.totalClicks = totalClicks;
        this.totalCost = totalCost;
    }
    public ReportCampaign(Campaign campaign, int totalImpressions, int totalClicks, BigDecimal totalCost, Set<ReportcDaily> reportcDailies) {
       this.campaign = campaign;
       this.totalImpressions = totalImpressions;
       this.totalClicks = totalClicks;
       this.totalCost = totalCost;
       this.reportcDailies = reportcDailies;
    }
   
    public Long getReportcId() {
        return this.reportcId;
    }
    
    public void setReportcId(Long reportcId) {
        this.reportcId = reportcId;
    }
    public Campaign getCampaign() {
        return this.campaign;
    }
    
    public void setCampaign(Campaign campaign) {
        this.campaign = campaign;
    }
    public int getTotalImpressions() {
        return this.totalImpressions;
    }
    
    public void setTotalImpressions(int totalImpressions) {
        this.totalImpressions = totalImpressions;
    }
    public int getTotalClicks() {
        return this.totalClicks;
    }
    
    public void setTotalClicks(int totalClicks) {
        this.totalClicks = totalClicks;
    }
    public BigDecimal getTotalCost() {
        return this.totalCost;
    }
    
    public void setTotalCost(BigDecimal totalCost) {
        this.totalCost = totalCost;
    }
    public Set<ReportcDaily> getReportcDailies() {
        return this.reportcDailies;
    }
    
    public void setReportcDailies(Set<ReportcDaily> reportcDailies) {
        this.reportcDailies = reportcDailies;
    }




}


