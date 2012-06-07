<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
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

            <div id="containerheader"  >&nbsp;&nbsp;&nbsp;Android</div>

            <div class="clear"></div>
            <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>

            <div class="clear"></div>
            <!--menu start -->
            <div>&nbsp;&nbsp;<img src="navmenu/menu3.jpg" width="941" height="45" alt="" title="" ></div>
            <!--menu end -->

            <!--content start -->
            <div class="content pad10">
                <h2>Create: Android ad Group</h2>
                <s:form action="androidAction" theme="simple">
                    <!--left box start -->
                    <div class="left leftbox">
                        <div><img src="adtype_images/top.jpg" width="615" height="9" alt="" title=""></div>
                        <div class="boxbg">
                            <!--white box start -->
                            <div class="whitebg">
                                <div><img src="adtype_images/white-t.jpg" width="571" height="10" alt="" title=""></div>
                                <div class="white-txt">
                                    <div class="white-txt-border">
                                        <p>Platforms / Devies</p>
                                        <input name="platform" type="radio" value="Target all devices">
                                        &nbsp;Target all Device<br/>
                                        <input name="platform" type="radio" value="Target devices by platform">
                                        &nbsp;Target devices by platform <br/>
                                        <input name="platform" type="radio" value="Target devices by manufacturer">
                                        &nbsp;Target devices by manufacturer </div>
                                </div>
                                <div><img src="adtype_images/white-b.jpg" width="571" height="10" alt="" title=""></div>
                            </div>
                            <!--white box end -->
                            <div class="height"></div>
                            <!--white box start -->
                            <div class="whitebg">
                                <div><img src="adtype_images/white-t.jpg" width="571" height="10" alt="" title=""></div>
                                <div class="white-txt">
                                    <div class="white-txt-border left box-wd">
                                        <p>Geoography / Operators</p>
                                        <input name="location" type="radio" value="Target all Geographic location">
                                        &nbsp;Target all Geographic location<br/>
                                        <input name="location" type="radio" value="Target specific geographic location">
                                        &nbsp;Target specific geographic location

                                        <p> &nbsp;Select Os</p>
                                        <select title="Select Os" name="android" required="true" onChange="if(this.value!=''){document.getElementById('fruit').src='images/android/'+this.value+'.jpg';}">
                                            <option value="Please select">Please select</option>
                                            <option value="acer-liquid-e-ferrari-thumb">acer-liquid-e-ferrari</option>
                                            <option value="alcatel-ot-980-thumb">alcatel-ot-980</option>
                                            <option value="dell-aero-thumb">dell-aero</option>
                                            <option value="dell-venue-thumb">dell-venue</option>
                                            <option value="htc-desire-hd-thumb">htc-desire-hd</option>
                                            <option value="htc-incredible-s-thumb">htc-incredible-s</option>
                                            <option value="htc-legend-a6363-thumb">htc-legend-a6363</option>
                                            <option value="htc-salsa-thumb">htc-salsa</option>
                                            <option value="htc-sensation-thumb">htc-sensation</option>                            
                                            <option value="htc-wildfire-s-thumb">htc-wildfire-s</option>
                                            <option value="huawei-ideos-chat-u8300-thumb">huawei-ideos-chat-u8300</option>
                                            <option value="huawei-ideos-x2-u8500-thumb">huawei-ideos-x2-u8500</option>
                                            <option value="lg-gt540-optimus-thumb">lg-gt540-optimus</option>
                                            <option value="lg-optimus-one-p500-thumb">lg-optimus-one-p500</option>
                                            <option value="motorola-charm-mb502-thumb">motorola-charm-mb502</option>
                                            <option value="motorola-defy-thumb">motorola-defy</option>
                                            <option value="motorola-milestone-xt720-thumb">motorola-milestone-xt720</option>
                                            <option value="samsung-galaxy-551-thumb">samsung-galaxy-551</option>
                                            <option value="samsung-galaxy-ace-s5830-thumb">samsung-galaxy-ace-s5830</option>
                                            <option value="samsung-galaxy-s2-i9100-thumb">samsung-galaxy-s2-i9100</option>
                                            <option value="samsung-galaxy-sl-i9003-thumb">samsung-galaxy-sl-i9003</option>
                                            <option value="se-xperia-arc-thumb">se-xperia-arc</option>
                                            <option value="se-xperia-x10-mini-thumb">se-xperia-x10-mini</option>
                                            <option value="sony-ericsson-xperia-mini-pro-sk17i-thumb">sony-ericsson-xperia-mini-pro-sk17i</option>
                                            <option value="spice-mi-310-thumb">spice-mi-310</option>
                                            <option value="videocon-v7400-thumb">videocon-v7400</option>
                                        </select>


                                        <p></p>

                                    </div>
                                    <div class="white-txt-border right box-wd">
                                        <p>Device / Os</p>
                                        <div class="form-widget">
                                            <img src="images/android/acer-liquid-e-ferrari-thumb.jpg" height="93" width="70" alt="fruit" id="fruit"/>
                                        </div>
                                    </div>
                                    <div class="clear"></div>
                                </div>
                                <div><img src="adtype_images/white-b.jpg" width="571" height="10" alt="" title=""></div>
                            </div>
                            <!--white box end -->
                            <div class="height"></div>
                            <!--gray box start -->
                            <div>
                                <div><img src="adtype_images/gray-top.jpg" width="571" height="7" alt="" title=""></div>
                                <div class="grayboxbg">
                                    <div class="left font-weight contenttxt" style="margin-left:10px;">Demographics:</div>

                                    <div class="clear"></div>
                                </div>
                                <div><img src="adtype_images/gray-bottom.jpg" width="571" height="7" alt="" title=""></div>
                            </div>
                            <!--gray box end -->
                            <div class="height"></div>
                            <!--white box start -->
                            <div class="whitebg">
                                <div><img src="adtype_images/white-t.jpg" width="571" height="10" alt="" title=""></div>
                                <div class="white-txt">
                                    <div class="white-txt-border left box-wd">
                                        <p>Age</p>
                                        <input name="age" type="radio" value="Above 35">
                                        &nbsp;Above 35<br/>
                                        <input name="age" type="radio" value="29-35">
                                        &nbsp;29-35<br/>
                                        <input name="age" type="radio" value="16-28">
                                        &nbsp;16-28 <br/>
                                        <input name="age" type="radio" value="9-15">
                                        &nbsp;9-15 <br/>
                                        <input name="age" type="radio" value="All">
                                        &nbsp;All <br/>
                                    </div>
                                    <div class="white-txt-border right box-wd">
                                        <p>Gender</p>
                                        <input name="gender" type="radio" value="Male">
                                        &nbsp;Male<br/>
                                        <input name="gender" type="radio" value="Female">
                                        &nbsp;Female <br/>
                                        <input name="gender" type="radio" value="All User">
                                        &nbsp;All User <br/>
                                        <div class="clear"></div>
                                    </div>
                                    <div><img src="adtype_images/white-b.jpg" width="571" height="10" alt="" title=""></div>
                                </div>
                                <!--white box end -->
                                <div class="height"></div>

                                <div align="center" class="margina">
                                    <input type="submit" value="Save and Continue" class="button"/>
                                    &nbsp;

                                </div>
                            </div>
                            <div><img src="adtype_images/bottom.jpg" width="615" height="9" alt="" title=""></div>
                                <s:hidden name="campaignname" value="%{campaignname}" />
                                <s:hidden name="startdate" value="%{startdate}" />
                                <s:hidden name="enddate" value="%{enddate}" />
                                <s:hidden name="dailybdgt" value="%{dailybdgt}" />
                                <s:hidden name="deliverytype" value="%{deliverytype}" />
                                <s:hidden name="promotype" value="%{promotype}" />
                            </s:form>
                    </div>
                </div>
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
                                    <td><s:property value="%{promotype}" /></td>
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



                </div>
                <!--right box end -->
                <div class="clear"></div>
            </div>
            <!--content end -->

            <div class="clear"></div>
            <div>
                <s:include value="footer_1.jsp"/>
            </div>





        </div>
        <!--Container End-->
        <div></div>







    </body>
</html>
