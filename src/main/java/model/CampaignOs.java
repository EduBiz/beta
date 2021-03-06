package model;
// Generated Jun 27, 2012 10:36:34 AM by Hibernate Tools 3.2.1.GA



/**
 * CampaignOs generated by hbm2java
 */
public class CampaignOs  implements java.io.Serializable {


     private Long osId;
     private Campaign campaign;
     private String osName;

    public CampaignOs() {
    }

	
    public CampaignOs(Campaign campaign) {
        this.campaign = campaign;
    }
    public CampaignOs(Campaign campaign, String osName) {
       this.campaign = campaign;
       this.osName = osName;
    }
   
    public Long getOsId() {
        return this.osId;
    }
    
    public void setOsId(Long osId) {
        this.osId = osId;
    }
    public Campaign getCampaign() {
        return this.campaign;
    }
    
    public void setCampaign(Campaign campaign) {
        this.campaign = campaign;
    }
    public String getOsName() {
        return this.osName;
    }
    
    public void setOsName(String osName) {
        this.osName = osName;
    }




}


