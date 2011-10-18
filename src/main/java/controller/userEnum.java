/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/**
 *
 * @author Administrator
 */
public enum userEnum {
    
    
    
    NewUser("New_User"),Reg_User("Registered_user"),NotRegistered("Not_Activated"),Act_User("Activated");
    
    private String userType;
    
    private userEnum(String userType)
    {
    this.userType=userType;
    }

    /**
     * @return the userType
     */
    public String getUserType() {
        return userType;
    }
}
