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
          <s:include value="navigationdashboard.jsp" />
            
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
      <td> <h1>Books Ad</h1>
    <s:actionerror/>  
    <s:form action="clicktocallAction">
 
        
        <s:radio name="platform" label="Platform Devices" list="{'Target all devices','Target devices by platform','Target devices by manufacturer'}" />
  
        <s:radio name="location" label="Geography/Operator" list="{'Target all Geographic location','Target specific geographic location'}" />

        <br>
        <h3>I-phone & Android</h3>
        <s:select name="iphone" headerKey="Please select" headerValue="Please select"
                  list="{'Apple','iPhone','Android','Acer','Archos','Coby','Dell','Fujitsu','Google','HTC','Huawei','KT Tech','Kyocera','Lenovo','LG','Motorola','NEC','Nextbook','Pantech','Samsung','Sharp','SonyEricsson','T-Mobile','Toshiba','Verizon','ZTE'}" />
     
        <br><br>
        <s:submit value="Save and Continue"/>
    </s:form>
      </td>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
