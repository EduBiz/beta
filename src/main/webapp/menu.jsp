<%-- 
    Document   : menu
    Created on : Nov 2, 2011, 4:40:45 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<div id="menu">
		<ul class="menu">
                    <li><a href="loadlist.action" class="parent"><span>Home</span></a>
				
			</li>
			<li><a href="#" class="parent"><span>Campaign</span></a>
				<div><ul>
					<li><a href="addcampnav.action" class="parent"><span>Add Campaign</span></a></li>
					<li><a href="editcamplist.action"><span>Edit Campaign</span></a></li>
				</ul></div>
			</li>
			<li><a href="#"><span>Sites</span></a>
				<div><ul>
					<li><a href="addsitenav.action" class="parent"><span>Add Site</span></a></li>
					<li><a href="editsitenav.action" class="parent"><span>Edit site</span></a></li>
				</ul></div>
			</li>
                        <li><a href="#"><span>Reports</span></a>
				<div><ul>
					<li><a href="rcharts.action" class="parent"><span>Campaign Reports</span></a></li>
					<li><a href="sitecharts.action" class="parent"><span>Site Reports</span></a></li>
				</ul></div>
			</li>
                         <li><a href="#"><span>Accounts</span></a>
				<div><ul>
					<li><a href="accountinformation.action" class="parent"><span>Account Information</span></a></li>
					<li><a href="#" class="parent"><span>Transaction Details</span></a></li>
                                        <li><a href="#" class="parent"><span>Payment Details</span></a></li>
				</ul></div>
			</li>
		
                <li><a href="logoutaction.action" class="parent"><span>Logout</span></a>
				
			</li>
                
                </ul>
	</div>
