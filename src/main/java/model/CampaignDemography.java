package model;
// Generated Oct 17, 2011 12:07:51 PM by Hibernate Tools 3.2.1.GA



/**
 * CampaignDemography generated by hbm2java
 */
public class CampaignDemography  implements java.io.Serializable {


     private long campaign;
     private Campaign campaign_1;
     private int age;
     private String sex;

    public CampaignDemography() {
    }

    public CampaignDemography(long campaign, Campaign campaign_1, int age, String sex) {
       this.campaign = campaign;
       this.campaign_1 = campaign_1;
       this.age = age;
       this.sex = sex;
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
    public int getAge() {
        return this.age;
    }
    
    public void setAge(int age) {
        this.age = age;
    }
    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }




}


