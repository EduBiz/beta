<%-- 
    Document   : forgotpass
    Created on : 15-Oct-2011, 08:56:42
    Author     : radan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
    <head>
        <s:head theme="jquery"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Forget Password</title>
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
<script type="text/javascript" src="sliderman.1.3.6.js"></script>
	<link rel="stylesheet" type="text/css" href="sliderman.css" />
 <link rel="stylesheet" href="menu1.css" type="text/css" />
 <link rel="stylesheet" href="style.css" type="text/css" />
 
 
 

 
 
</head>

<div class="header" >
<img src="images/logo.jpg" width="200" height="50" />
<br />
 Welcome&nbsp; <s:property value="email"/>
</div>
<div>
<s:include value="menu1.jsp"/>
</div>
 <div  align="center" class="box" > 
 <br>
 <br>
 
 <div>
 <img src="images/passwords.gif" width="300" height="150"/>
 </div>
 <br>
 <s:actionerror theme="jquery"/> <s:actionmessage theme="jquery"/>
 <div align="center" >
 <p>ENTER YOUR EMAIL ID:</p>
        <s:actionerror/>
        <s:form action="forgotmail">
            <s:textfield name="forgetemail" label="Enter Your Email Address" />
            <s:submit value="Send Mail" />
        </s:form>
</div>
</div>
<div>
        <s:include value="/footer.jsp"/>
        </div>
    </body>
</html>
