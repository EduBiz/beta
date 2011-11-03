<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@page import="model.*"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::AdZappy::.</title>
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
        
        
        
       
		                               
       <div class="menu" >
           
           <s:form name="userdetails">
               <table>
               <tr>  <td>    
           
             
               <s:iterator value="uselist">	
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
                   <td class="getstartedwrap"><s:a href="%{edituserdetails}" cssClass="getstarted" >Click to continue</s:a></td> 
                
        
        </s:iterator>
                   </td>  
                 


</tr>

               </table>
            </s:form>
       </div>
        
      
      
       
 </td>
 </tr>

  </table>
    <s:include value="/footer.jsp" />
</body>
</html>
