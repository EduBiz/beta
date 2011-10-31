package model;
// Generated Oct 30, 2011 5:17:33 PM by Hibernate Tools 3.2.1.GA



/**
 * CampaignLocation generated by hbm2java
 */
public class CampaignLocation  implements java.io.Serializable {


     private Long locationId;
     private Campaign campaign;
     private String zone;

    public CampaignLocation() {
    }

    public CampaignLocation(Campaign campaign, String zone) {
       this.campaign = campaign;
       this.zone = zone;
    }
   
    public Long getLocationId() {
        return this.locationId;
    }
    
    public void setLocationId(Long locationId) {
        this.locationId = locationId;
    }
    public Campaign getCampaign() {
        return this.campaign;
    }
    
    public void setCampaign(Campaign campaign) {
        this.campaign = campaign;
    }
    public String getZone() {
        return this.zone;
    }
    
    public void setZone(String zone) {
        this.zone = zone;
    }




}


