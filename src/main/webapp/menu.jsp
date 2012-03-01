<%-- 
    Document   : menu
    Created on : Nov 2, 2011, 4:40:45 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<div>
		<ul class="menu">

	<li class="top"><a  href="loadlist.action" class="top_link"><span>HOME</span></a></li>
	<li class="top"><a href="editcamplist.action" class="top_link"><span>CAMPAIGN</span></a>
		<ul class="sub">
			<li><a href="addcampnav.action">ADD CAMPAIGN</a></li>			
			<li><a href="editcamplist.action">EDIT CAMPAIGN</a></li>
            
		</ul>
	</li>
	<li class="top"><a href="showsitenav.action" class="top_link"><span>SITE</span></a>
		<ul class="sub">
			<li><a href="addsitenav.action">ADD SITE</a></li>			
            <li><a href="editsitenav.action">EDIT SITE</a></li>
           
		</ul>
	</li>
	<li class="top"><a href="rcharts.action" class="top_link"><span>REPORT</span></a>
    <ul class="sub">
			<li><a href="rcharts.action">CAMPAIGN REPORT</a></li>			
            <li><a href="sitecharts.action">SITE REPORT</a></li>
           
		</ul>
    
    </li>
	<li class="top"><a href="accountinformation.action" class="top_link"><span>ACCOUNTS</span></a>
     <ul class="sub">
			<li><a href="accountinformation.action">ACCOUNTS INFORMATION</a></li>			
            <li><a href="#">TRANSACTION DETAILS</a></li>
            <li><a href="#">PAYMENT DETAILS</a></li>		
           
		</ul></li>
        <li class="top"><a href="logoutaction.action" class="top_link"><span>LOGOUT</span></a></li>
</ul>
	</div>
