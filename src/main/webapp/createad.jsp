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
        <!--for accordion -->
        <link rel="stylesheet" href="accordian/style.css" type="text/css">
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


                <!--left box start -->
                <div class="left leftbox">
                    <div><img src="images/top.jpg" width="615" height="9" alt="" title=""></div>
                    <div class="boxbg">
                        <!--accordian start -->
                        <ul id="acc">
                            <li>
                                <div style="height: auto;">
                                    <div>
                                        <ul class="acc" id="nested">

                                            <li>
                                                <s:form action="createAction" enctype="multipart/form-data" theme="simple">
                                                    <s:hidden name="displayurl" value="Default" />
                                                    <s:hidden name="adtype" value="Text + Tile" />
                                                    <s:hidden name="campaignname" value="%{campaignname}" />
                                                    <s:hidden name="startdate" value="%{startdate}" />
                                                    <s:hidden name="enddate" value="%{enddate}" />
                                                    <s:hidden name="dailybdgt" value="%{dailybdgt}" />
                                                    <s:hidden name="deliverytype" value="%{deliverytype}" />
                                                    <s:hidden name="promotype" value="%{promotype}" />
                                                    <s:hidden name="platform" value="%{platform}" />
                                                    <s:hidden name="location" value="%{location}" />
                                                    <s:hidden name="age" value="%{age}" />
                                                    <s:hidden name="gender" value="%{gender}" />
                                                    <h3><span>Text + Tile</span><br>
                                                        Create a standard 50 character text ad.</h3>

                                                    <div class="acc-section">

                                                        <div class="acc-content">

                                                            <div class="border" style="border-top:0px; padding-bottom:15px">

                                                                <div class="accordiantxtnw">
                                                                    <div style="padding:10px 22px 0 0;">
                                                                        <p style="padding-bottom:10px;">Ad Information</p>
                                                                        <p class="bordernw">&nbsp;</p>
                                                                    </div>


                                                                    <p><span style="padding-right:22px;">Ad Name</span><input name="adname" type="text" ></p><br>
                                                                    <p><span>Ad URL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input name="url" type="text" ></p>
                                                                    <p><span style="padding:10px 0 0 87px; font-size:11px;">Link to an iTunes page <a href="#" title="Learn More">Learn More</a></span></p>
                                                                </div>
                                                            </div>
                                                            <div class="border" style="border-top:0px; padding-bottom:15px">

                                                                <div class="accordiantxtnw">
                                                                    <div style="padding:10px 22px 0 0;">
                                                                        <p style="padding-bottom:10px;">Creative</p>
                                                                        <p class="bordernw">&nbsp;</p>
                                                                    </div>


                                                                    <p><span style="padding-right:22px;">Ad Text</span><input name="adtext" type="text"></p>
                                                                    <p><span style="padding:0 0 0 80px; font-size:11px;"></span></p>
                                                                </div>
                                                            </div>

                                                            <div class="border" style="border-top:0px; padding-bottom:15px">

                                                                <div class="accordiantxtnw">
                                                                    <div style="padding:10px 22px 0 0;">
                                                                        <p style="padding-bottom:10px;">Title Images</p>
                                                                        <p class="bordernw">&nbsp;</p>
                                                                    </div>
                                                                    <div style="padding:10px 22px 0 0;" class="accordiantxt" >


                                                                        <span><input name="dispimg"  type="radio" value="default" checked></span> <span>Use a Standard title image</span>
                                                                        <select>
                                                                            <option value="">Finance, Business, Productivity</option>
                                                                        </select>


                                                                    </div>

                                                                    <div style="padding:10px 22px 0 0;" class="accordiantxt" >

                                                                        <p class="height6"></p>
                                                                        <span><input name="dispimg"  type="radio" value="default"></span><span>Custom tile image</span> <p><span><img src="images/asm.jpg" width="288" height="44" alt="AD-IMAGE" title="Tile Image"></span>
                                                                        </p>

                                                                        <div align="center" class="margina">
                                                                            <s:file label="Add Image" name="addimage" cssClass="input-div"></s:file>
                                                                        </div>


                                                                    </div>

                                                                </div>
                                                            </div>


                                                            <div class="border" style="border-top:0px; padding-bottom:15px">

                                                                <div class="accordiantxtnw">
                                                                    <p style="padding:15px 0 0 130px; font-weight:normal; font-size:11px;">Tile Tile - 72x72</p>
                                                                    <img style="margin:15px 0 0 130px;" src="images/amed.jpg" alt="Tile-Image" title="">
                                                                    <div align="center" class="margina">
                                                                        <s:file label="Tile Image" name="tileimage" cssClass="input-div" ></s:file>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="border" style="border-top:0px; padding-bottom:15px">


                                                                <div class="accordiantxtnw" style="padding-top:15px">
                                                                    <p>bid<span style="padding-left:450px;">Mid bid</span></p>
                                                                    <p>$ <input type="text" style="width:35px;" value="0.01" ><span style="padding-left:427px;">$ 0.01</span></p>



                                                                </div>
                                                            </div>

                                                            <div class="border" style="border-top:0px; padding-bottom:15px">


                                                                <div class="accordiantxtnw" style="padding-top:15px">

                                                                    <div align="center" class="margina">
                                                                        <input type="submit" value="Create Ad and Finish" class="shadowbutton">
                                                                        &nbsp;

                                                                    </div>




                                                                </div>
                                                            </div>




                                                            <div><img src="accordian/accordian-bottom.jpg" width="571" height="10" alt="" title=""></div>
                                                        </div>
                                                    </div>

                                                </s:form>
                                            </li>

                                            <li>
                                                <s:form action="createAction" enctype="multipart/form-data" theme="simple">
                                                    <s:hidden name="displayurl" value="Default" />
                                                    <s:hidden name="campaignname" value="%{campaignname}" />
                                                    <s:hidden name="startdate" value="%{startdate}" />
                                                    <s:hidden name="enddate" value="%{enddate}" />
                                                    <s:hidden name="dailybdgt" value="%{dailybdgt}" />
                                                    <s:hidden name="deliverytype" value="%{deliverytype}" />
                                                    <s:hidden name="promotype" value="%{promotype}" />
                                                    <s:hidden name="platform" value="%{platform}" />
                                                    <s:hidden name="location" value="%{location}" />
                                                    <s:hidden name="age" value="%{age}" />
                                                    <s:hidden name="gender" value="%{gender}" />
                                                    <h3><span>Image Ads</span><br>
                                                        Create a banner ad by uploading supported banner formats.</h3>

                                                    <div class="acc-section">

                                                        <div class="acc-content">
                                                            <div class="border" style="border-top:0px; padding-bottom:15px">

                                                                <div class="accordiantxtnw">
                                                                    <div style="padding:10px 22px 0 0;" class="accordiantxt" >
                                                                        <p style="padding-bottom:10px;">Please select device type</p>

                                                                        <input name="adtype" type="radio" value="Mobile Images Ads" checked>&nbsp;Mobile Phones<br/>

                                                                        <input name="adtype" type="radio" value="Tablets">&nbsp;Tablets<br/>
                                                                    </div>
                                                                </div>



                                                            </div>
                                                            <div class="border" style="border-top:0px; padding-bottom:15px">

                                                                <div class="accordiantxtnw">
                                                                    <div style="padding:10px 22px 0 0;">
                                                                        <p style="padding-bottom:10px;">Ad Information</p>
                                                                        <p class="bordernw">&nbsp;</p>
                                                                    </div>


                                                                    <p><span style="padding-right:22px;">Ad Name</span><input name="adname" type="text" ></p><br>
                                                                    <p><span>Ad URL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span><input name="url" type="text" ></p>
                                                                    <p><span style="padding:10px 0 0 87px; font-size:11px;">Link to an iTunes page <a href="#" title="Learn More">Learn More</a></span></p>
                                                                </div>
                                                            </div>
                                                            <div class="border" style="border-top:0px; padding-bottom:15px">

                                                                <div class="accordiantxtnw">
                                                                    <div style="padding:10px 22px 0 0;">
                                                                        <p style="padding-bottom:10px;">Creative<span style="padding-left:248px;">Image Upload (JPG, GIF, PNG)</span></p>
                                                                        <p class="bordernw">&nbsp;</p>
                                                                    </div>


                                                                    <p>Ad Text</p>
                                                                    <p><input name="adtext" type="text" style="width:320px; height:40px;" value=""></p>

                                                                    <div align="center" class="margina">
                                                                        <s:file label="Add Image" name="addimage" cssClass="input-div"></s:file>
                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="border" style="border-top:0px; padding-bottom:15px">


                                                                <div class="accordiantxtnw" style="padding-top:15px">
                                                                    <p>bid<span style="padding-left:450px;">Mid bid</span></p>
                                                                    <p>$ <input type="text" style="width:35px;" value="0.01" ><span style="padding-left:427px;">$ 0.01</span></p>



                                                                </div>
                                                            </div>

                                                            <div class="border" style="border-top:0px; padding-bottom:15px">


                                                                <div class="accordiantxtnw" style="padding-top:15px">

                                                                    <div align="center" class="margina">
                                                                        <input type="submit" value="Create Ad and Finish" class="shadowbutton">
                                                                        &nbsp;

                                                                    </div>




                                                                </div>
                                                            </div>




                                                            <div><img src="accordian/accordian-bottom.jpg" width="571" height="10" alt="" title=""></div>
                                                        </div>
                                                    </div>
                                                </s:form>
                                            </li>




                                        </ul>
                                        <div class="clear"></div>
                                    </div>
                                </div>
                            </li>
                        </ul>
                        <div class="clear"></div>
                        <!--accordian end -->


                    </div>
                    <div><img src="images/bottom.jpg" width="615" height="9" alt="" title=""></div>
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
