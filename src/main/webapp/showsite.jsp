<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>.::Sites::.</title>
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
                height:440px;
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

        <div style="height:600px;">
            <div class="header" >
                <img src="images/logo.jpg" width="200" height="50" />
                <br />
                Welcome&nbsp; <s:property value="%{user.emailId}"/>
            </div>

            <div>
                <s:include value="menu.jsp"/>
            </div>
            <div class="box">
                <div>
                    <p style="font-size:25px; color:#030;" align="center">SITE</p>
                </div>
                <br></br>
                <s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/>
                <div style="float:left"><a href="addsitenav.action"><input type="image" value="+Add sites" name="+Add sites" src="images/addsite.jpg"/></a></div>   
                <form action="searupsite.action"> <div style="float:right;"><input type="text" value="Search" name="s" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                    </div></form>

                <div>

                    <s:form name="sitelist">
                        <table class="user" id="results" cellspacing="15" cellpadding="8" >
                            <th>Site Name</th>
                            <th>Category</th>
                            <th>Site Url</th>

                            <s:iterator end="1" value="sitelist" status="rowstatus">
                                <s:if test="#rowstatus.odd == true">
                                    <tr> 
                                        <td><s:property value="siteName" /></td>   
                                        <td><s:property value="category" /> </td>
                                        <td><s:property value="siteUrl" /> </td>     
                                    </tr>
                                </s:if>
                                <s:else>
                                    <tr class="alt">
                                        <td><s:property value="siteName" /></td>   
                                        <td><s:property value="category" /> </td>
                                        <td><s:property value="siteUrl" /> </td>     
                                    </tr>
                                </s:else>
                            </s:iterator>
                        </table>
                        <div align="right" id="pageNavPosition"></div>    
                    </s:form>     

                </div>


            </div>
            <script type="text/javascript">
                var pager = new Pager('results', 20, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>

            <div>
                <s:include value="/footer.jsp" />
            </div>
        </div>
    </body>
</html>
