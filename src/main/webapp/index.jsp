<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <head>
        <%@page contentType="text/html" pageEncoding="windows-1252"%>
        <%@taglib uri="/struts-tags" prefix="s"%>
        <%@page import="model.*"%>
        <%@ page import="java.util.*" %>
        <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>Adzappy</title>
        <link type="text/css" href="styleindex.css" rel="stylesheet" />
        <s:head theme="jquery"/><sj:head/>
    </head>
    <body>
        <div id="topnav">
            <div id="toplogomenu">
                <div id="toplogomenu1">


                    <a href="index.jsp" id="toplogomenuselect">Adzappy Home</a>

                </div>
                <div id="toplogomenu2">


                    <a href="signup.jsp" >Register</a>
                    <a href="login.jsp" >Login</a>

                </div>
            </div>

        </div>
        <div id="mainbanner">
            <img src="images/logo.jpg" width="20%" height="50px" />
        </div>
        <!--Container Start-->
        <div id="homecontainer">
            <div id="containerbox">
                <div id="cel1">
                    <div class="indexbanner"></div>
                    <div class="headerlistwidth">
                        <div class="headerlist">
                            <ul>
                                <li>Looking to advertise on mobile?</li>
                                <li>Reach targeted audiences across platforms and 4devices with Google Mobile Ads.
                                    Grow online sales, send more customers to your store, or build your brand across top websites and apps with
                                    innovative mobile ad formats.</li>
                                <li>Learn more</li>
                            </ul>
                        </div></div>
                    <div class="headerlistwidth">
                        <div class="headerlist">
                            <ul>
                                <li>Solutions for mobile web publishers</li>
                                <li>Mobile web publishers can now generate revenue from their mobile webpages with Google AdSense. Show targeted, mobile-specific ads from advertisers looking to reach your mobile audience.</li>
                                <li>Learn more</li>
                            </ul>
                        </div></div>
                    <div class="headerlist">
                        <ul>
                            <li>Solutions for mobile web publishers</li>
                            <li>Reach targeted audiences across platforms and 4devices with Google Mobile Ads.
                                Grow online sales, send more customers to your store, or build your brand across top websites and apps with
                                innovative mobile ad formats.</li>
                            <li>Learn more</li>
                        </ul>
                    </div>
                    <div class="headerlist"> <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/></div>


                </div>
                <div id="cel2">
                    <div class="currentstats">
                        <ul>
                            <li>CURRENT STATS</li>
                            <li>Global Impressions Served:</li>
                            <li>1,292,766,206,026</li>
                        </ul>
                    </div>
                    <div><a href="signup.jsp"><input type="button" value="Get Started" class="getstarted"/></a></div>
                    <div class="headerlist">
                        <ul>
                            <li>News & Announcements</li>
                            <li>SDK improvements for iOS Support for additional Rich Media interstitial ad formats and more.
                            </li>
                            <li>Learn more</li>
                        </ul>
                        <ul>
                            <li></li>
                            <li>SDK improvements for iOS Support for additional Rich Media interstitial ad formats and more.
                            </li>
                            <li>Learn more</li>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
                <!--Container end-->
                <div>
                    <s:include value="footer_1.jsp"/>
                </div>
            </div>                                
        </div>
        <div></div>

    </body>
</html>
