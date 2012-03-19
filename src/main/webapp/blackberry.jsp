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
                <div id="containerheader"  >BlackBerry</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">BlackBerry</div>
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
                    <s:form action="blackberryAction" theme="simple">
                        <div class="formrow">
                            <div class="form-label"> Select Device</div>
                            <div class="form-widget"> <s:radio name="platform"  required="true" label="Select Device" list="{'Target all devices','Target devices by platform','Target devices by manufacturer'}" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Select Operator</div>
                            <div class="form-widget">    <s:radio name="location" required="true" label="Select Operator" list="{'Target all Geographic location','Target specific geographic location'}"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Select Os</div>
                            <div class="form-widget"> <select name="blackberry" required="true" onChange="if(this.value!=''){document.getElementById('fruit').src='images/bbimage/'+this.value+'.jpg';}">
                                    <option value="Please select">Please select</option>
                                    <option value="blackberry-8110">blackberry-8110</option>
                                    <option value="blackberry-Curve-3g-9300">blackberry-Curve-3g-9300</option>
                                    <option value="blackberry-Torch-9800">blackberry-Torch-9800</option>
                                    <option value="blackberry-bold-9780">blackberry-bold-9780</option>
                                    <option value="blackberry-bold-9790">blackberry-bold-9790</option>
                                    <option value="blackberry-bold-9900">blackberry-bold-9900</option>
                                    <option value="blackberry-bold">blackberry-bold</option>
                                    <option value="blackberry-curve-8900">blackberry-curve-8900</option>
                                    <option value="blackberry-curve-9380">blackberry-curve-9380</option>
                                    <option value="blackberry-pearl-3g-9100">blackberry-pearl-3g-9100</option>
                                    <option value="blackberry-pearl-3g-9105">blackberry-pearl-3g-9105</option>
                                    <option value="blackberry-pearl-flip-8220">blackberry-pearl-flip-8220</option>
                                    <option value="blackberry-storm-2-9550">blackberry-storm-2-9550</option>
                                    <option value="blackberry-storm-9500">blackberry-storm-9500</option>
                                    <option value="blackberry-storm2-9520">blackberry-storm2-9520</option>
                                    <option value="blackberry-storm2-9550">blackberry-storm2-9550</option>
                                    <option value="blackberry-torch--2">blackberry-torch--2</option>
                                    <option value="blackberry-torch-9850">blackberry-torch-9850</option>
                                </select></div>
                            <div class="form-widget">  <img src="images/bbimage/blackberry-8110.jpg" height="93" width="70" alt="fruit" id="fruit"/> </div>
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
        <p align="left"><b>Date    :</b> <s:property value="%{startdate}" /> - <s:property value="%{enddate}" /></p><hr/>
        <p align="left"><b>Budget  :</b> <s:property value="%{dailybdgt}" /></p> <hr/>
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
