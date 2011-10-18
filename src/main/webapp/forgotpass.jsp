<%-- 
    Document   : forgotpass
    Created on : 15-Oct-2011, 08:56:42
    Author     : radan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
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
        <s:form action="forgotmail">
            <s:textfield name="forgetemail" label="Enter Your Email Address" />
            <s:submit value="Send Mail" />
        </s:form>
  </tr>
       </table>
        <s:include value="/footer.jsp"/>
    </body>
</html>
