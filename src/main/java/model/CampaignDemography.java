package model;
// Generated 20-Oct-2011 12:30:24 by Hibernate Tools 3.2.1.GA



/**
 * CampaignDemography generated by hbm2java
 */
public class CampaignDemography  implements java.io.Serializable {


     private Long demographyId;
     private Campaign campaign;
     private int age;
     private String sex;

    public CampaignDemography() {
    }

    public CampaignDemography(Campaign campaign, int age, String sex) {
       this.campaign = campaign;
       this.age = age;
       this.sex = sex;
    }
   
    public Long getDemographyId() {
        return this.demographyId;
    }
    
    public void setDemographyId(Long demographyId) {
        this.demographyId = demographyId;
    }
    public Campaign getCampaign() {
        return this.campaign;
    }
    
    public void setCampaign(Campaign campaign) {
        this.campaign = campaign;
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


