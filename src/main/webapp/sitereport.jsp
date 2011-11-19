<%-- 
    Document   : charts
    Created on : Oct 22, 2011, 1:37:50 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjc" uri="/struts-jquery-chart-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.User"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports</title>
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
        <script type="text/javascript">
            	$.subscribe('chartHover', function(event, data) {
    $("#topicsHover").text(event.originalEvent.pos.x.toFixed(2)+','+event.originalEvent.pos.y.toFixed(2));
	});
	$.subscribe('chartClick', function(event, data) {
		var item = event.originalEvent.item;
    if (item) {
      $("#topicsClick").text("You clicked point " + item.dataIndex + " ("+item.datapoint[0]+","+item.datapoint[1]+") in " + item.series.label + ".");
      event.originalEvent.plot.highlight(item.series, item.datapoint);
    }
	});
	  
        </script>
         <s:head theme="jquery"/>  
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
       
             <div>   
                
        <h3>Site Sample Report</h3><br>
     <sjc:chart id="chartPoints" cssStyle="width: 600px; height: 400px;">
    	<sjc:chartData
    		label="Impressions"
    		list="points"
    		points="{ show: true }"
    		lines="{ show: true }"
    	/>
    
    	<sjc:chartData
    		label="Clicks, Integer-"
    		list="pointsFromMap"
    	/>
    </sjc:chart>

           
      </div>
       
       
    <div>
       <form method="post" action="sitecharts.action">
           <select name="search">
               <option value="1">Today</option>
               <option value="2">Yesterday</option>
               <option value="3">Last 7 Days</option>
               <option value="4">Last 30 Days</option>
               <option value="5">All</option>
          </select>
        <input type="submit" value="View"/>
        
        </form>
        </div>
        </div>
        <div>
      
         <s:include value="/footer.jsp" /></div>
    </body>
</html>