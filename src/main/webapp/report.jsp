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
  <link href="style.css" rel="stylesheet" type="text/css" />
    
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
         
       <table width="990" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="99" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="66" align="left" valign="bottom"><img src="images/logo.jpg" width="241" height="49" /></td>
      </tr>
      <tr>
        <td height="24" valign="bottom">
          Welcome&nbsp; <s:property value="%{user.emailId}"/>  
        </td>
      </tr>
    </table></td>
  </tr>
  
        <tr>
         <td height="325" valign="top">	
        <br></br>
        
        <s:include value="menu.jsp" />
        <br></br>
                      
                
          
        
          <h3> Sample Campaign Report</h3><br>
     <sjc:chart id="chartPoints" 
        xaxisMode="time"
    	xaxisTimeformat="%0d.%0m.%y"
    	
    	
    	xaxisColor="#666"
    
    	xaxisTickColor="#aaa"
    	
    	yaxisTickSize="10"
    	cssStyle="width: 600px; height: 400px;" >
    	    	
    	<sjc:chartData
    		label="Impressions"
    		list="dtmap"
    	         points="{ show: true }"
    		lines="{ show: true }"
                
                />
    	<sjc:chartData
    		label="Clicks"
    		list="climap"
    	         points="{ show: true }"
    		lines="{ show: true }"
                
                />
        
    </sjc:chart>
            </td>
       </tr>
      
       
       
       <tr>
           <td>
       <form method="post" action="rcharts.action">
           <select name="search">
               <option value="1">Today</option>
               <option value="2">Yesterday</option>
               <option value="3">Last 7 Days</option>
               <option value="4">Last 30 Days</option>
               <option value="5">All</option>
          </select>
        <input type="submit" value="View"/>
        
        </form>
      
           </td>
           
        </tr>
        <tr><td><s:include value="/footer.jsp" /></td></tr>
         </table>   
   
    </body>
</html>