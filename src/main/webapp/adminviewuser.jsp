<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View User</title>
    <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
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
            .user
            {
                font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
                width:100%;
                border-collapse:collapse;
            }
            .user td, .user th 
            {
                font-size:1.2em;
                padding:15px;
            }
            .user th 
            {
                font-size:1.4em;
                text-align:left;
                padding-top:8px;
                padding-bottom:8px;
                background-color:#A7C942;
                color:#fff;
            }
            .user tr.alt td 
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
                height:470px;
                background-color:#FFF;
                box-shadow: 0px 0px 0px;
                padding-left:350px;
            }
            .pg-normal {
                color: black;
                font-weight: normal;
                text-decoration: none;   
                cursor: pointer;   
            }
            .pg-selected {
                color: black;
                font-weight: bold;       
                text-decoration: underline;
                cursor: pointer;
            }
            input.bar{
                float:left;
                height:18px;
                width:159px;
                padding:3px 5px 0px 5px;
                border:none;
                background-color:transparent;
                color:#666;
            }
        </style>
        <link rel="stylesheet" href="menu_style.css" type="text/css" />
        <link rel="stylesheet" href="style.css" type="text/css" />
        <script type="text/javascript" src="pagination.js"></script>
    </head>

    <body>
        <%
     Object obj = session.getAttribute("User");

     if(obj==null)
         {
         response.sendRedirect(request.getContextPath()+"/sessionError.action");
     }
   
        %>
        <div style="height:600px;">
            <div class="header" >
                <img src="images/logo.jpg" width="200" height="50" />
                <br />
                Welcome&nbsp; <s:property value="email"/>
            </div>

            <div>
                <ul class="menu">

                    <li class="top"><a  href="adratechange.action" class="top_link"><span>HOME</span></a></li>

                    <li class="top"><a href="adminviewuser.action" class="top_link"><span>View Users</span></a></li>

                    <li class="top"><a href="logoutaction.action" class="top_link"><span>LOGOUT</span></a></li>
                </ul>
            </div>
            <div class="box">
                <div>
                    <p style="font-size:30px; color:#030; padding-left:70px;">View All Users</p>
                </div>


                  <s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/>
                <form action="searchall.action"> <div style="float:right;"><input type="text" value="Search" name="s" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                    </div></form>
                <div>

                    <table class="user" id="results" cellspacing="15" cellpadding="8" >
                        <tr>  
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Email</th>
                            <th>Member Since</th>
                            <th>Status</th>

                        </tr>  
                        <s:iterator end="1" value="alluserlist" status="rowstatus">
                            <s:if test="#rowstatus.odd == true">
                                <tr>
                                    <td><s:property value="firstName" /></td>
                                    <td><s:property value="lastName" /> </td>
                                    <td><s:property value="user" /> </td>
                                   <td><s:property value="user_1.regDate" /> </td>
                                   <td><s:property value="user_1.userStatus" /> </td>
                                </tr>
                            </s:if>
                            <s:else>
                                <tr class="alt">
                                    <td><s:property value="firstName" /></td>
                                    <td><s:property value="lastName" /> </td>
                                    <td><s:property value="user" /> </td>
                                     <td><s:property value="user_1.regDate" /> </td>
                                     <td><s:property value="user_1.userStatus" /> </td>
                                </tr>
                            </s:else>
                        </s:iterator>

                    </table>
                    <div align="right" id="pageNavPosition"></div>     

                </div>   


            </div>
            <script type="text/javascript">
                var pager = new Pager('results', 20, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>
            <div>
                <s:include value="/footer.jsp"/>
            </div>

        </div>
    </body>
</html>