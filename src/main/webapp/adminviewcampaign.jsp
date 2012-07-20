
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>View Campaigns</title>
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
            User u1 = (User) session.getAttribute("User");
            if (obj == null) {
                response.sendRedirect(request.getContextPath() + "/sessionError.action");
            }
        %>

        <div id="topnav">

            <div id="toplogomenu">
                <div id="toplogomenu1">

                    <a href="adratechange.action" id="toplogomenuselect" >Adzappy Home</a>
                    <a href="marketplace.jsp">Marketplace</a>


                </div>
                <div id="toplogomenu2">

                    <a href="" >Hello,<%out.println(u1.getEmailId());%></a>
                    <a href="logout.action" >Log out</a>
                    <a href="" >Help</a>

                </div>
            </div>
        </div>

        <div id="mainbanner">

            <s:include value="menu_2.jsp"/>

        </div>
        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader">View Campaigns</div>            
                <div  id="searchbox">   
                    <div class="search-header" >  
                        <form action="allcampsearch.action" method="post"> 
                            <input type="text" class="search-input " value="" name="s" placeholder="Search Campaign">
                            <input type="submit" name="submit" class="search-submit" value="" title="Search">
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title">View All Campaigns</div>
                <div class="clear"></div>
                <div class="tableheader"  >


                    <span class="Compaign">Campaign Name</span>
                    <span class="Compaign">User Email Id</span>
                    <span class="Compaign">Daily Budget</span>
                    <span class="Compaign">Campaign Type</span>

                </div>
                <div class="clear"></div>
                <div id="tid">
                    <s:iterator  value="allcamplist">
                        <div class="tabletext" id="results" >

                            <span class="Compaign"><s:property value="campaignName" /></span>
                            <span class="Compaign"><s:property value="user.emailId" /></span>
                            <span class="Compaign"><s:property value="dialyBudget" /></span>
                            <span class="Compaign"><s:property value="promoType" /></span>

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
