<%-- 
    Document   : menu
    Created on : Nov 2, 2011, 4:40:45 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<div class="menubar">
    <ul>
<!--        <li><a href="home.action">Home</a></li>-->
        <li>
            <a href="editcamplist.action">Campaigns</a>
            <ul id="drpdwn1"  class="dropdown">
                <li><a href="addcampnav.action">Add Campaign </a></li>
                <li><a href="editcamplist.action">Edit Campaign</a></li>
            </ul>
        </li>
        <li>
            <a href="showsitenav.action">Sites</a>
            <ul id="drpdwn1"  class="dropdown">
                <li><a href="addsitenav.action">Add Site </a></li>
                <li><a href="editsitenav.action">Edit Site</a></li>
            </ul>
        </li>
        <li>
            <a href="rcharts.action">Report</a>
            <ul id="drpdwn1"  class="dropdown">
                <li><a href="rcharts.action">Campaign Report </a></li>
                <li><a href="sitecharts.action">Site Report</a></li>
            </ul>
        </li>
        <li>
            <a href="accountinformation.action">Accounts</a>
            <ul id="drpdwn1"  class="dropdown">
                <li><a href="accountinformation.action">Account Info </a></li>
                <li><a href="changepassword.action">Edit Password</a></li>
                <li><a href="#">Transactions </a></li>
                <li><a href="#">Payments</a></li>
            </ul>
        </li>
    </ul>
</div>