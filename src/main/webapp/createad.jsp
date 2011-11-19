<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<html>
     <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
     
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Campaign Creation</title>
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
        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        
    </head>
    <body>

<%
    Object obj = session.getAttribute("User");
    Object obj1 = session.getAttribute("campa");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
    else if(obj1==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessioncampaignError.action");
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
       
     
    <s:actionerror/>  
    <s:form action="createAction" enctype="multipart/form-data">
    <table align="center"><tr><td>
         <h3>Choose Ad Type:</h3>
      </td></tr><tr><td>
         <s:radio name="adtype" label="Select" list="{'Text + Tile','Mobile Images Ads','Tablets'}" />
      </td></tr><tr><td>
        <h3>Ad Information:</h3>
      </td></tr><tr><td>
          <s:textfield name="adname" label="Ad Name" />
          <s:textfield name="url" label="URL:" />
          <s:textfield name="displayurl" label="Display URL:" />
      </td></tr><tr><td>
        <h3>Creative:</h3>
      </td></tr><tr><td>
           <s:textfield name="adtext" label="Ad Text" />
           <s:file label="Add Image" name="addimage"></s:file>
           <s:file label="Tile Image" name="tileimage"></s:file>
          </td><td>
              <s:submit value="Create And Finish" align="center" />
          </td><td align="center">
               <s:a href="campaignCreation.jsp">Create Another Ad</s:a></td></tr>
    </s:form>
             
         </table> 
       </table>
     <br></br>
     </div>
     <div>
    <s:include value="/footer.jsp" />
    </div>
 
    </body>
</html>
