<%-- 
    Document   : success
    Created on : Oct 6, 2011, 12:46:55 PM
    Author     : Administrator
--%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
 
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Campaign</title>
      
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
 
    </head>
    <body>
          <%/*
    Object obj = session.getAttribute("User");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
   */%>
       <div style="height:600px;">
<div class="header" >
<img src="images/logo.jpg" width="200" height="50" />
<br />
 Welcome&nbsp; <s:property value="%{user.emailId}"/> 
       </div>

<div>
<s:include value="menu.jsp"/>
</div>

 
          
        <div style="height:443px; font-size:24px; font-family:'MS Serif', 'New York', serif; color:#000; vertical-align:middle;" align="center" >  
          <br>
          <br>
          <br>
          <br>
          <br>
          <br>
          Hi     Campaign <s:property value="campaignname" />  Successfully Created
      </div>
      </div>
      <div >
        <s:include value="/footer.jsp"/>
        </div>
        </div>
    </body>
</html>
