<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@page import="model.*"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<head>
   
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::AdZappy::.</title>
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
height:500px;
background-color:#FFF;
box-shadow: 0px 0px 0px;
padding-left:350px;
font-family:Verdana, Geneva, sans-serif;
font-size:18px;
}


</style>
 <link rel="stylesheet" href="menu_style.css" type="text/css" />
 <link rel="stylesheet" href="style.css" type="text/css" />

         <s:head theme="jquery"/>  
        <sj:head jqueryui="true" jquerytheme="flick"/> 
        
</head>

<body>
    <%/*
    Object obj = session.getAttribute("User");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
    */%>
   
   <div class="header" >
<img src="images/logo.jpg" width="200" height="50" />
<br />
 Welcome&nbsp; <s:property value="%{user.emailId}"/>
         </div>

<div>
<s:include value="menu.jsp"/>
</div><div class="box" align="center" >  
           
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
       
        
      
      
       
 </td>
 </tr>

  </table>
 </div>
 <div>

    <s:include value="/footer.jsp" />
    </div>
</body>
</html>
