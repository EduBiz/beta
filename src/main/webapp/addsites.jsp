<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
     
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Sites</title>
        
         <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
      
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
	font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
	
	
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
height:400px;
background-color:#FFF;
box-shadow: 0px 0px 0px;
padding-left:500px;
padding-top:70px;
}


</style>
 <link rel="stylesheet" href="menu_style.css" type="text/css" />
 <link rel="stylesheet" href="style.css" type="text/css" />
    <script type="text/javascript" src="jscolor.js"></script>
</head>

    <body>
       <%/*
    Object obj = session.getAttribute("User");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }*/
    %>
      <div style="height:600px;">
<div class="header" >
<img src="images/logo.jpg" width="200" height="50" />
<br />
 Welcome&nbsp; <s:property value="email"/>
</div>

<div>
<ul class="menu">

	<li class="top"><a  href="loadlist.action" class="top_link"><span>HOME</span></a></li>
	<li class="top"><a href="editcamplist.action" class="top_link"><span>CAMPAIGN</span></a>
		<ul class="sub">
			<li><a href="addcampnav.action">ADD CAMPAIGN</a></li>			
			<li><a href="editcamplist.action">EDIT CAMPAIGN</a></li>
            
		</ul>
	</li>
	<li class="top"><a href="showsitenav.action" class="top_link"><span>SITE</span></a>
		<ul class="sub">
			<li><a href="addsitenav.action">ADD SITE</a></li>			
            <li><a href="editsitenav.action">EDIT SITE</a></li>
           
		</ul>
	</li>
	<li class="top"><a href="rcharts.action" class="top_link"><span>REPORT</span></a>
    <ul class="sub">
			<li><a href="rcharts.action">CAMPAIGN REPORT</a></li>			
            <li><a href="sitecharts.action">SITE REPORT</a></li>
           
		</ul>
    
    </li>
	<li class="top"><a href="accountinformation.action" class="top_link"><span>ACCOUNTS</span></a>
     <ul class="sub">
			<li><a href="accountinformation.action">ACCOUNTS INFORMATION</a></li>			
            <li><a href="#">TRANSACTION DETAILS</a></li>
            <li><a href="#">PAYMENT DETAILS</a></li>		
           
		</ul></li>
        <li class="top"><a href="logoutaction.action" class="top_link"><span>LOGOUT</span></a></li>
</ul>
</div>
<div class="box">
<div>
<p style="font-size:30px; color:#030; padding-left:70px;">ADD SITE</p>
</div>
          
          
      <div style="width:100%;">    
    <s:actionerror/>   
    <s:form action="addsite" theme="simple">
        <table style="font-size:15px;">
        <tr>
        <td>
        Site Name
        </td>
        <td>
        <s:textfield name="sitename" label="Site Name" />
        </td>
        </tr>
        <tr>
         <td>
         Site Url
        </td>
        <td>
        <s:textfield name="siteurl" label="Site Url "  value="http://"/>
        </td></tr>
        <tr>
         <td>
         Description
        </td>
        <td>
        <s:textarea label="Description" name="desc" rows="3" cols="16.7"/>
        </td>
        </tr>
        <tr>
         <td>
         Background Color
        </td>
        <td>
        <s:textfield name="txtcolor" label="Background Color" cssClass="color" />
        </td>
        </tr>
        <tr>
         <td>
         Background Text
        </td>
        <td>
        <s:textfield name="bgcolor" label="Background Text" cssClass="color"  />
        </td></tr>
        <tr>
         <td>
         Category
        </td>
        <td>
        <s:select label="Category" name="catgry" headerKey="Please select" headerValue="Please select" list="{'Business','Education','Entertainment','Comics','Finance','Games','Healthcare and Fitness','Lifestyle','Music','Navigation ','News','Photography','Productivity','Reference','Search Tools ','Social Networking','Sports','Travel','Utilities','Weather'}" />
        </td></tr>
        <tr>
         <td>
        </td>
        <td>
        <s:submit value="Add Sites"/>
         </td></tr>
         </table>
    </s:form>    
      
      </div>
      </div>
      </div>
       
    <div>
        <s:include value="/footer.jsp"/>
        </div>

</div>
    </body>
</html>
 