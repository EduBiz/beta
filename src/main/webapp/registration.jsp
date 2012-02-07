<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<!DOCTYPE html>

<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update information</title>
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
</div>
<div align="center" class="box" > 
        <br></br>
       
          
          <p>ACCOUNT INFORMATION</p>
          
          
    <s:actionerror/>   
    <s:form action="useRegistration">
        <s:textfield name="email" label="Email id"  value="%{userdetails.user}" readonly="true" disabled="true" />
        <s:textfield name="fname" label="First Name" value="%{userdetails.firstName}" />
        <s:textfield name="lname" label="Last Name" value="%{userdetails.lastName}"/>
        <sj:datepicker name="dob" displayFormat="mm/dd/yy" label="Date of Birth" value="%{userdetails.dob}"/>
        <s:textfield name="addline1" label="Address Line1" value="%{userdetails.addressLine1}" />
        <s:textfield name="ctry" label="Country" value="%{userdetails.country}"  />
        <s:textfield name="storeg" label="State/Region" value="%{userdetails.stateRegion}" />
        <s:textfield name="city" label="City"  value="%{userdetails.city}" />
        <s:textfield name="postcode" label="Postal/Zip Code" value="%{userdetails.postalCode}" />
        <s:submit value="Update Information"/>
    </s:form>
    </div>
    <div> 
    <s:include value="/footer.jsp" />
        </div> 
        
    </body>
</html>
