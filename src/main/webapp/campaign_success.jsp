<%-- 
    Document   : success
    Created on : Oct 6, 2011, 12:46:55 PM
    Author     : Administrator
--%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
 
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Campaign</title>
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
      <td>   
          Hi     Campaign <s:property value="campaignname" />  Successfully Created
      </td>
  </tr>  
  </table>
        <s:include value="/footer.jsp"/>
    </body>
</html>
