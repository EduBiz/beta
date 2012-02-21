<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<%@taglib uri="/struts-tags" prefix="s"%>
     
<!DOCTYPE html>
<html>
      
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
  <link rel="stylesheet" href="style2.css" type="text/css" />
         <s:head theme="jquery"/> 
         
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
<div style="height:500px; font-size:18px; font-family:'MS Serif', 'New York', serif; color:#000; vertical-align:middle;" align="center" > 
        <br></br>
        <br></br>
          <div align="center" id="stepWrapper">
                <table id="steps" class="firstSelected" width="920px" cellspacing="0" cellpadding="0">
                    <tr>
                        <td>Step 1- Campaign Info</td>
                        <td class="selected">Step 2- Ad Type</td>
                        <td>Step 3- Demographics</td>
                        <td>Step 4- Creation</td>
                    </tr>
                </table>
            </div>
       
          <h1>BlackBerry</h1>
          <div style="width: 920px;">
              
          <div style=" width: 450px; height: 200px; float: left;" >
    <s:actionerror/>  
    <table><tr><td>
    <s:form action="blackberryAction">
      <tr><td>
        <s:radio name="platform"  required="true" label="Select Device" list="{'Target all devices','Target devices by platform','Target devices by manufacturer'}" />
      </td></tr>
      <tr><td>
        <s:radio name="location" required="true" label="Select Operator" list="{'Target all Geographic location','Target specific geographic location'}" />
      </td></tr>
      <tr><td>   
              <tr><td><p>Select Os</p>
                        <select name="blackberry" required="true" onChange="if(this.value!=''){document.getElementById('fruit').src='images/bbimage/'+this.value+'.jpg';}">
                            <option value="Please select">Please select</option>
                            <option value="blackberry-8110">blackberry-8110</option>
                            <option value="blackberry-Curve-3g-9300">blackberry-Curve-3g-9300</option>
                            <option value="blackberry-Torch-9800">blackberry-Torch-9800</option>
                            <option value="blackberry-bold-9780">blackberry-bold-9780</option>
                            <option value="blackberry-bold-9790">blackberry-bold-9790</option>
                            <option value="blackberry-bold-9900">blackberry-bold-9900</option>
                            <option value="blackberry-bold">blackberry-bold</option>
                            <option value="blackberry-curve-8900">blackberry-curve-8900</option>
                            <option value="blackberry-curve-9380">blackberry-curve-9380</option>
                            <option value="blackberry-pearl-3g-9100">blackberry-pearl-3g-9100</option>
                            <option value="blackberry-pearl-3g-9105">blackberry-pearl-3g-9105</option>
                            <option value="blackberry-pearl-flip-8220">blackberry-pearl-flip-8220</option>
                            <option value="blackberry-storm-2-9550">blackberry-storm-2-9550</option>
                            <option value="blackberry-storm-9500">blackberry-storm-9500</option>
                            <option value="blackberry-storm2-9520">blackberry-storm2-9520</option>
                            <option value="blackberry-storm2-9550">blackberry-storm2-9550</option>
                            <option value="blackberry-torch--2">blackberry-torch--2</option>
                            <option value="blackberry-torch-9850">blackberry-torch-9850</option>
                        </select></td><td>
                            <img src="images/bbimage/blackberry-8110.jpg" height="93" width="70" alt="fruit" id="fruit"/></td><td>
                           </td></tr>
       
       <s:hidden name="campaignname" value="%{campaignname}" />
        <s:hidden name="startdate" value="%{startdate}" />
        <s:hidden name="enddate" value="%{enddate}" />
        <s:hidden name="dailybdgt" value="%{dailybdgt}" />
        <s:submit value="Save and Continue"/>
        </table> 
    </s:form>
              </div> 
    <div style=" width: 300px; height: 200px; float: right;">
        <p align="left"><b>Campaign Name:</b> <s:property value="%{campaignname}" /></p><hr/>
        <p align="left"><b>Date    :</b> <s:property value="%{startdate}" /> - <s:property value="%{enddate}" /></p><hr/>
        <p align="left"><b>Budget  :</b> <s:property value="%{dailybdgt}" /></p> <hr/>
    </div>
          </div>
           
         </div>
         <div>
    <s:include value="/footer.jsp" />
         
        </div>
    </body>
</html>
