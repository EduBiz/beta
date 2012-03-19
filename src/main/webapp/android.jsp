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
            <div id="containerbox">
                <div id="containerheader"  >Android</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">ANDROID</div>
                <div class="buttonmenu">

                </div>

                <div class="clear"></div>

                <div id="leftpanel">
                    <ul>
                        <li>
                            <span class="leftnav-header">Step1</span>
                            <span>Campaign Info</span>
                        </li>
                        <li class="navactive">
                            <span class="leftnav-header">Step2</span>
                            <span>Ad Type</span>
                        </li>
                        <li>
                            <span class="leftnav-header">Step3</span>
                            <span>Demographics</span>
                        </li>
                        <li>
                            <span class="leftnav-header">Step4</span>
                            <span>Creation</span>
                        </li>
                    </ul>
                </div>


                <div id="formcontainer">
                    <s:form action="androidAction" theme="simple">
                        <div class="formrow">
                            <div class="form-label"> Platform Devices</div>
                            <div class="form-widget"> <s:radio name="platform" required="true" label="platform Devices" list="{'Target all devices','Target devices by platform','Target devices by manufacturer'}"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label"> Geography/Operator</div>
                            <div class="form-widget">   <s:radio name="location" required="true" label="Geography/Operator" list="{'Target all Geographic location','Target specific geographic location'}"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Select Os</div>
                            <div class="form-widget"> <select title="Select Os" name="android" required="true" onChange="if(this.value!=''){document.getElementById('fruit').src='images/android/'+this.value+'.jpg';}">
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


                                </select></div>
                            <div class="form-widget"> <img src="images/android/acer-liquid-e-ferrari-thumb.jpg" height="93" width="70" alt="fruit" id="fruit"/> </div>
                        </div>

                        <div class="clear"></div>
                        <div class="formrow">
                            <s:hidden name="campaignname" value="%{campaignname}" />
                            <s:hidden name="startdate" value="%{startdate}" />
                            <s:hidden name="enddate" value="%{enddate}" />
                            <s:hidden name="dailybdgt" value="%{dailybdgt}" />
                            <div class="form-button" style="float: right" > <s:submit value="Save and Continue" cssClass="button" /></div>
                        </div>
                        <div class="clear"></div>
                    </s:form>


                </div>
                <div id="rightPanel">
                    <p align="left"><b>Campaign Name:</b> <s:property value="%{campaignname}" /></p><hr/>
                    <p align="left"><b>Date      :</b> <s:property value="%{startdate}" /> - <s:property value="%{enddate}" /></p><hr/>
                    <p align="left"><b>Budget    :</b> <s:property value="%{dailybdgt}" /></p> <hr/>
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
