<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <%@ taglib prefix="sjc" uri="/struts-jquery-chart-tags"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>

    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">


        <title>Site Reports</title>


        <link href="style50.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="reportstyle.js"></script>
        <!-- for new search form css-->
        <link rel="stylesheet" type="text/css" href="searstyle.css" />
        <!--[if IE]>
         <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <style>
            article, aside, figure, footer, header, hgroup, 
            menu, nav, section { display: block; }

            #selectdropdown {
                -webkit-appearance: none;
              -moz-appearance: none;
                appearance: none;
                border: none;

                /*  padding: 2px 30px 2px 2px;
               background: transparent url("http://cdn1.iconfinder.com/data/icons/cc_mono_icon_set/blacks/16x16/br_down.png") no-repeat right center;*/
            }
        </style>

        <s:head theme="jquery"/>
        <sj:head />
    </head>
    <body>

        <%
        Object obj = session.getAttribute("User");
         User u1=(User)session.getAttribute("User");
        if(obj==null)
            {
            response.sendRedirect(request.getContextPath()+"/sessionError.action");
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
                <div id="containerheader">Site Reports</div>
                <div id="searchbox" >
                    <div class="search-header" >  
                        <form method="post" action="sitecharts.action">
                            <select name="search" id="selectdropdown" class="search-input" >

                            <option value="3">Last 7 Days</option>
                            <option value="4">Last 30 Days</option>
                            <option value="5">All</option>
                        </select>
                            <input type="submit" name="submit" class="search-submit" value="" title="Search">
                        </form>
                    </div>
                </div>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>    </div>
               
                

                <div class="clear"></div>
                <div id="leftpanel">
                    <ul>

                        <li class="navactive">
                            <span class="leftnav-header"><a href="javascript:switchid('Impression');">Impressions Reports</a></span>

                        </li>
                        <li class="navactive">
                            <span class="leftnav-header"><a href="javascript:switchid('Click');">Click Reports</a></span>

                        </li>
                        <li class="navactive">
                            <span class="leftnav-header"><a href="javascript:switchid('Cost');">Costs Reports</a></span>

                        </li>

                    </ul>
                </div>

                <div id="formcontainer">
                    <div class="formrow"  >
                        <div id='Impression' style="display:block;">

                            <h3><s:actionmessage/>&nbsp;&nbsp;Site Impressions Report</h3><br>
                            <sjc:chart id="impression" 
                                       xaxisMode="time"
                                       xaxisTimeformat="%0d.%0m.%y"
                                       xaxisMin="%{minTime}"
                                       xaxisMax="%{maxTime}"
                                       xaxisTickSize="%{xaxis}"

                                       xaxisColor="#666"

                                       xaxisTickColor="#aaa"

                                       yaxisTickSize="%{iaxis}"
                                       cssStyle="width: 600px; height: 400px;" >

                                <sjc:chartData
                                    label="Impressions"
                                    list="impmap"
                                    bars="{ show: true }"
                                    color="#990066"
                                    points="{ show: true }"

                                    />


                            </sjc:chart>
                        </div>
                    </div>
                    <div class="clear"></div>
                    <div class="formrow"  >
                        <div id='Click' style="display:none;">


                            <h3><s:actionmessage/>&nbsp;&nbsp;Site Clicks Report</h3><br>
                            <sjc:chart id="clicks" 
                                       xaxisMode="time"
                                       xaxisTimeformat="%0d.%0m.%y"
                                       xaxisTickSize="%{xaxis}"
                                       xaxisMin="%{minTime}"
                                       xaxisMax="%{maxTime}"
                                       xaxisColor="#666"

                                       xaxisTickColor="#aaa"

                                       yaxisTickSize="%{iaxis}"
                                       cssStyle="width: 600px; height: 400px;" >


                                <sjc:chartData
                                    label="Clicks"
                                    list="climap"
                                    bars="{ show: true }"
                                    points="{ show: true }"
                                    />


                            </sjc:chart>
                        </div>
                    </div>
                    <div class="clear"></div>

                    <div class="formrow"  >
                        <div id='Cost' style="display:none;">



                            <h3><s:actionmessage/>&nbsp;&nbsp;Site Costs Report</h3><br>
                            <sjc:chart id="costs" 
                                       xaxisMode="time"
                                       xaxisTimeformat="%0d.%0m.%y"
                                       xaxisMin="%{minTime}"
                                       xaxisMax="%{maxTime}"
                                       xaxisTickSize="%{xaxis}"
                                       xaxisColor="#666"
                                       xaxisTickColor="#aaa"
                                       yaxisTickSize="%{yaxis}"
                                       cssStyle="width: 600px; height: 400px;" >

                                <sjc:chartData
                                    label="Costs"
                                    list="costmap"
                                    bars="{ show: true }"
                                    points="{ show: true }"
                                    color="#990088"
                                    />

                            </sjc:chart>
                        </div>
                    </div>
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
