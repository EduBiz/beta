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
  <tr><td>
          <br></br>
        
        <s:include value="menu.jsp" />
          <br></br>
          <br></br>
          <br></br>
          <br></br>
          
        Hi     <s:property value="fname" />   your account information successfully Updated
      </td>      
  </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
