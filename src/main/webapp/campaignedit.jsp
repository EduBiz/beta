
<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>  
    <%-- <%@ taglib prefix="sd" uri="/struts-dojo-tags" %>--%>
     
    <head>
       <%-- <sd:head/>   --%>
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
           
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
      <td height="325" valign="top">	
        <br></br>
        
        <s:include value="menu.jsp" />
        <br></br>
        <br></br>
        <br></br>
      <s:actionerror/>  
    <s:form action="updatecampaign">
        <s:hidden name="campaid" value="%{campaid}" />
        <s:textfield name="campaignname" label="Campaign Name" required="true" />
          <sj:datepicker name="startdate" value="%{sdate}" displayFormat="mm/dd/yy" label="Start Date" />
          <sj:datepicker name="enddate" value="%{edate}" displayFormat="mm/dd/yy" label="End Date" />
        <s:textfield name="dailybdgt" label="Daily Budget $" required="true" />
        <s:radio label="Delivery Type" name="deliverytype" list="{'Standard','Accelerated'}" required="true" />
        <s:select name="promotype"  label="Promotype" headerKey="Please select" headerValue="Please select" required="true"
                  list="{'Website','BlackBerry Application Ad','Andriod Application Ad','Iphone Application Ad','iTunes Media Ad','Streaming Video Ad','Books Ad','Click to Call Ad','Click to Map Ad'}" />
    
        <s:textarea label="Note:(optional)" name="note" rows="15"/>

      
    <s:submit value="Save Changes" validate="true" />
   
    </s:form>
      </td>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
