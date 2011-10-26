<%-- 
    Document   : charts
    Created on : Oct 22, 2011, 1:37:50 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjc" uri="/struts-jquery-chart-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Reports</title>
        <s:head/>
        <sj:head/>
  <link href="style.css" rel="stylesheet" type="text/css" />
    </head>
    
     <body>
       <table width="990" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="99" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="66" align="left" valign="bottom"><img src="images/logo.jpg" width="241" height="49" /></td>
      </tr>
      <tr>
        <td height="24" valign="bottom">
            <s:include value="navigationdashboard.jsp" />
        </td>
      </tr>
    </table></td>
  </tr>
  
        <tr>
            <td> <h3>Campaign Report</h3></td>
        </tr>
        <tr>
            <td>
    <sjc:chart id="chartPoints" cssStyle="width: 600px; height: 400px;">
    	<sjc:chartData
    		label="List -Points-"
    		list="points"
    		points="{ show: true }"
    		lines="{ show: true }"
    	/>
    	<sjc:chartData
    		label="List -Points with Null Value-"
    		list="pointsWithNull"
    	/>
    	<sjc:chartData
    		label="Map -Integer, Integer-"
    		list="pointsFromMap"
    	/>
    </sjc:chart>
            </td>
       </tr>
       <tr>
           <td>
       <form method="post" action="rcharts.action">
           <select name="search">
               <option value="act">Last 7 Days</option>
               <option value="com">Last 30 Days</option>
               <option value="rom">Today</option>
               <option value="com">Yesterday</option>
          </select>
        <input type="submit" value="View"/>
        
        </form>
      
           </td>
           
        </tr>
        <tr><td><s:include value="/footer.jsp" /></td></tr>
         </table>   
   
    </body>
</html>