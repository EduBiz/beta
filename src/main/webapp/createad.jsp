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

            <div id="containerheader">&nbsp;&nbsp;&nbsp;&nbsp;Ad Information</div>

            <div class="clear"></div>
            <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
            <div class="clear"></div>

            <!--menu start -->
            <div class="header">
                <div id="access4">


                    <div class="menu"><ul><li class="current_page_item"><a title="Step 1" href="#">Step 1<span>Campaign Info</span></a></li>
                            <li class="page_item page-item-18"><a href="#" title="Step 2">Step 2<span>Ad Group Type</span></a></li>
                            <li class="page_item page-item-16"><a href="#" title="Step 3">Step 3<span>Targeting</span></a></li>
                            <li class="page_item page-item-390"><a href="#" title="Step 4">Step 4<span>Creative &amp; Bid</span></a></li>
                        </ul></div>

                </div>
            </div>
            <!--menu end -->
            <!--content start -->
            <div class="content pad10">
                <h2>Create Ad</h2>

                <s:form action="createAction" enctype="multipart/form-data" theme="simple">
                    <!--left box start -->
                    <div class="left leftbox">
                        <div><img src="adtype_images/top.jpg" width="615" height="9" alt="" title=""></div>
                        <div class="boxbg">
                            <!--white box start -->
                            <div class="whitebg">
                                <div><img src="adtype_images/white-t.jpg" width="571" height="10" alt="" title=""></div>
                                <div class="white-txt">
                                    <div class="white-txt-border">
                                        <p>Choose Ad Type</p>
                                        <input name="adtype" type="radio" value="Text + Tile">
                                        &nbsp;Text + Tile<br/>
                                        <input name="adtype" type="radio" value="Mobile Images Ads">
                                        &nbsp;Mobile Images Ads <br/>
                                        <input name="adtype" type="radio" value="Tablets">
                                        &nbsp;Tablets </div>
                                </div>
                                <div><img src="adtype_images/white-b.jpg" width="571" height="10" alt="" title=""></div>
                            </div>
                            <!--white box end -->
                            <div class="height"></div>
                            <!--white box start -->
                            <div class="whitebg">
                                <div><img src="adtype_images/white-t.jpg" width="571" height="10" alt="" title=""></div>
                                <div class="white-txt">
                                    <div class="white-txt-border">
                                        <p>Ad Information</p>

                                        Ad Name&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                                        <s:textfield name="adname" label="Ad Name" cssClass="input-div" /><br/>
                                        Ad Url&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                        <s:textfield name="url" label="URL"   cssClass="input-div" /><br/>
                                        <p></p>
                                        Display Url&nbsp;&nbsp;
                                        <s:textfield name="displayurl" label="Display URL"  cssClass="input-div" /><br/>
                                        Ad Text&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
                                        <s:textfield name="adtext" label="Ad Text" cssClass="input-div" /><br/>
                                    </div>
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
                                        <p>Creative</p>
                                        Ad Image
                                        &nbsp; <s:file label="Add Image" name="addimage" cssClass="input-div" ></s:file><br/>
                                            Tile Image
                                            &nbsp;<s:file label="Tile Image" name="tileimage" cssClass="input-div" ></s:file>
                                    </div>

                                        <div class="clear"></div>
                                    </div>
                                    <div><img src="adtype_images/white-b.jpg" width="571" height="10" alt="" title=""></div>
                                </div>
                                <!--white box end -->
                                <div class="height"></div>

                                <div align="center" class="margina">
                                <s:submit value="Create and Finish" cssClass="button" />

                            </div>
                        </div>
                        <div><img src="adtype_images/bottom.jpg" width="615" height="9" alt="" title=""></div>
                    </div>
                </s:form>
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
                                    <td width="100" class="bold">Name </td>
                                    <td><s:property value="%{promotype}" /></td>
                                </tr>
                                <tr>
                                    <td width="100" class="bold">Platform </td>
                                    <td><s:property value="%{platform}" /></td>
                                </tr>
                                <tr>
                                    <td class="bold">Location</td>
                                    <td><s:property value="%{location}" /></td>
                                </tr>
                                <tr>
                                    <td class="bold">Age</td>
                                    <td><s:property value="%{age}" /></td>
                                </tr>
                                <tr>
                                    <td class="bold">Gender</td>
                                    <td><s:property value="%{gender}" /></td>
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
            <div class="clear"> </div>
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
