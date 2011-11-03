<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@page import="model.*"%>
     <%@ page import="java.util.*" %>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::Edit Campaign::.</title>
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
  <tr>
    <td height="325" valign="top">	
        <br></br>
        
        <s:include value="menu.jsp" />
        <br></br>
        <br></br>
        <br></br>
         <div><a href="addcampnav.action"><input type="button" value="+Add Campaign" name="+Add Campaign"/></a></div>
        <div>
            <s:form action="showlist">
               <table id="user" cellspacing="15" cellpadding="8" >
                    <th>Campaign Name</th>
                    <th>Created</th>
                    <th>Budget</th>
                     <th>Delete</th>   
                              
        <s:iterator end="1" value="camplist" status="rowstatus">
           <s:if test="#rowstatus.odd == true">
               <tr>
                <s:url action="editcampaign.action" var="editcampaign">
                     <s:param name="campaid" value="%{campaignId}" />
                     <s:param name="campaignname" value="%{campaignName}" />
                     <s:param name="sdate" value="%{startDate}" />
                     <s:param name="edate" value="%{endDate}" />
                     <s:param name="dailybdgt" value="%{dialyBudget}" />
                     <s:param name="deliverytype" value="%{deliveryMethod}" />
                     <s:param name="note" value="%{note}" />
                     <s:param name="promotype" value="%{promoType}" />
                     </s:url>
                <td> <s:a href="%{editcampaign}"><s:property value="campaignName" /></s:a> </td>
                <td><s:property value="startDate" /> </td>
                <td><s:property value="dialyBudget" /> </td>
                
                <s:url action="deletecampaign.action" var="editcampaign1">
                     <s:param name="campaid" value="%{campaignId}" />
                     </s:url>
                <td> <s:a href="%{editcampaign1}">Delete</s:a> </td>
            </tr>
        </s:if>
        <s:else>
            <tr class="alt">
                <s:url action="editcampaign.action" var="editcampaign">
                     <s:param name="campaid" value="%{campaignId}" />
                     <s:param name="campaignname" value="%{campaignName}" />
                     <s:param name="sdate" value="%{startDate}" />
                     <s:param name="edate" value="%{endDate}" />
                     <s:param name="dailybdgt" value="%{dialyBudget}" />
                     <s:param name="deliverytype" value="%{deliveryMethod}" />
                     <s:param name="note" value="%{note}" />
                     <s:param name="promotype" value="%{promoType}" />
                     </s:url>
                <td> <s:a href="%{editcampaign}"><s:property value="campaignName" /></s:a> </td>
                <td><s:property value="startDate" /> </td>
                <td><s:property value="dialyBudget" /> </td>
                
                <s:url action="deletecampaign.action" var="editcampaign1">
                     <s:param name="campaid" value="%{campaignId}" />
                     </s:url>
                <td> <s:a href="%{editcampaign1}">Delete</s:a> </td>
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
