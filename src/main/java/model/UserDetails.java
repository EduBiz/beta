package model;
// Generated Oct 30, 2011 6:58:50 PM by Hibernate Tools 3.2.1.GA


import java.util.Date;

/**
 * UserDetails generated by hbm2java
 */
public class UserDetails  implements java.io.Serializable {


     private String user;
     private User user_1;
     private String firstName;
     private String lastName;
     private Date dob;
     private String addressLine1;
     private String country;
     private String stateRegion;
     private String city;
     private String postalCode;

    public UserDetails() {
    }

	
    public UserDetails(String user, User user_1, String firstName) {
        this.user = user;
        this.user_1 = user_1;
        this.firstName = firstName;
    }
    public UserDetails(String user, User user_1, String firstName, String lastName, Date dob, String addressLine1, String country, String stateRegion, String city, String postalCode) {
       this.user = user;
       this.user_1 = user_1;
       this.firstName = firstName;
       this.lastName = lastName;
       this.dob = dob;
       this.addressLine1 = addressLine1;
       this.country = country;
       this.stateRegion = stateRegion;
       this.city = city;
       this.postalCode = postalCode;
    }
   
    public String getUser() {
        return this.user;
    }
    
    public void setUser(String user) {
        this.user = user;
    }
    public User getUser_1() {
        return this.user_1;
    }
    
    public void setUser_1(User user_1) {
        this.user_1 = user_1;
    }
    public String getFirstName() {
        return this.firstName;
    }
    
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return this.lastName;
    }
    
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public Date getDob() {
        return this.dob;
    }
    
    public void setDob(Date dob) {
        this.dob = dob;
    }
    public String getAddressLine1() {
        return this.addressLine1;
    }
    
    public void setAddressLine1(String addressLine1) {
        this.addressLine1 = addressLine1;
    }
    public String getCountry() {
        return this.country;
    }
    
    public void setCountry(String country) {
        this.country = country;
    }
    public String getStateRegion() {
        return this.stateRegion;
    }
    
    public void setStateRegion(String stateRegion) {
        this.stateRegion = stateRegion;
    }
    public String getCity() {
        return this.city;
    }
    
    public void setCity(String city) {
        this.city = city;
    }
    public String getPostalCode() {
        return this.postalCode;
    }
    
    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }




}


