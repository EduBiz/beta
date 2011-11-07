<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@page import="model.*"%>
     <%@ page import="java.util.*" %>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<head>
      
        
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::Manage Sites::.</title>
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
         <div><a href="addsitenav.action"><input type="button" value="+Add Sites" name="+Add Sites"/></a></div> 
      <div>
                     
           <s:form name="sitelist">
                 <table id="user" cellspacing="15" cellpadding="8" >
                     <th>Site Name</th>
                    <th>Category</th>
                    <th>Site Url</th>
                    <th>Delete</th>
        <s:iterator end="1" value="sitelist" status="rowstatus">
            <s:if test="#rowstatus.odd == true">
            <tr> 
                <s:url action="editsite.action" var="editsite">
                     <s:param name="publishid" value="%{publishId}" />
                     <s:param name="sitename" value="%{siteName}" />
                     <s:param name="siteurl" value="%{siteUrl}" />
                     <s:param name="desc" value="%{description}" />
                     <s:param name="txtcolor" value="%{textColor}" />
                     <s:param name="bgcolor" value="%{bgColor}" />
                     <s:param name="catgry" value="%{category}" />
                </s:url>
                      <td><s:a href="%{editsite}"><s:property value="siteName" /></s:a> </td>   
                      <td><s:property value="category" /> </td>
                      <td><s:property value="siteUrl" /> </td>
               <s:url action="deletesite.action" var="deletesite">
                     <s:param name="publishid" value="%{publishId}" />
                     </s:url>
                <td> <s:a href="%{deletesite}">Delete</s:a> </td>
                   </tr>
                </s:if>
        <s:else>
            <tr class="alt">
                 <s:url action="editsite.action" var="editsite">
                     <s:param name="publishid" value="%{publishId}" />
                     <s:param name="sitename" value="%{siteName}" />
                     <s:param name="siteurl" value="%{siteUrl}" />
                     <s:param name="desc" value="%{description}" />
                     <s:param name="txtcolor" value="%{textColor}" />
                     <s:param name="bgcolor" value="%{bgColor}" />
                     <s:param name="catgry" value="%{category}" />
                </s:url>
                      <td><s:a href="%{editsite}"><s:property value="siteName" /></s:a> </td>   
                      <td><s:property value="category" /> </td>
                      <td><s:property value="siteUrl" /> </td>
                     
                <s:url action="deletesite.action" var="deletesite">
                     <s:param name="publishid" value="%{publishId}" />
                </s:url>
                      <td> <s:a href="%{deletesite}">Delete</s:a> </td>
                     </tr>
        </s:else>
        </s:iterator>
        </table>
                   <div id="menu"></div> 
            </s:form>     
                                                     
     </div>
	   
 </td>
 </tr>

  </table>
    <s:include value="/footer.jsp" />
</body>
</html>
