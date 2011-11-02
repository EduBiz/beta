
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
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
            <s:include value="navigation.jsp" />
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="325" valign="top">	
        
           <div class="getstartedwrap">
               <a href="campaignCreation.jsp" class="getstarted">Add Campaign</a>
		
            <s:form action="showlist">
                <table cellspacing="20" align="center" cellpadding="12" >
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
            </div></td></tr>
        
        
            </table>
        		
    <s:include value="/footer.jsp" />
</body>
</html>
