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
    Object obj1 = session.getAttribute("campa");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
    else if(obj1==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessioncampaignError.action");
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
        </td>
      </tr>
    </table></td>
  </tr>
  <tr><td>
    <s:actionerror/>  
    <s:form action="createAction">
      <tr><td>
         <h3>Choose Ad Type:</h3>
      </td></tr><tr><td>
         <s:radio name="adtype" label="Select" list="{'Text + Tile','Mobile Images Ads','Tablets'}" />
      </td></tr><tr><td>
        <h3>Ad Information:</h3>
      </td></tr><tr><td>
          <s:textfield name="adname" label="Ad Name" />
          <s:textfield name="url" label="URL:" />
          <s:textfield name="displayurl" label="Display URL:" />
      </td></tr><tr><td>
        <h3>Creative:</h3>
      </td></tr><tr><td>
           <s:textfield name="adtext" label="Ad Text" />
           <s:textfield name="addimage" label="Ad Image" />
           <s:textfield name="tileimage" label="Tile Image" />
          </td></tr><tr><td>
              <s:submit value="Create And Finish" align="center" />
          
    </s:form>
              <a href="campaignCreation.jsp">Create Another Ad</a>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
