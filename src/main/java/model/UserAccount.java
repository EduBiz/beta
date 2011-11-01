package model;
// Generated Oct 30, 2011 6:58:50 PM by Hibernate Tools 3.2.1.GA


import java.math.BigDecimal;

/**
 * UserAccount generated by hbm2java
 */
public class UserAccount  implements java.io.Serializable {


     private String user;
     private User user_1;
     private BigDecimal balanceAmount;
     private BigDecimal prevBalance;

    public UserAccount() {
    }

    public UserAccount(String user, User user_1, BigDecimal balanceAmount, BigDecimal prevBalance) {
       this.user = user;
       this.user_1 = user_1;
       this.balanceAmount = balanceAmount;
       this.prevBalance = prevBalance;
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
    public BigDecimal getBalanceAmount() {
        return this.balanceAmount;
    }
    
    public void setBalanceAmount(BigDecimal balanceAmount) {
        this.balanceAmount = balanceAmount;
    }
    public BigDecimal getPrevBalance() {
        return this.prevBalance;
    }
    
    public void setPrevBalance(BigDecimal prevBalance) {
        this.prevBalance = prevBalance;
    }




}


