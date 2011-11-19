<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@page import="model.*"%>
     <%@ page import="java.util.*" %>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<head>
     
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::Edit Campaign::.</title>
 <style type="text/css">
.header
{
	background-image:url(images/adv1_bg.jpg);
	background-color:#91cf52;
	background-repeat:repeat;
	
	width:100%;
	height: 80px;
	margin: 0 auto;
	padding: 0px 50px;
	margin: 0;
	padding: 0;
	
}

#menu {
    margin:30px auto;
    width:80%;
}
body
{
	margin: 0;
	padding: 0;
	
	
}
.boder
{
	width:100%;
	height:10px;
	background-color:#000;
}
.button
{
	vertical-align:top;
	height:250px;
	padding-left:300px;

}
#user
{
font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
width:100%;
border-collapse:collapse;
}
#user td, #user th 
{
font-size:1.2em;
padding:15px;
}
#user th 
{
font-size:1.4em;
text-align:left;
padding-top:8px;
padding-bottom:8px;
background-color:#A7C942;
color:#fff;
}
#user tr.alt td 
{
color:#000;
background-color:#EAF2D3;
}
.footer
{
	height:60px;
	width:100%;
	background-color:#91cf52;
}
.banner
{
	height:100px;
	width:100%;
}
.box
{
width:600px;
height:1000px;
background-color:#FFF;
box-shadow: 0px 0px 0px;
padding-left:350px;
}


</style>
 <link rel="stylesheet" href="menu_style.css" type="text/css" />
 <link rel="stylesheet" href="style.css" type="text/css" />
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
   
   <div class="header" >
<img src="images/logo.jpg" width="200" height="50" />
<br />
 Welcome&nbsp; <s:property value="%{user.emailId}"/>
         </div>

<div>
<s:include value="menu.jsp"/>
</div>
<div style="height:500px; background-color:#e8fab4;" align="center" > 
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
  </div>
  <div>
    <s:include value="/footer.jsp" />
    </div>
</body>
</html>
