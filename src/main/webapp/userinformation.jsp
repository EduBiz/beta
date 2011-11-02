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
        <s:hidden name="email" label="Email id"   value="%{email}"  />
        <s:textfield name="fname" label="First Name" value="%{fname}" />
        <s:textfield name="lname" label="Last Name" value="%{lname}"/>
        <sj:datepicker name="dob" displayFormat="mm/dd/yy" label="Date of Birth" value="%{dob}"/>
        <s:textfield name="addline1" label="Address Line1" value="%{addline1}" />
        <s:textfield name="ctry" label="Country" value="%{ctry}"  />
        <s:textfield name="storeg" label="State/Region" value="%{storeg}" />
        <s:textfield name="city" label="City"  value="%{city}" />
        <s:textfield name="postcode" label="Postal/Zip Code" value="%{postcode}" />
        <s:submit value="Save Changes"/>
    </s:form>
    </td>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>