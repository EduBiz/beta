 <%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <s:head/>
        <sj:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        
    </head>
    <body>
         



<%
    Object obj = session.getAttribute("User");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
    %>
          <table width="990" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="99" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="66" align="left" valign="bottom"><img src="images/logo.jpg" width="241" height="49" /></td>
      </tr>
      <tr>
        <td height="24" valign="bottom">
            <s:include value="navigation.jsp" />
            <h3>Demographics</h3>
        </td>
      </tr>
    </table></td>
  </tr>
  <tr><td>
    <s:actionerror/>  
    <s:form action="demographicAction">
        
         <h3>Gender</h3>
         <s:radio name="gender" label="Select Gender" list="{'All User','Male','Female'}" />

      <h3>Age</h3>

      <s:radio name="age" label="Select Age" list="{'All','9-15','16-28','29-35','Above 35'}" />         
                    
            	
        <s:submit value="Save and Continue"/>
    </s:form>
      </td>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>

		