<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html xmlns="http://www.w3.org/1999/xhtml">

    <head>

        <%@page contentType="text/html" pageEncoding="windows-1252"%>
        <%@taglib uri="/struts-tags" prefix="s"%>
        <%@page import="model.*"%>
        <%@ page import="java.util.*" %>
        <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>Adzappy</title>

        <link href="nstyle.css" rel="stylesheet" type="text/css" />
        <s:head theme="jquery"/><sj:head/>
    </head>

    <body>
        <div id="topnav">
            <div id="toplogomenu">
                <div id="toplogomenu1">


                    <a href="indexn.jsp" id="toplogomenuselect">Adzappy Home</a>

                </div>
                <div id="toplogomenu2">


                    <a href="signup.jsp" >Register</a>
                    <a href="login.jsp" >Login</a>

                </div>
            </div>

        </div>
        <div id="mainbanner">
            <img src="indeximages/logo.jpg" width="20%" height="50px" />
        </div>

        <!--Container Start-->
        <div id="container">
            <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
            <div class="wrapper">
                <div class="col1">
                    <div class="h11"> Advertisers </div>
                    <div class="h2"> Reach Your Target Audience </div>	
                    <div class="rdmore"></div>

                </div>

                <div class="col2">
                    <div class="h11"> App Developers </div>
                    <div class="h2"> Reach Your Target Audience </div>
                    <div class="rdmore"></div>
                </div>

                <div class="col3">
                    <div class="h11"> Publishers </div>
                    <div class="h2"> Reach Your Target Audience </div>
                    <div class="rdmore"></div>
                </div>

                <div class="col31">
                    <div class="h13"> Current Stats </div>
                    <div class="h3"> Global Impressions Served:</div>
                    <div class="h13"> 1,292,766,206,026 </div>
                    <div class="getstartedwrap">
                        <div class="h15">
                            <a href="signup.jsp">Get Started</a>
                        </div>

                    </div>
                </div>				
            </div>

            <div class="gap"></div>

            <div class="contwrap">
                <div class="content">
                    <div class="col4">
                        <div class="h13"> Features </div>
                        <div>
                            <h6><img src="indeximages/pic1.jpg" width="88" height="80" style="float:left" />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                        </div>
                        <div class="read_more"><a href="#" class="read_more">read more...</a></div><br />
                        <hr width="90%" />

                        <div>
                            <h6><img src="indeximages/pic2.jpg" width="88" height="80" style="float:left" />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                        </div>
                        <div class="read_more"><a href="#" class="read_more">read more...</a></div><br />
                        <hr width="90%" />

                        <div>
                            <h6><img src="indeximages/pic3.jpg" width="88" height="80" style="float:left" />Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                        </div>
                        <div class="read_more"><a href="#" class="read_more">read more...</a></div>
                    </div>


                    <div class="col5">
                        <div class="pic">
                            <img src="indeximages/mobile.jpg" width="290"/>
                        </div>
                        <div class="h5"> Welcome to AdZappy </div>
                        <div>
                            <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                        </div>
                        <!--<div class="rdmore1">
                                <div class="h16">
                                        <a href="#">Read More</a>
                                </div>
                        </div> -->

                    </div>


                    <div class="col6">
                        <div class="h13"> Latest News </div>
                        <div>
                            <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                        </div>
                        <div class="date">03.02.2010</div>
                        <div class="read_more"><a href="#" class="read_more">read more...</a></div>
                        <hr width="90%" />

                        <div>
                            <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                        </div>
                        <div class="date">03.02.2010</div>
                        <div class="read_more"><a href="#" class="read_more">read more...</a></div>
                        <hr width="90%" />

                        <div>
                            <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.
                        </div>
                        <div class="date">03.02.2010</div>
                        <div class="read_more"><a href="#" class="read_more">read more...</a></div>
                        <!--<div class="viewmore">
                                <div class="h16">
                                        <a href="#">View More</a>
                                </div>
                        </div> -->

                    </div>

                </div>
            </div>

            <div class="gap1"></div>

        </div>	
        <hr width="70%" />

        <div id="footer">
            <div class="bottom_link">
                <ul>
                    <li><a href="#">&copy; 2005-2012 Adzappy  |</a></li>
                    <li><a href="#">Privacy Policy |</a></li>
                    <li><a href="#">Terms of Service |</a></li>
                    <li><a href="#">About Adzappy |</a></li>
                    <li><a href="#">Contact |</a></li>
                    <li><a href="#">Blog |</a></li>
                    <li><a href="#">Site Map</a></li>
                </ul>				
            </div>
            <div class="social_link">
                <ul>
                    <li><a href="#"><img src="indeximages/fb1.png" width="20px" height="20px" /></a></li>
                    <li><a href="#"><img src="indeximages/twit1.png" width="20px" height="20px" /></a></li>
                    <li><a href="#"><img src="indeximages/wordpress1.png" width="20px" height="20px" /></a></li>
                    <li><a href="#"><img src="indeximages/blogger1.png" width="20px" height="20px" /></a></li>
                    <li><a href="#"><img src="indeximages/myspace1.png" width="20px" height="20px" /></a></li>
                    <li><a href="#"><img src="indeximages/LinkedIn1.png" width="20px" height="20px" /></a></li>
                </ul>		
            </div>
        </div>

    </body>
</html>