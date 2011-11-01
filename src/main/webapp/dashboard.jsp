<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@page import="model.*"%>
     
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::AdZappy::.</title>
<link href="style.css" rel="stylesheet" type="text/css" />
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
            Welcome&nbsp;<s:property value="email" />&nbsp;
            <s:include value="navigationdashboard.jsp" />
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="325" valign="top">	
        
            
            <div class="getstartedwrap">
               <a href="campaignCreation.jsp" class="getstarted">Add Campaign</a>
		
            <s:form action="showlist">
                <table cellspacing="15" cellpadding="8" >
                    <th>Campaign Name</th>
                    <th>Created</th>
                    <th>Budget</th>
                     <th>Delete</th>
        <s:iterator value="camplist" >
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
        </s:iterator>
        </table>
            </s:form>
            </div>
       
		                               
       <div class="getstartedwrap">
							
           <s:url action="edituserdetails.action" var="edituserdetails"   >
                     <s:param name="email" value="%{email}" />
                     <s:param name="fname" value="%{firstName}" />
                     <s:param name="lname" value="%{lastName}" />
                     <s:param name="dob" value="%{dob}" />
                     <s:param name="addline1" value="%{addressLine1}" />
                     <s:param name="ctry" value="%{country}" />
                     <s:param name="storeg" value="%{stateRegion}" />
                     <s:param name="city" value="%{city}" />
                     <s:param name="postcode" value="%{postalCode}" />
                     
                     </s:url>
                 <s:a href="%{edituserdetails}"  cssClass="getstarted">Account Information</s:a>    
                                                        
       </div>
        <div class="getstartedwrap">
                <a href="addsites.jsp" class="getstarted">Add Sites</a>
        <%-- <form action="#" method="post" id="loginform">   --%>
        </div>                                 
                                                    
      <div class="getstartedwrap">
                     
           <s:form>
                <table cellspacing="15" cellpadding="8" >
               <tr> <th>Site Name</th>
                    <th>Category</th>
                    <th>Site Url</th>
                    <th>Delete</th></tr>
        <s:iterator value="sitelist" >
            <tr> 
                                                                                             
                     <s:url action="editsite.action" var="editsite">
                     <s:param name="publishid" value="%{publishId}" />
                     <s:param name="sitename" value="%{siteName}" />
                     <s:param name="siteurl" value="%{siteUrl}" />
                     <s:param name="desc" value="%{desc}" />
                     <s:param name="txtcolor" value="%{textColor}" />
                     <s:param name="bgcolor" value="%{bgColor}" />
                     <s:param name="catgry" value="%{category}" />
                 
                     </s:url>
                      <td><s:a href="%{editsite}"><s:property value="siteName" /></s:a> </td>   
  
                      <td><s:property value="category" /> </td>
                      <td><s:property value="siteUrl" /> </td>
                      
                      
                      <s:url action="deletesite.action" var="deletesite">
                     <s:param name="campaid" value="%{campaignId}" />
                     </s:url>
                <td> <s:a href="%{deletesite}">Delete</s:a> </td>
                      
                      
                     </tr>
        </s:iterator>
        </table>
            </s:form>     
                      
                      
                      
                      
     </div>
	
      
      
      
      
       
 </td>
 </tr>

  </table>
    <s:include value="/footer.jsp" />
</body>
</html>
