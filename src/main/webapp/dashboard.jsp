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
            <s:include value="navigation.jsp" />
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="325" valign="top">	
        
                                            <div class="getstartedwrap">
							<a href="campaignCreation.jsp" class="getstarted">Add Campaign</a>
						</div>
                                                                          
							<div style="clear: both;"></div>
			</td>
              </tr>
        <tr>
            <s:form action="showlist">
            <table border="1" >
            <tr>
                <th>Campaign Name</th>
            </tr>
        <s:iterator value="camplist" >
            <tr>
                <td><s:property value="campaignName" /> </td>
            </tr>
        </s:iterator>
        </table>
            </s:form>
        </tr>
        
        
            </table>
        		
    <s:include value="/footer.jsp" />
</body>
</html>
