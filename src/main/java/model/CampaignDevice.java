package model;
// Generated Jun 27, 2012 10:36:34 AM by Hibernate Tools 3.2.1.GA



/**
 * CampaignDevice generated by hbm2java
 */
public class CampaignDevice  implements java.io.Serializable {


     private Long deviceId;
     private Campaign campaign;
     private String deviceName;

    public CampaignDevice() {
    }

	
    public CampaignDevice(Campaign campaign) {
        this.campaign = campaign;
    }
    public CampaignDevice(Campaign campaign, String deviceName) {
       this.campaign = campaign;
       this.deviceName = deviceName;
    }
   
    public Long getDeviceId() {
        return this.deviceId;
    }
    
    public void setDeviceId(Long deviceId) {
        this.deviceId = deviceId;
    }
    public Campaign getCampaign() {
        return this.campaign;
    }
    
    public void setCampaign(Campaign campaign) {
        this.campaign = campaign;
    }
    public String getDeviceName() {
        return this.deviceName;
    }
    
    public void setDeviceName(String deviceName) {
        this.deviceName = deviceName;
    }




}


