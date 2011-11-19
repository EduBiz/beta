
<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@page import="java.text.DateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%> 
<!DOCTYPE html>
<html>
      
    <head>
       
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
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
        <s:head theme="jquery" />  
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
<div style="height:700px; font-size:18px; font-family:'MS Serif', 'New York', serif; color:#000; vertical-align:middle;" align="center" > 
        <br></br>
        <br></br>
        <br></br>
      
      <s:actionerror theme="jquery"/>
      <s:form action="campaignMain">
          <s:textfield name="campaignname" label="Campaign Name" required="true" />
          <sj:datepicker name="startdate" displayFormat="mm/dd/yy" label="Start Date" />
          <sj:datepicker name="enddate" displayFormat="mm/dd/yy" label="End Date" />
        <s:textfield name="dailybdgt" label="Daily Budget $" required="true" />
        <s:radio label="Delivery Type" name="deliverytype" list="{'Standard','Accelerated'}" required="true" />
        <s:select name="promotype"  label="Promotype" headerKey="Please select" headerValue="Please select" required="true"
    list="{'Website','BlackBerry Application Ad','Andriod Application Ad','Iphone Application Ad','iTunes Media Ad','Streaming Video Ad','Books Ad','Click to Call Ad','Click to Map Ad'}" />
        <s:textarea label="Note:(optional)" name="note" rows="15"/>

        <s:submit value="Save and Continue"/>
    </s:form>
      </div>
      <div> 
    <s:include value="/footer.jsp" />
         </div>
        
    </body>
</html>
