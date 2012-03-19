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
                <div id="containerheader">Ad Information</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">Ad Information</div>
                <div class="buttonmenu">

                </div>

                <div class="clear"></div>

                <div id="leftpanel">
                    <ul>
                        <li>
                            <span class="leftnav-header">Step1</span>
                            <span>Campaign Info</span>
                        </li>
                        <li>
                            <span class="leftnav-header">Step2</span>
                            <span>Ad Type</span>
                        </li>
                        <li>
                            <span class="leftnav-header">Step3</span>
                            <span>Demographics</span>
                        </li>
                        <li class="navactive">
                            <span class="leftnav-header">Step4</span>
                            <span>Creation</span>
                        </li>
                    </ul>
                </div>


                <div id="formcontainer">
                    <s:form action="createAction" enctype="multipart/form-data" theme="simple">
                        <div class="formrow">
                            <div class="form-label"> Choose Ad Type</div>
                            <div class="form-widget">   <s:radio name="adtype"  required="true" label="Choose Ad Type" list="{'Text + Tile','Mobile Images Ads','Tablets'}" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">

                            <div class="form-label">Ad Name</div>
                            <div class="form-widget"> <s:textfield name="adname" label="Ad Name" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">

                            <div class="form-label">Ad Url</div>
                            <div class="form-widget">    <s:textfield name="url" label="URL"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">

                            <div class="form-label">Display Url</div>
                            <div class="form-widget">   <s:textfield name="displayurl" label="Display URL"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">

                            <div class="form-label">Ad Text</div>
                            <div class="form-widget">  <s:textfield name="adtext" label="Ad Text" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">

                            <div class="form-label">Ad Image</div>
                            <div class="form-widget">   <s:file label="Add Image" name="addimage" cssClass="input-div" ></s:file></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">

                            <div class="form-label">Tile Image</div>
                            <div class="form-widget">  <s:file label="Tile Image" name="tileimage" cssClass="input-div" ></s:file></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">

                            <div class="form-button" style="float: right" > <s:submit value="Create and Finish" cssClass="button" /></div>
                        </div>
                        <div class="clear"></div>
                    </s:form>


                </div>
                <div id="rightPanel">
                    <p align="left"><b>Campaign Name:</b> <s:property value="%{campaignname}" /></p><hr/>
                    <p align="left"><b>Date      :</b> <s:property value="%{startdate}" /> - <s:property value="%{enddate}" /></p><hr/>
                    <p align="left"><b>Budget    :</b> <s:property value="%{dailybdgt}" /></p> <hr/>
                    <p align="left"><b>Platform  :</b> <s:property value="%{platform}" /></p> <hr/>
                    <p align="left"><b>Location  :</b> <s:property value="%{location}" /></p> <hr/>
                    <p align="left"><b>Age  :</b> <s:property value="%{age}" /></p> <hr/>
                    <p align="left"><b>Gender  :</b> <s:property value="%{gender}" /></p> <hr/>
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
