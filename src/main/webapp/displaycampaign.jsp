<%-- 
    Document   : displaycampaign
    Created on : Nov 28, 2011, 5:07:25 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>Display Campaign</title>
    </head>
    <body>
        
        <table >
            <tr>
                <td>
          <a href=" <s:property value="%{cadurl}"  />" > <img src="displayimg.action?Id=<s:property value="%{cid}" />" alt="" height="50px" width="50px"/></a>
                </td>
                <td style="color:#FFF; "><strong>
       Random Content
       <br>
        Campaign id:&nbsp;      <s:property value="%{cid}"  /> <br>
        Campaign Name:&nbsp;  <s:property value="%{cname}"  /> <br></strong>
        </td>
            </tr>
        </table>
       
    </body>
</html>
