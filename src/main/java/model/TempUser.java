package model;
// Generated 20-Oct-2011 12:30:24 by Hibernate Tools 3.2.1.GA



/**
 * TempUser generated by hbm2java
 */
public class TempUser  implements java.io.Serializable {


     private int confirmCode;
     private String emailId;
     private String password;
     private String userType;
     private String userName;

    public TempUser() {
    }

    public TempUser(int confirmCode, String emailId, String password, String userType, String userName) {
       this.confirmCode = confirmCode;
       this.emailId = emailId;
       this.password = password;
       this.userType = userType;
       this.userName = userName;
    }
   
    public int getConfirmCode() {
        return this.confirmCode;
    }
    
    public void setConfirmCode(int confirmCode) {
        this.confirmCode = confirmCode;
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




}


