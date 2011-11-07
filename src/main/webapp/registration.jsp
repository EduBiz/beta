<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>

<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update information</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="jquery.js"></script>
	<script type="text/javascript" src="menu.js"></script>
        <s:head theme="jquery"/>  
        <sj:head jqueryui="true" jquerytheme="flick"/> 
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
            Welcome&nbsp; <s:property value="%{user.emailId}"/>
                 
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
    <s:form action="useRegistration">
        <s:textfield name="email" label="Email id"  value="%{userdetails.user}" readonly="true" disabled="true" />
        <s:textfield name="fname" label="First Name" value="%{userdetails.firstName}" />
        <s:textfield name="lname" label="Last Name" value="%{userdetails.lastName}"/>
        <sj:datepicker name="dob" displayFormat="mm/dd/yy" label="Date of Birth" value="%{userdetails.dob}"/>
        <s:textfield name="addline1" label="Address Line1" value="%{userdetails.addressLine1}" />
        <s:textfield name="ctry" label="Country" value="%{userdetails.country}"  />
        <s:textfield name="storeg" label="State/Region" value="%{userdetails.stateRegion}" />
        <s:textfield name="city" label="City"  value="%{userdetails.city}" />
        <s:textfield name="postcode" label="Postal/Zip Code" value="%{userdetails.postalCode}" />
        <s:submit value="Update Information"/>
    </s:form>
    </td>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
