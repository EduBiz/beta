package model;
// Generated Oct 28, 2011 6:38:20 PM by Hibernate Tools 3.2.1.GA


import java.util.HashSet;
import java.util.Set;

/**
 * User generated by hbm2java
 */
public class User  implements java.io.Serializable {


     private String emailId;
     private String password;
     private String userType;
     private String userName;
     private Set<UserTransaction> userTransactions = new HashSet<UserTransaction>(0);
     private Set<Publish> publishs = new HashSet<Publish>(0);
     private Set<UserAccount> userAccounts = new HashSet<UserAccount>(0);
     private Set<PaymentDetails> paymentDetailses = new HashSet<PaymentDetails>(0);
     private Set<Campaign> campaigns = new HashSet<Campaign>(0);
     private Set<UserDetails> userDetailses = new HashSet<UserDetails>(0);

    public User() {
    }

	
    public User(String emailId, String password, String userType) {
        this.emailId = emailId;
        this.password = password;
        this.userType = userType;
    }
    public User(String emailId, String password, String userType, String userName, Set<UserTransaction> userTransactions, Set<Publish> publishs, Set<UserAccount> userAccounts, Set<PaymentDetails> paymentDetailses, Set<Campaign> campaigns, Set<UserDetails> userDetailses) {
       this.emailId = emailId;
       this.password = password;
       this.userType = userType;
       this.userName = userName;
       this.userTransactions = userTransactions;
       this.publishs = publishs;
       this.userAccounts = userAccounts;
       this.paymentDetailses = paymentDetailses;
       this.campaigns = campaigns;
       this.userDetailses = userDetailses;
    }
   
    public String getEmailId() {
        return this.emailId;
    }
    
    public void setEmailId(String emailId) {
        this.emailId = emailId;
    }
    public String getPassword() {
        return this.password;
    }
    
    public void setPassword(String password) {
        this.password = password;
    }
    public String getUserType() {
        return this.userType;
    }
    
    public void setUserType(String userType) {
        this.userType = userType;
    }
    public String getUserName() {
        return this.userName;
    }
    
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public Set<UserTransaction> getUserTransactions() {
        return this.userTransactions;
    }
    
    public void setUserTransactions(Set<UserTransaction> userTransactions) {
        this.userTransactions = userTransactions;
    }
    public Set<Publish> getPublishs() {
        return this.publishs;
    }
    
    public void setPublishs(Set<Publish> publishs) {
        this.publishs = publishs;
    }
    public Set<UserAccount> getUserAccounts() {
        return this.userAccounts;
    }
    
    public void setUserAccounts(Set<UserAccount> userAccounts) {
        this.userAccounts = userAccounts;
    }
    public Set<PaymentDetails> getPaymentDetailses() {
        return this.paymentDetailses;
    }
    
    public void setPaymentDetailses(Set<PaymentDetails> paymentDetailses) {
        this.paymentDetailses = paymentDetailses;
    }
    public Set<Campaign> getCampaigns() {
        return this.campaigns;
    }
    
    public void setCampaigns(Set<Campaign> campaigns) {
        this.campaigns = campaigns;
    }
    public Set<UserDetails> getUserDetailses() {
        return this.userDetailses;
    }
    
    public void setUserDetailses(Set<UserDetails> userDetailses) {
        this.userDetailses = userDetailses;
    }




}


