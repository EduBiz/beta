<%-- 
    Document   : signup
    Created on : Oct 13, 2011, 10:04:32 AM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
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
        <s:form  method="post" action="signup" >
        <s:textfield name="uname" label="User Name" />
        <s:textfield name="email" label="Email id" />
        <s:password name="pwd" label="Password" />
        <s:password name="confirmpwd" label="Confirm Password" />
        <s:submit value="Register"/>
        </s:form>
  </tr>
  </table>
  <s:include value="/footer.jsp"/>
      
 
          
    </body>
</html>
