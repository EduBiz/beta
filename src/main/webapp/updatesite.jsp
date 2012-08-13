
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>.::Sites::.</title>
        <!-- for pagination script start-->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="js/easypaginate.js"></script>
        <script type="text/javascript">
	
            jQuery(function($){
	
                $('div#tid').easyPaginate({
                    //step value define for number of results shown on every page here 5 set for 5 items on each page
                    step:5
                });
	
            });    
    
        </script>
        <!-- for pagination script end-->
        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <!-- for new search form css-->
        <link rel="stylesheet" type="text/css" href="searstyle.css" />
        <!-- for pagination styles-->
        <style type="text/css">
            ol#pagination{overflow:hidden;}
            ol#pagination li{
                float:left;
                list-style:none;
                cursor:pointer;
                margin:0 0 0 .5em;
                font: 1em Helvetica, Arial, Sans-Serif;
                line-height: 1.5em;
                color: #333;
            }
            ol#pagination li.current{color:#f00;font-weight:bold;}
        </style>
    </head>
    <body>

        <%
            Object obj = session.getAttribute("User");

            if (obj == null) {
                response.sendRedirect(request.getContextPath() + "/sessionError.action");
            }
        %>

        <div id="topnav">

            <div>
                <s:include value="topmenu.jsp"/>
            </div>

        </div>

        <div id="mainbanner">

            <s:include value="menu_1.jsp"/>

        </div>
        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader">Sites</div>
                <div  id="searchbox">   
                    <div class="search-header" >  
                        <form action="searshowsite.action" method="post"> 
                            <input type="text" class="search-input " value="" name="s" placeholder="Search Site">
                            <input type="submit" name="submit" class="search-submit" value="" title="Search">
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title">Sites</div>
                <div class="buttonmenu">
                    <div style="float:left"><a href="addsitenav.action"><input type="image" value="+Add sites" name="+Add sites" src="images/sitebutton.png"/></a></div>

                </div>

                <div class="clear"></div>
                <div class="tableheader">

                    <span class="Compaign">Site Name</span>
                    <span class="Created">Category</span>
                    <span class="Status">Site Url</span>
                    <span class="Budget">Edit</span>
                    <span class="CPC">Delete</span>
                    <span class="Clicks">Requests</span>
                    <span class="Clicks">eCPM</span>
                    <span class="CTR">Fill Rate</span>
                    <span class="Cost">RPM</span>

                </div>
                <div class="clear"></div>
                 <div id="tid">
                <s:iterator value="sitelist">
                    <div class="tabletext" id="results" >
                        <s:url action="editsite.action" var="editsite">
                            <s:param name="publishid" value="%{publishId}" />
                            <s:param name="sitename" value="%{siteName}" />
                            <s:param name="siteurl" value="%{siteUrl}" />
                            <s:param name="desc" value="%{description}" />
                            <s:param name="txtcolor" value="%{textColor}" />
                            <s:param name="bgcolor" value="%{bgColor}" />
                            <s:param name="catgry" value="%{category}" />
                        </s:url>
                        <span class="Compaign"><s:property value="siteName" /></span>
                        <span class="Created"><s:property value="category" /></span>
                        <span class="Status"><s:property value="siteUrl" /></span>
                        <span class="Budget"><s:a href="%{editsite}" ><img src="images/pencil.png"/></s:a></span>
                            <s:url action="deletesite.action" var="deletesite">
                                <s:param name="publishid" value="%{publishId}" />
                            </s:url>
                        <span class="CPC"><s:a href="%{deletesite}" ><img src="images/trash.png"/></s:a></span>
                            <span class="Clicks">0</span>
                            <span class="Clicks">$0.00</span>
                            <span class="CTR">0.00%</span>
                            <span class="Cost">$0.00</span>
                        </div></s:iterator>
                 </div>
                    <div class="clear"></div>
            <div>
                    <s:include value="footer_1.jsp"/>
                </div>

            </div>   


        </div>
        <!--Container End-->
        <div></div>
      
        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>

       
    </body>
</html>
