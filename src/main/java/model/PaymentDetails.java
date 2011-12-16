package model;
// Generated Nov 4, 2011 1:37:20 PM by Hibernate Tools 3.2.1.GA



/**
 * PaymentDetails generated by hbm2java
 */
public class PaymentDetails  implements java.io.Serializable {


     private String user;
     private User user_1;
     private String beneficiaryName;
     private String bankName;
     private String bankAddr;
     private String recipientAccNo;
     private String bankSwiftNo;

    public PaymentDetails() {
    }

	
    public PaymentDetails(String user, User user_1, String beneficiaryName) {
        this.user = user;
        this.user_1 = user_1;
        this.beneficiaryName = beneficiaryName;
    }
    public PaymentDetails(String user, User user_1, String beneficiaryName, String bankName, String bankAddr, String recipientAccNo, String bankSwiftNo) {
       this.user = user;
       this.user_1 = user_1;
       this.beneficiaryName = beneficiaryName;
       this.bankName = bankName;
       this.bankAddr = bankAddr;
       this.recipientAccNo = recipientAccNo;
       this.bankSwiftNo = bankSwiftNo;
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
    public String getBeneficiaryName() {
        return this.beneficiaryName;
    }
    
    public void setBeneficiaryName(String beneficiaryName) {
        this.beneficiaryName = beneficiaryName;
    }
    public String getBankName() {
        return this.bankName;
    }
    
    public void setBankName(String bankName) {
        this.bankName = bankName;
    }
    public String getBankAddr() {
        return this.bankAddr;
    }
    
    public void setBankAddr(String bankAddr) {
        this.bankAddr = bankAddr;
    }
    public String getRecipientAccNo() {
        return this.recipientAccNo;
    }
    
    public void setRecipientAccNo(String recipientAccNo) {
        this.recipientAccNo = recipientAccNo;
    }
    public String getBankSwiftNo() {
        return this.bankSwiftNo;
    }
    
    public void setBankSwiftNo(String bankSwiftNo) {
        this.bankSwiftNo = bankSwiftNo;
    }




}


