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
        <title>Manage Sites</title>
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
  <tr><td>
          
          <td height="325" valign="top">	
        <br></br>
        
        <s:include value="menu.jsp" />
        <br></br>
        <br></br>
        <br></br>
          
    <s:actionerror/>   
    <s:form action="updatesite">
        <s:hidden name="publishid" value="%{publishid}" />
        <s:textfield name="sitename" label="Site Name" value="%{sitename}" />
        <s:textfield name="siteurl" label="Site Url "  value="%{siteurl}"/>
        <s:textarea label="Description" name="desc" rows="3" cols="16.7" value="%{desc}" />
        <s:textfield name="txtcolor" label="Background Color#" value="%{txtcolor}" tooltip="eg:#9999"/>
        <s:textfield name="bgcolor" label="Background Text#"  value="%{bgcolor}"  tooltip="eg:#9999"/>
        <s:select label="Category" name="catgry" headerKey="Please select" headerValue="Please select" list="{'Business','Education','Entertainment','Comics','Finance','Games','Healthcare and Fitness','Lifestyle','Music','Navigation ','News','Photography','Productivity','Reference','Search Tools ','Social Networking','Sports','Travel','Utilities','Weather'}" value="%{catgry}" />     
        <s:submit value="Update Sites"/>
         
    </s:form>    
      
      </td>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
 