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
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
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
  <tr>
    <s:actionerror/>   
    <s:form action="useRegistration">
        <s:textfield name="fname" label="First Name" />
        <s:textfield name="lname" label="Last Name" />
        <s:textfield name="email" label="Email id" />
        <s:password name="pwd" label="Password" />
        <s:password name="pwd1" label=" Confirm Password" />
        <s:textfield name="dob" label="Date of Birth (DD-MM-YY)" />
        <s:textfield name="addline1" label="Address Line1" />
        <s:textfield name="ctry" label="Country" />
        <s:textfield name="storeg" label="State/Region" />
        <s:textfield name="city" label="City" />
        <s:textfield name="postcode" label="Postal/Zip Code" />
        <s:submit value="Register"/>
    </s:form>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
