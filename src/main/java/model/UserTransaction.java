package model;
// Generated Nov 1, 2011 7:38:31 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;
import java.util.Date;

/**
 * UserTransaction generated by hbm2java
 */
public class UserTransaction  implements java.io.Serializable {


     private Long transId;
     private User user;
     private String transType;
     private BigDecimal transAmount;
     private Date transDate;

    public UserTransaction() {
    }

	
    public UserTransaction(User user, BigDecimal transAmount) {
        this.user = user;
        this.transAmount = transAmount;
    }
    public UserTransaction(User user, String transType, BigDecimal transAmount, Date transDate) {
       this.user = user;
       this.transType = transType;
       this.transAmount = transAmount;
       this.transDate = transDate;
    }
   
    public Long getTransId() {
        return this.transId;
    }
    
    public void setTransId(Long transId) {
        this.transId = transId;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getTransType() {
        return this.transType;
    }
    
    public void setTransType(String transType) {
        this.transType = transType;
    }
    public BigDecimal getTransAmount() {
        return this.transAmount;
    }
    
    public void setTransAmount(BigDecimal transAmount) {
        this.transAmount = transAmount;
    }
    public Date getTransDate() {
        return this.transDate;
    }
    
    public void setTransDate(Date transDate) {
        this.transDate = transDate;
    }




}


