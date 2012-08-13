
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>

        <%@taglib uri="/struts-tags" prefix="s"%>
        <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>.::AdZappy::.</title>
        <link href="indexstyle.css" rel="stylesheet" type="text/css" />
        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <%@page import="model.User"%>
    </head>

    <body>
        <%
            Object obj = session.getAttribute("User");

            if (obj != null) {
                User u1 = (User) session.getAttribute("User");
                if (u1.getEmailId().equals("admin@adzappy.com")) {
                    response.sendRedirect(request.getContextPath() + "/adratechange.action");
                } else {
                    response.sendRedirect(request.getContextPath() + "/home.action");
                }
            }
        %>
        <div class="container">

            <div class="header">

                <div class="logo">
                    <img src="indeximages/logo.jpg" width="241" height="49" />				
                </div>

                <div class="navbar">

                    <div class="menubar">
                        <ul>
                            <li class="active"> <a href="indexn.jsp">Home</a></li>
                            <li><a href="marketplace.jsp">Advertisers</a></li>
                            <li><a href="analytics.jsp">Publishers</a></li>
                            <li><a href="metrics.jsp">App Developers</a></li>
                        </ul>
                    </div>

                </div>

            </div>	
            <div class="content_main">
                <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
                <!-- Content 1 Start -->

                <div class="content1">

                    <div class="cont_1">

                        <img src="indeximages/adv_top_corner.jpg" width="240" height="5"/>

                        <div class="box1">

                            <div class="box1_cont">
                                <div class="h11">Advertisers</div>

                                <div class="h2"> Looking to Advertise?
                                </div>
                                <div class="h22">Connect with targeted audiences, grow your brand, increase sales and have the edge on your competitors. 
                                    Delivery of ads on mobile websites and apps through the AdZappy Ad network.
                                </div>

                                <div align="right" style="padding-top:20px; ">

                                    <a href="marketplace.jsp"> <img src="indeximages/btn_more.jpg" width="60" height="24"/></a>

                                </div>

                            </div>

                        </div>

                        <img src="indeximages/adv_bottom_corner.jpg" width="240" height="5"/>


                    </div>


                    <div class="cont_2">

                        <img src="indeximages/adv_top_corner.jpg" width="240" height="5"/>

                        <div class="box1">

                            <div class="box1_cont">
                                <div class="h11">Publishers</div>

                                <div class="h2"> Have a mobile website? </div>


                                <div class="h22">Generate revenue by delivering advertiser ads through your mobile website.
                                    Monetize your mobile audience and maintain a good user experience.
                                </div>

                                <div align="right" style="padding-top:35px; ">

                                   <a href="analytics.jsp"> <img src="indeximages/btn_more.jpg" width="60" height="24"/></a>

                                </div>
                            </div>

                        </div>

                        <img src="indeximages/adv_bottom_corner.jpg" width="240" height="5"/>


                    </div>


                    <div class="cont_3">

                        <img src="indeximages/adv_top_corner.jpg" width="240" height="5"/>

                        <div class="box1">

                            <div class="box1_cont">
                                <div class="h11">App Developers</div>

                                <div class="h2"> Have a mobile application? </div>


                                <div class="h22">Let your application work for you to generate revenue.
                                    Ads to marvel your audience.
                                </div>

                                <div align="right" style="padding-top:40px; ">

                                   <a href="metrics.jsp"> <img src="indeximages/btn_more.jpg" width="60" height="24"/></a>

                                </div>

                            </div>

                        </div>

                        <img src="indeximages/adv_bottom_corner.jpg" width="240" height="5"/>


                    </div>



                    <div class="cont_4">

                        <img src="indeximages/top_corner2.jpg" width="240" height="9"/>

                        <div class="box_bg2">

                            <div class="boxwrap">

                                <div class="getstartedwrap">

                                    <div class="getstart">

                                        <a href="signup.jsp">Get Started</a>

                                    </div>

                                </div>

                                <form action="login.action" method="post" id="loginform">

                                    <h3>LOG IN TO YOUR ACCOUNT</h3>

                                    <div class="formdiv">
                                        <label for="email">Email</label>
                                        <input type="text" class="emailform" name="email"/>
                                    </div>

                                    <div class="formdiv">
                                        <label for="password">Password</label>
                                        <input type="password" class="passform" name="password"/>
                                    </div>

                                    <div class="formfooter">
                                        <a href="forgotpass.jsp" class="forget">Forget Password?</a>
                                        <input type="submit" class="submitform button" value="Login"/>

                                        <div>
                                            Not Registered? &nbsp;&nbsp;<a href="signup.jsp">Sign Up Now</a>
                                        </div>

                                    </div>

                                </form>	

                                <div style="clear: both;"></div>

                            </div>

                        </div>

                        <img src="indeximages/bottm_corner2.jpg" width="240" height="9"/>


                    </div>


                </div>

                <!--Content 1 End -->


                <!-- Content 2 Start -->

                <div class="content2">

                    <!-- Conten_1 Start -->
                    <div class="conten_1">

                        <img src="indeximages/top_corner.jpg" width="317" height="7"/>

                        <div class="box_bg">

                            <div class="box_in">

                                <div class="freatr">

                                    <img src="indeximages/features.jpg" width="76" height="15" hspace="5"/>

                                </div>

                                <div class="featr_cont1">

                                    <img src="indeximages/pic1.jpg" width="88" height="89" hspace="5"/>

                                    <div class="featr_txt">

                                        <div class="featr_txtin">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                        </div>

                                        <div class="read_more">

                                            <a href="#" class="read_more">read more...</a>

                                        </div>

                                    </div>

                                    <div class="line0">

                                    </div>

                                </div>


                                <div class="featr_cont2">

                                    <img src="indeximages/pic2.jpg" width="88" height="89" hspace="5"/>

                                    <div class="featr_txt1">

                                        <div class="featr_txtin1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                        </div>

                                        <div class="read_more1">

                                            <a href="#" class="read_more">read more...</a>

                                        </div>

                                    </div>

                                    <div class="line">

                                    </div>

                                </div>


                                <div class="featr_cont3">

                                    <img src="indeximages/pic3.jpg" width="88" height="89" hspace="5"/>

                                    <div class="featr_txt1">

                                        <div class="featr_txtin1">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,
                                        </div>

                                        <div class="read_more1">

                                            <a href="#" class="read_more">read more...</a>

                                        </div>

                                    </div>									

                                </div>


                            </div>

                        </div>

                        <img src="indeximages/bottm_corner.jpg" width="317" height="7"/>

                    </div>

                    <!-- Conten_1 End -->	

                    <!-- Conten_2 Start -->

                    <div class="conten_2">

                        <img src="indeximages/top_corner.jpg" width="317" height="7"/>

                        <div class="box_bg1">

                            <div class="box_in1">

                                <div class="welcome_img">

                                    <img src="indeximages/mobile.jpg" width="290"/>

                                </div>

                                <div class="welcome">

                                    <img src="indeximages/welcome_99.jpg" width="215" height="22"/>

                                </div>

                                <div class="welcome_txt">

                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.

                                </div>

                                <div class="rdmr">

                                    <a href="#"><img src="indeximages/read_more.jpg" width="65" height="25" border="0"/></a>

                                </div>								

                            </div>							

                        </div>

                        <img src="indeximages/bottm_corner.jpg" width="317" height="7"/>

                    </div>

                    <!-- Conten_2 End -->

                    <!-- Conten_3 Start -->

                    <div class="conten_3">

                        <img src="indeximages/top_corner.jpg" width="317" height="7"/>

                        <div class="box_bg3">

                            <div class="box_in2">

                                <div class="latest_news">

                                    <img src="indeximages/latest_news.jpg" width="108" height="15" hspace="0"/>

                                </div>

                                <div class="latest_news_txt">

                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type..

                                </div>

                                <div class="news_bottom">

                                    <div class="date">03.2.2010</div>

                                    <div class="read_more2">

                                        <a href="#" class="read_more">read more...</a>

                                    </div>

                                </div>

                                <div class="line1">

                                </div>


                                <div class="latest_news_txt1">

                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,

                                </div>

                                <div class="news_bottom1">

                                    <div class="date">03.2.2010</div>

                                    <div class="read_more3">

                                        <a href="#" class="read_more">read more...</a>

                                    </div>

                                </div>

                                <div class="line2">

                                </div>



                                <div class="latest_news_txt1">

                                    Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,

                                </div>

                                <div class="news_bottom2">

                                    <div class="date">03.2.2010</div>

                                    <div class="read_more4">

                                        <a href="#" class="read_more">read more...</a>

                                    </div>

                                </div>									

                            </div>

                            <div class="rdmr1">

                                <a href="#"><img src="indeximages/view_more.jpg" width="65" height="25" border="0"/></a>

                            </div>

                        </div>		


                        <img src="indeximages/bottm_corner.jpg" width="317" height="7"/>

                    </div>

                    <!-- Conten_3 End -->

                </div>

                <!-- Content2 End -->					
                <s:include value="footer_1.jsp" />   
            </div>

            <!-- Overall Content End -->



        </div>





    </body>
</html>
