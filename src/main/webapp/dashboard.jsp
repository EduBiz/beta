
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>.::AdZappy::.</title>
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
                <div id="containerheader">Campaigns</div>
                <div  id="searchbox">   
                    <div class="search-header" >  
                        <form action="seardash.action" method="post"> 
                            <input type="text" class="search-input " value="" name="s" placeholder="Search Campaign">
                            <input type="submit" name="submit" class="search-submit" value="" title="Search">
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title">Campaigns</div>
                <div class="buttonmenu">
                    <div style="float:left"><a href="addcampnav.action"><input type="image" value="+Add Campaign" name="+Add Campaign" src="images/campaign.png" alt="Create New Ad Campaign"/></a></div> 

                </div>

                <div class="clear"></div>
                <div class="tableheader">
                    <span class="checkbox"></span>
                    <span class="Compaign">Campaign</span>
                    <span class="Created">Created</span>
                    <span class="Status">Status</span>
                    <span class="Budget">Budget</span>
                    <span class="CPC">Avg. CPC</span>
                    <span class="Impressions">Impressions</span>
                    <span class="Clicks">Clicks</span>
                    <span class="CTR">CTR</span>
                    <span class="Cost">Cost</span>

                </div>
                <div class="clear"></div>
                 <div id="tid">
                <s:iterator  value="camplist">
                    <div class="tabletext" id="results" >
                        <span class="checkbox"></span>
                        <span class="Name"><s:property value="campaignName" /></span>
                        <span class="Created"><s:property value="startDate" /></span>
                        <span class="Status">No Ads</span>
                        <span class="Budget">$<s:property value="dialyBudget" /></span>
                        <span class="CPC">$0</span>
                        <span class="Impressions">0</span>
                        <span class="Clicks">0</span>
                        <span class="CTR">0%</span>
                        <span class="Cost">$0</span>
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

    </body>
</html>
