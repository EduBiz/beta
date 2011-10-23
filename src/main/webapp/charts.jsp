<%-- 
    Document   : charts
    Created on : Oct 22, 2011, 1:37:50 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@ taglib prefix="sjc" uri="/struts-jquery-chart-tags"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Chart Examples</title>
        
        <s:head/>
        <sj:head/>
        <script type="text/javascript" src="/struts2-jquery-showcase/struts/utils.js"></script>
	<script type="text/javascript" src="/struts2-jquery-showcase/struts/xhtml/validation.js"></script>

	<script type="text/javascript" src="/struts2-jquery-showcase/struts/js/base/jquery-1.5.2.js"></script>
	<script type="text/javascript" src="/struts2-jquery-showcase/struts/js/base/jquery.ui.core.js"></script>
  <script type="text/javascript" src="/struts2-jquery-showcase/struts/js/plugins/jquery.subscribe.js"></script>
        	<link id="jquery_theme_link" rel="stylesheet" href="jquery-ui.css" type="text/css"/>


  <script type="text/javascript" src="/struts2-jquery-showcase/struts/js/struts2/jquery.struts2-3.1.0.js"></script>

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
        
       
    </head>
    <body>
       
        <h3>Chart with values from a List or a Map</h3>
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

    <br/>

	<h3>Chart with values from a List with Objects</h3>
	<div id="topicsHover"></div>
	<div id="topicsClick"></div>
    <sjc:chart id="chartObjects" cssStyle="width: 600px; height: 400px;" onClickTopics="chartClick" onHoverTopics="chartHover">
    	<sjc:chartData
    		label="List with Objects"
    		list="objList"
    		listKey="myKey"
    		listValue="myValue"
    		points="{ show: true }"
    		lines="{ show: true }"
    		clickable="true"
    		hoverable="true"
    	/>
    </sjc:chart>

    <br/>

	<h3>Chart with Date Values</h3>
    <sjc:chart
    	id="chartDate"
    	xaxisMode="time"
    	xaxisTimeformat="%0m.%y"
    	xaxisMin="%{minTime}"
    	xaxisMax="%{maxTime}"
    	xaxisColor="#666"
    	xaxisTickSize="[2, 'month']"
    	xaxisTickColor="#aaa"
    	xaxisPosition="top"
    	yaxisPosition="right"
    	yaxisTickSize="10"
    	cssStyle="width: 600px; height: 400px;" >
    	<sjc:chartData
    		label="Map -Date, Integer-"
    		list="dateFromMap"
    		color="#990066"
    		bars="{ show: true }"
    	/>
    </sjc:chart>

    <br/>

	<h3>Chart with AJAX Data</h3>
	<s:url id="/JsonChartData" action="json-chart-data"/>
    <sjc:chart
    	id="chartAjax"
    	legendLabelBoxBorderColor="#990033"
    	legendPosition="ne"
    	legendShow="#ccc"
    	cssStyle="width: 600px; height: 400px;"
    >
    	<sjc:chartData
    		label="Map -Double, Double-"
    		href="%{/Charts}"
    		list="doubleMap"
    		deferredLoading="true"
    		reloadTopics="reloadMap"
    	/>
    	<sjc:chartData
    		label="List -ListValue-"
    		href="%{/Charts}"
    		list="objList"
    		listKey="myKey"
    		listValue="myValue"
    		reloadTopics="reloadList"
    	/>
    </sjc:chart>
    <sj:a onClickTopics="reloadMap" button="true" buttonIcon="ui-icon-refresh">Load/Reload Map</sj:a>
    <sj:a onClickTopics="reloadList" button="true" buttonIcon="ui-icon-refresh">Reload List</sj:a>

    <br/>
    <br/>

	<h3>A Pie Chart</h3>
    <sjc:chart
    	id="chartPie"
    	cssStyle="width: 600px; height: 400px;"
    	pie="true"
    	pieLabel="true"
    >
    	<sjc:chartData
    		id="pieSerie1"
    		label="Serie 1"
    		data="10"
    	/>
    	<sjc:chartData
    		id="pieSerie2"
    		label="Serie 2"
    		data="3"
    	/>
    	<sjc:chartData
    		id="pieSerie3"
    		label="Serie 3"
    		data="17"
    	/>
    	<sjc:chartData
    		id="pieSerie4"
    		label="Serie 4"
    		data="37"
    	/>
    </sjc:chart>
    
    <br/>

	<h3>A Pie Donut Chart from a Map </h3>
    <sjc:chart
    	id="chartPie2"
    	cssStyle="width: 600px; height: 400px;"
    	legendShow="false"
    	pie="true"
    	pieLabel="true"
    	pieInnerRadius="0.3"
    	pieLabelRadius="0.6"
    	pieLabelBackgroundColor="#555"
    	pieLabelBackgroundOpacity="0.7"
    >
    	<s:iterator value="%{pieDataMap}">
	    	<sjc:chartData
	    		label="%{key}"
	    		data="%{value}"
	    	/>
    	</s:iterator>
    </sjc:chart>
        
        
    </body>
</html>