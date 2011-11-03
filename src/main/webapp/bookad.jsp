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
        <script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript" src="menu.js"></script>
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
           
            
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
      <td> 
           <s:include value="menu.jsp" />
        <br></br>
        <br></br>
        <br></br>
          
          
          
          
          <h1>Books Ad</h1>
    <s:actionerror/>  
    <s:form action="bookadAction">
      <tr><td>
        <s:radio name="platform"  required="true" label="Platform Devices" list="{'Target all devices','Target devices by platform','Target devices by manufacturer'}" />
      </td></tr>
      <tr><td>
        <s:radio name="location" required="true" label="Geography/Operator" list="{'Target all Geographic location','Target specific geographic location'}" />
      </td></tr>
      <tr><td>
              <s:select name="iphone" required="true" headerKey="Please select" headerValue="Please select" label="Select OS"
                  list="{'Original iPhone(2G)','iPhone 3G','iPhone 3G S','iPhone 4','iPod Touch','iPad'}" />
      </td></tr>
        <s:submit value="Save and Continue"/>
    </s:form>
    
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
