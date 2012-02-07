<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Manage Sites</title>
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
  <script type="text/javascript" src="jscolor.js"></script>
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
<div style="height:500px; vertical-align:middle;" align="center" > 
        <br></br>
        <br></br>
        <br></br>
          
    <s:actionerror/>   
    <s:form action="updatesite">
     <table style="font-size:15px;">
        <tr>
        <td>
        </td>
        <td>
        <s:hidden name="publishid" value="%{publishid}" />
        <s:textfield name="sitename" label="Site Name" value="%{sitename}" />
        </td>
        </tr>
         <tr>
         <td>
        </td>
        <td>
        <s:textfield name="siteurl" label="Site Url "  value="%{siteurl}"/>
        </td>
        </tr>
         <tr>
         <td>
        </td>
        <td>
        <s:textarea label="Description" name="desc" rows="3" cols="16.7" value="%{desc}" />
        </td>
        </tr>
         <tr>
         <td>
        </td>
        <td>
        <s:textfield name="txtcolor" label="Background Color#" value="%{txtcolor}" cssClass="color"/>
        </td>
        </tr>
         <tr>
         <td>
        </td>
        <td>
        <s:textfield name="bgcolor" label="Background Text#"  value="%{bgcolor}" cssClass="color"/>
        </td></tr>
         <tr>
         <td>
        </td>
        <td>
        <s:select label="Category" name="catgry" headerKey="Please select" headerValue="Please select" list="{'Business','Education','Entertainment','Comics','Finance','Games','Healthcare and Fitness','Lifestyle','Music','Navigation ','News','Photography','Productivity','Reference','Search Tools ','Social Networking','Sports','Travel','Utilities','Weather'}" value="%{catgry}" /> 
        </td></tr>
         <tr>
         <td>
        </td>
        <td>    
        <s:submit value="Update Sites"/>
         </td></tr>
         </table>
    </s:form>    
      
      </div>
      <div>
    <s:include value="/footer.jsp" />
       </div>  
        
    </body>
</html>
 