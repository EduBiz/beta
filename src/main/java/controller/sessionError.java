/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import com.opensymphony.xwork2.ActionSupport;

/**
 *
 * @author Administrator
 */
public class sessionError extends ActionSupport {
    
    public sessionError()
    {}
    
    @Override
    public String execute() throws Exception {
        
       addActionMessage("Your Session Expired Please Login to access the content requested");
        return "success";
    }

  public String campaignerror() throws Exception {
        
       addActionMessage("Your Session Expired Please Enter Values from the Main Page");
        return "success";
    }

}
