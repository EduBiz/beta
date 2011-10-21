package model;
// Generated 20-Oct-2011 12:30:24 by Hibernate Tools 3.2.1.GA



/**
 * CampaignCreative generated by hbm2java
 */
public class CampaignCreative  implements java.io.Serializable {


     private long campaign;
     private Campaign campaign_1;
     private String styleType;
     private String addText;
     private String addName;
     private String addUrl;
     private String displayUrl;
     private String addImage;
     private String tileImage;

    public CampaignCreative() {
    }

	
    public CampaignCreative(long campaign, Campaign campaign_1, String styleType) {
        this.campaign = campaign;
        this.campaign_1 = campaign_1;
        this.styleType = styleType;
    }
    public CampaignCreative(long campaign, Campaign campaign_1, String styleType, String addText, String addName, String addUrl, String displayUrl, String addImage, String tileImage) {
       this.campaign = campaign;
       this.campaign_1 = campaign_1;
       this.styleType = styleType;
       this.addText = addText;
       this.addName = addName;
       this.addUrl = addUrl;
       this.displayUrl = displayUrl;
       this.addImage = addImage;
       this.tileImage = tileImage;
    }
   
    public long getCampaign() {
        return this.campaign;
    }
    
    public void setCampaign(long campaign) {
        this.campaign = campaign;
    }
    public Campaign getCampaign_1() {
        return this.campaign_1;
    }
    
    public void setCampaign_1(Campaign campaign_1) {
        this.campaign_1 = campaign_1;
    }
    public String getStyleType() {
        return this.styleType;
    }
    
    public void setStyleType(String styleType) {
        this.styleType = styleType;
    }
    public String getAddText() {
        return this.addText;
    }
    
    public void setAddText(String addText) {
        this.addText = addText;
    }
    public String getAddName() {
        return this.addName;
    }
    
    public void setAddName(String addName) {
        this.addName = addName;
    }
    public String getAddUrl() {
        return this.addUrl;
    }
    
    public void setAddUrl(String addUrl) {
        this.addUrl = addUrl;
    }
    public String getDisplayUrl() {
        return this.displayUrl;
    }
    
    public void setDisplayUrl(String displayUrl) {
        this.displayUrl = displayUrl;
    }
    public String getAddImage() {
        return this.addImage;
    }
    
    public void setAddImage(String addImage) {
        this.addImage = addImage;
    }
    public String getTileImage() {
        return this.tileImage;
    }
    
    public void setTileImage(String tileImage) {
        this.tileImage = tileImage;
    }




}


