<%-- 
    Document   : signup
    Created on : Oct 13, 2011, 10:04:32 AM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
         <link rel="stylesheet" href="menu1.css" type="text/css" />
 <link rel="stylesheet" href="style.css" type="text/css" />
 
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
 Welcome&nbsp;
            
          
      </div>
<div>
<s:include value="menu1.jsp"/>
</div>

  
 <div  style="padding-left:300px;  height:443px;" class="box" align="justify">
 <br>
 <br>
 <br>
 <div align="left">
<img src="images/Sign-up_off.png" align="left">
</div>
<div align="">
 <p >
 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;SIGNUP
 </p>
       <s:actionerror/>   
        <s:form  method="post" action="signup" >
        <s:textfield name="uname" label="User Name" />
        <s:textfield name="email" label="Email id" />
        <s:password name="pwd" label="Password" />
        <s:password name="confirmpwd" label="Confirm Password" />
        <s:submit value="Register"/>
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
