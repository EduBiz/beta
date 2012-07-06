
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>.::Sites::.</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
         <!-- for new search form css-->
        <link rel="stylesheet" type="text/css" href="searstyle.css" />
        <script type="text/javascript" src="pagination.js"></script>
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
                <div id="containerheader">SITE</div>
                <div  id="searchbox">   
                    <div class="search-header" >  
                        <form action="searupsite.action" method="post"> 
                            <input type="text" class="search-input " value="" name="s" placeholder="Search Site">
                            <input type="submit" name="submit" class="search-submit" value="" title="Search">
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">SITE</div>
                <div class="buttonmenu">
                    <div style="float:left"><a href="addsitenav.action"><input type="image" value="+Add sites" name="+Add sites" src="images/addsite.jpg"/></a></div>

                </div>

                <div class="clear"></div>
                <div class="tableheader">

                    <span class="Compaign">Site Name</span>
                    <span class="Created">Category</span>
                    <span class="Status">Site Url</span>
                    <span class="Budget">Mediation</span>
                    <span class="CPC">Revenue</span>
                    <span class="Clicks">Requests</span>
                    <span class="Clicks">eCPM</span>
                    <span class="CTR">Fill Rate</span>
                    <span class="Cost">RPM</span>

                </div>
                <div class="clear"></div>
                <s:iterator value="sitelist">
                    <div class="tabletext" id="results" >
                        <span class="Name"><s:property value="siteName" /></span>
                        <span class="Created"><s:property value="category" /></span>
                        <span class="Status"><s:property value="siteUrl" /></span>
                        <span class="Budget">Available</span>
                        <span class="CPC">$0.00</span>
                        <span class="Clicks">0</span>
                        <span class="Clicks">$0.00</span>
                        <span class="CTR">0.00%</span>
                        <span class="Cost">$0.00</span>
                    </div></s:iterator>
                    <div class="clear"></div>



                    <div align="right" id="pageNavPosition"></div>    
                    <div class="clear"></div>



                    <div>
                    <s:include value="footer_1.jsp"/>
                </div>

            </div>     

            <script type="text/javascript">
                var pager = new Pager('results',20, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>

        </div>
        <!--Container End-->
        <div></div>

    </body>
</html>
