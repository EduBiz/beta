<%-- 
    Document   : topmenu
    Created on : Mar 13, 2012, 11:35:56 AM
    Author     : Administrator
--%>


<%@page contentType="text/html" pageEncoding="windows-1252"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page import="model.*"%>
<%@ page import="java.util.*" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html>
<html>
    <head><title>Top Menu</title>

    </head>
    <%
          Object obj = session.getAttribute("User");
          User u1=(User)session.getAttribute("User");
               
          if(obj==null)
              {
              response.sendRedirect(request.getContextPath()+"/sessionError.action");
          }
    %>
    <body>
        <div id="toplogomenu">
            <div id="toplogomenu1">

                <a href="home.action">Adzappy Home</a>
                <a href="marketplace.jsp" id="toplogomenuselect">Marketplace</a>

            </div>
            <div id="toplogomenu2">

                <a href="accountinformation.action" >Hello,<%out.println(u1.getEmailId()); %></a>
                <a href="logout.action" >Log out</a>
                <a href="" >Help</a>

            </div>
        </div>


    </body>
</html>