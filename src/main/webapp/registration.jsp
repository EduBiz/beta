<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <s:head/>
        <sj:head/>
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
  <tr><td>
    <s:actionerror/>   
    <s:form action="useRegistration">
        <s:textfield name="fname" label="First Name" />
        <s:textfield name="lname" label="Last Name" />
        <s:textfield name="email" label="Email id" />
        <sj:datepicker name="dob" displayFormat="yy/mm/dd" label="Date of Birth"/>
        <s:textfield name="addline1" label="Address Line1" />
        <s:textfield name="ctry" label="Country" />
        <s:textfield name="storeg" label="State/Region" />
        <s:textfield name="city" label="City" />
        <s:textfield name="postcode" label="Postal/Zip Code" />
        <s:submit value="Save"/>
    </s:form>
    </td>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
