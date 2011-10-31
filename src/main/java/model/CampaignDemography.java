package model;
// Generated Oct 30, 2011 5:17:33 PM by Hibernate Tools 3.2.1.GA



/**
 * CampaignDemography generated by hbm2java
 */
public class CampaignDemography  implements java.io.Serializable {


     private Long demographyId;
     private Campaign campaign;
     private String age;
     private String sex;

    public CampaignDemography() {
    }

    public CampaignDemography(Campaign campaign, String age, String sex) {
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
    public String getAge() {
        return this.age;
    }
    
    public void setAge(String age) {
        this.age = age;
    }
    public String getSex() {
        return this.sex;
    }
    
    public void setSex(String sex) {
        this.sex = sex;
    }




}


