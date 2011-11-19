<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

         pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<%@page import="model.User"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%> 
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
<div style="height:500px; font-size:18px; font-family:'MS Serif', 'New York', serif; color:#000; vertical-align:middle;" align="center" > 
                    <br></br>
<table>
<tr<td>
                    <h1 align="center">Android</h1>
                    <s:actionerror/>  
                    <s:form action="androidAction">
                <tr><td>
                        <s:radio name="platform" required="true" label="platform Devices" list="{'Target all devices','Target devices by platform','Target devices by manufacturer'}" />
                    </td></tr>
                <tr><td>
                        <s:radio name="location" required="true" label="Geography/Operator" list="{'Target all Geographic location','Target specific geographic location'}" />
                    </td></tr>
                
                
                <tr><td><p>Select Os</p>
                        <select title="Select Os" name="android" required="true" onChange="if(this.value!=''){document.getElementById('fruit').src='images/android/'+this.value+'.jpg';}">
                            <option value="Please select">Please select</option>
                            <option value="acer-liquid-e-ferrari-thumb">acer-liquid-e-ferrari</option>
                            <option value="alcatel-ot-980-thumb">alcatel-ot-980</option>
                            <option value="dell-aero-thumb">dell-aero</option>
                            <option value="dell-venue-thumb">dell-venue</option>
                            <option value="htc-desire-hd-thumb">htc-desire-hd</option>
                            <option value="htc-incredible-s-thumb">htc-incredible-s</option>
                            <option value="htc-legend-a6363-thumb">htc-legend-a6363</option>
                            <option value="htc-salsa-thumb">htc-salsa</option>
                            <option value="htc-sensation-thumb">htc-sensation</option>                            
                            <option value="htc-wildfire-s-thumb">htc-wildfire-s</option>
                            <option value="huawei-ideos-chat-u8300-thumb">huawei-ideos-chat-u8300</option>
                            <option value="huawei-ideos-x2-u8500-thumb">huawei-ideos-x2-u8500</option>
                            <option value="lg-gt540-optimus-thumb">lg-gt540-optimus</option>
                            <option value="lg-optimus-one-p500-thumb">lg-optimus-one-p500</option>
                            <option value="motorola-charm-mb502-thumb">motorola-charm-mb502</option>
                            <option value="motorola-defy-thumb">motorola-defy</option>
                            <option value="motorola-milestone-xt720-thumb">motorola-milestone-xt720</option>
                            <option value="samsung-galaxy-551-thumb">samsung-galaxy-551</option>
                            <option value="samsung-galaxy-ace-s5830-thumb">samsung-galaxy-ace-s5830</option>
                            <option value="samsung-galaxy-s2-i9100-thumb">samsung-galaxy-s2-i9100</option>
                            <option value="samsung-galaxy-sl-i9003-thumb">samsung-galaxy-sl-i9003</option>
                            <option value="se-xperia-arc-thumb">se-xperia-arc</option>
                            <option value="se-xperia-x10-mini-thumb">se-xperia-x10-mini</option>
                            <option value="sony-ericsson-xperia-mini-pro-sk17i-thumb">sony-ericsson-xperia-mini-pro-sk17i</option>
                            <option value="spice-mi-310-thumb">spice-mi-310</option>
                            <option value="videocon-v7400-thumb">videocon-v7400</option>
                            
                            
                        </select></td><td>
                            <img src="images/android/acer-liquid-e-ferrari-thumb.jpg" height="93" width="70" alt="fruit" id="fruit"/></td><td>
                           </td></tr>
                        <s:submit value="Save and Continue"/>
                    </s:form>
                </table> 
                       
                    
                    <br><br><br><br><br><br>
                    </div>
                    <div>
        <s:include value="/footer.jsp" />
        </div>


    </body>
</html>
