<%-- 
    Document   : success1
    Created on : Oct 15, 2011, 6:56:10 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup Success</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" href="menu_style.css" type="text/css" />
 <link href="style.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
.header
{
	background-image:url(images/adv_bg.jpg);
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

background-color:#FFF;
box-shadow: 0px 0px 0px;
padding-left:450px;
padding-top:90px;
font-family:Verdana, Geneva, sans-serif;
font-size:18px;
}


</style>
    </head>
    <body>
    <div style="height:600px;">
<div class="header" >
<img src="images/logo.jpg" width="200" height="50" />
<br />
 Welcome&nbsp; <s:property value="email"/>
</div>

<div>
    <s:include value="/menu.jsp"/>
</div>
<div class="box">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/thank_you-8130.gif"/>
          <p>  Hi    <s:property value="email" /> thanks for registering with us . Please check your email for completing the activation process.</p>
      </div>
      </div>
   <div>
        <s:include value="/footer.jsp"/>
        </div>
       
    </body>
</html>
