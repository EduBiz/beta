<%-- 
   ad group type selection step2 of campaign creation
--%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">
        <title>Campaign Creation</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <!--for new changes in design Jun-2012  -->
        <link type="text/css" href="styleacc.css" rel="stylesheet" />
        <!--for accordion -->
        <link rel="stylesheet" href="accordian/style.css" type="text/css">
        <script language="javascript">
            var i;
            function selected(i) 
            {
         
                document.getElementById('promo').value = document.getElementById(i).value;
                document.getElementById('pro').value = document.getElementById(i).value;
            }
   
        </script>
    </head>
    <body>
        <%
           Object obj = session.getAttribute("User");
            Object obj1 = session.getAttribute("campa");
             User u1=(User)session.getAttribute("User");
            if(obj==null)
                {
                response.sendRedirect(request.getContextPath()+"/sessionError.action");
            }
            else if(obj1==null)
                {
                response.sendRedirect(request.getContextPath()+"/sessioncampaignError.action");
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
        <div id="container">


            <div id="containerheader">&nbsp;&nbsp;&nbsp;Campaigns</div>

            <div class="clear"></div>
            <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
            <div class="clear"></div>
            <!--menu start -->
            <div  class="menubg"><img src="navmenu/menu2.jpg" width="941" height="45" alt="" title="" ></div>
            <!--menu end -->
            <!--content start -->
            <div class="content pad10">
                <h2>Choose Ad Group</h2>
                <!--left box start -->
                <form action="adtype.action" method="post">
                    <div class="left leftbox">
                        <div><img src="adtype_images/top.jpg" width="615" height="9" alt="" title=""></div>
                        <div class="boxbg">
                            <div align="center"> <strong>Ad Group Name</strong>&nbsp;

                                <input name="promotype" id="promo" type="text" class="inputa" style="color:#467618; font-size: larger; font-weight: bolder " readonly="true" >
                            </div>
                            <!--accordian start -->
                            <ul id="acc">
                                <li>
                                    <div style="height: auto;">
                                        <div>
                                            <ul class="acc" id="nested">
                                                <li  onclick="selected(9);">
                                                    <h3><span>Website</span><br/>
                                                        Drive traffic to your mobile website. For example: http://www.adzappy.com </h3>
                                                    <div class="acc-section" style="height: 0px; ">
                                                        <div class="acc-content">
                                                            <div class="border"></div>
                                                            <div class="accordiantxt">
                                                                <input name="adtype" type="hidden" value="Website" id="9" onclick="selected(9);" >
                                                            </div>
                                                            <div><img src="accordian/accordian-bottom.jpg" width="571" height="10" alt="" title=""></div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <h3><span>Application</span><br/>
                                                        Drive downloads of your app
                                                    </h3>
                                                    <div class="acc-section" style="height: 0px; ">
                                                        <div class="acc-content">
                                                            <div class="border">
                                                                <div class="accordiantxt">
                                                                    <p>Please Select an application platform</p>
                                                                    <input name="adtype" type="radio" value="Iphone Application Ad" onclick="selected(1);" id="1" >&nbsp;IPhone<br/>
                                                                    <input name="adtype" type="radio" value="Android Application Ad" id="2" onclick="selected(2);">&nbsp;Android<br/>
                                                                    <input name="adtype" type="radio" value="BlackBerry Application Ad" id="3" onclick="selected(3);">&nbsp;BlackBerry<br/>
                                                                </div>
                                                            </div>
                                                            <div><img src="accordian/accordian-bottom.jpg" width="571" height="10" alt="" title=""></div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <h3><span>Media</span><br/>
                                                        Promote a video or iTunes Store listing (Music, TV, Movies, Books)
                                                    </h3>
                                                    <div class="acc-section" style="height: 0px; ">
                                                        <div class="acc-content">
                                                            <div class="border">
                                                                <div class="accordiantxt">
                                                                    <p>Please select a media type</p>
                                                                    <input name="adtype" type="radio" value="iTunes Media Ad" id="4" onclick="selected(4);">&nbsp;iTunes<br/>
                                                                    <input name="adtype" type="radio" value="Streaming Video Ad" id="5" onclick="selected(5);">&nbsp;Video<br/>
                                                                    <input name="adtype" type="radio" value="Books Ad" id="6" onclick="selected(6);">&nbsp;Books
                                                                </div>
                                                            </div>
                                                            <div><img src="accordian/accordian-bottom.jpg" width="571" height="10" alt="" title=""></div>
                                                        </div>
                                                    </div>
                                                </li>
                                                <li>
                                                    <h3><span>Location & Utilities</span><br/>
                                                        Promote a local business with Click-to-Call and Click-to-Maps ad types.</h3>
                                                    <div class="acc-section" style="height: 0px; ">
                                                        <div class="acc-content">
                                                            <div class="border">
                                                                <div class="accordiantxt">
                                                                    <p>Please Select a Utility</p>
                                                                    <input name="adtype" type="radio" value="Click to Call Ad" id="7" onclick="selected(7);">&nbsp;Click to Call<br/>
                                                                    <input name="adtype" type="radio" value="Click to Map Ad" id="8" onclick="selected(8);">&nbsp;Clcik to Map<br/>								
                                                                </div>
                                                            </div>
                                                            <div><img src="accordian/accordian-bottom.jpg" width="571" height="10" alt="" title=""></div>
                                                        </div>
                                                    </div>
                                                </li>
                                            </ul>
                                            <div class="clear"></div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <div class="clear"></div>
                            <!--accordian end -->
                            <div align="center" class="margina">
                                <input type="submit" value="Continue" class="button"/>
                                &nbsp;

                            </div>
                        </div>
                        <div><img src="adtype_images/bottom.jpg" width="615" height="9" alt="" title=""></div>
                    </div>
                    <s:hidden name="campaignname" value="%{campaignname}" />
                    <s:hidden name="startdate" value="%{startdate}" />
                    <s:hidden name="enddate" value="%{enddate}" />
                    <s:hidden name="dailybdgt" value="%{dailybdgt}" />
                    <s:hidden name="deliverytype" value="%{deliverytype}" />
                </form>
                <!--left box end -->
                <!--right box start -->
                <div class="right rightbox">
                    <div><img src="adtype_images/s-top.jpg" width="271" height="6" alt="" title=""></div>
                    <div>
                        <h3>Campaign Summary</h3>
                        <table width="240" border="0" cellspacing="0" cellpadding="0" align="right" class="txt">
                            <tr>
                                <td width="100" class="bold">Name</td>
                                <td><s:property value="%{campaignname}" /></td>
                            </tr>
                            <tr>
                                <td class="bold">Date</td>
                                <td><s:property value="%{startdate}" /> - <s:property value="%{enddate}" /></td>
                            </tr>
                            <tr>
                                <td class="bold">Budget</td>
                                <td><s:property value="%{dailybdgt}" /></td>
                            </tr>
                            <tr>
                                <td class="bold">Delivery Method</td>
                                <td><s:property value="%{deliverytype}" /></td>
                            </tr>
                        </table>
                        <div class="clear"></div>
                        <div><img src="adtype_images/s-bottom.jpg" width="271" height="6" alt="" title=""></div>
                        <div class="height"></div>
                        <div><img src="adtype_images/s-top.jpg" width="271" height="6" alt="" title=""></div>
                        <div>
                            <h3>Ad Group Summary</h3>
                            <table width="240" border="0" cellspacing="0" cellpadding="0" align="right" class="txt">
                                <tr>
                                    <td width="100" class="bold">Name</td>
                                    <td><input type="button" id="pro" style=" border: none " /></td>
                                </tr>
                                <tr>
                                    <td class="bold">Date</td>
                                    <td><s:property value="%{startdate}" /></td>
                                </tr>
                            </table>
                            <div class="clear"></div>
                            <div><img src="adtype_images/s-bottom.jpg" width="271" height="6" alt="" title=""></div>
                        </div>

                        <div class="clear"></div>
                    </div>
                    <!--content end -->
                    <div> </div>

                </div>
                <!--right box end -->
                <div class="clear"></div>

            </div>
            <!--content end -->
            <div>
                <s:include value="footer_1.jsp"/>
            </div>


        </div>
        <!--Container End-->
        <div></div>
        <!--for accordian -->
        <script type="text/javascript" src="accordian/script.js"></script>
        <script type="text/javascript">

            var parentAccordion=new TINY.accordion.slider("parentAccordion");
            parentAccordion.init("acc","h3",0,0);

            var nestedAccordion=new TINY.accordion.slider("nestedAccordion");
            nestedAccordion.init("nested","h3",1,-1,"acc-selected");

        </script>
    </body>
</html>