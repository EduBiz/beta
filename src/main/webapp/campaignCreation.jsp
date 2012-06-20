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
        <title>Campaign Registration</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <!--for new changes in design Jun-2012  -->
        <link type="text/css" href="styleacc.css" rel="stylesheet" />
        <!--for display system date in right panel Jun-2012  -->
        <script>
            function addDate(){
                date = new Date();
                var month = date.getMonth()+1;
                var day = date.getDate();
                var year = date.getFullYear();

                if (document.getElementById('t4').value == ''){
                    document.getElementById('t4').value = day + '/' + month + '/' + year;
                }
            }
        </script>
    </head>
    <body onload="addDate();">
        <%
          Object obj = session.getAttribute("User");
       
           User u1=(User)session.getAttribute("User");
          if(obj==null)
              {
              response.sendRedirect(request.getContextPath()+"/sessionError.action");
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
        <!--Container Start-->
        <div id="container">

            <div>
                <div id="containerheader">&nbsp;&nbsp;Campaigns</div>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>

                <div class="clear"></div>
            </div>

            <!--menu start -->
            <div class="header">
                <div id="access1">


                    <div class="menu"><ul><li class="current_page_item"><a title="Step 1" href="#">Step 1<span>Campaign Info</span></a></li>
                            <li class="page_item page-item-18"><a href="#" title="Step 2">Step 2<span>Ad Group Type</span></a></li>
                            <li class="page_item page-item-16"><a href="#" title="Step 3">Step 3<span>Targeting</span></a></li>
                            <li class="page_item page-item-390"><a href="#" title="Step 4">Step 4<span>Creative &amp; Bid</span></a></li>
                        </ul></div>

                </div>
            </div>
            <!--menu end -->
            <!--content start -->
            <s:form action="campaignMain" theme="simple">
                <div class="content pad10">
                    <h2>Create New Campaign</h2>
                    <!--left box start -->
                    <div class="left leftbox">
                        <div><img src="adtype_images/top.jpg" width="615" height="9" alt="" title=""></div>
                        <div id="ddtags" class="boxbg fo">
                            <dl>
                                <dt>Campaign Name</dt>
                                <dd>
                                    <s:textfield name="campaignname" label="Campaign Name"  cssClass="input-div" id="t1" onkeyup="document.getElementById('t2').value = this.value;" />
                                </dd>
                                <dt>Start Date</dt>
                                <dd>
                                    <div class="left">
                                        <sj:datepicker id="startdate" name="startdate" displayFormat="mm/dd/yy" label="Start Date" cssClass="input-div" onCompleteTopics="onDpClose"    onclick="document.getElementById('t4').value = this.value;"/>
                                    </div>

                                    <div class="clear"></div>
                                </dd>
                                <dt>End Date</dt>
                                <dd>
                                    <div class="left">
                                        <sj:datepicker id="enddate" name="enddate" displayFormat="mm/dd/yy" label="End Date" cssClass="input-div" minDate="0" maxDate="" onclick="document.getElementById('t6').value = this.value;" />
                                        <!-- Start date end date calender validation using jQuery script 1-Jun-2012 added -->
                                        <script type="text/javascript">
                                            $.subscribe('onDpClose', function(event,data) {
                                                $('#enddate').datepicker( "option" , 'minDate',event.originalEvent.dateText ); 
                                            });
                                        </script> 
                                        <!-- End Validation Script-->
                                    </div>

                                    <div class="clear"></div>
                                </dd>
                                <dt>Daily Budget</dt>
                                <dd>
                                    <s:textfield name="dailybdgt" label="Daily Budget $" required="true" cssClass="input-div" id="t7" onkeyup="document.getElementById('t8').value = this.value;" />
                                    $</dd>
                                <dt>Delivery Type</dt>
                                <dd>
                                    <s:radio label="Delivery Type" name="deliverytype" list="{'Standard','Accelerated'}" required="true"  cssClass="input-div" />
                                </dd>
                                <dt>Notes</dt>
                                <dd>
                                    <s:textarea label="Note:(optional)" name="note" rows="5"  cols="20" />
                                </dd>
                                <dt style="margin-right:10px;">&nbsp;</dt>
                                <dd>
                                    <s:submit value="Save and Continue" cssClass="button" />
                                    &nbsp;

                                </dd>
                            </dl>
                        </div>
                        <div><img src="adtype_images/bottom.jpg" width="615" height="9" alt="" title=""></div>
                    </div>
                    <!--left box end -->
                    <!--right box start -->
                    <div class="right rightbox">
                        <div><img src="adtype_images/s-top.jpg" width="271" height="6" alt="" title=""></div>
                        <div>
                            <h3>Campaign Name</h3>
                            <table width="240" border="0" cellspacing="0" cellpadding="0" align="center" class="txt">
                                <tr>
                                    <td width="100" class="bold">Name</td>
                                    <td><input type="button" style=" border: none" id="t2"/> </td>
                                </tr>
                                <tr>
                                    <td class="bold">Date</td>
                                    <td><input type="button" style=" border: none" id="t4"/>-<input type="button" style=" border: none" id="t6"/></td>
                                </tr>
                                <tr>
                                    <td width="100" class="bold">Budget</td>
                                    <td><input type="button" style=" border: none" id="t8"/> </td>
                                </tr>
                            </table>
                            <div><img src="adtype_images/s-bottom.jpg" width="271" height="6" alt="" title=""></div>
                        </div>
                        <!--right box end -->
                        <div class="clear"></div>
                    </div>

                </s:form>
                <!--content end -->
                <div> </div>
                <!--content end -->
            </div>
            <div>
                <s:include value="footer_1.jsp"/>
            </div>

        </div>     
        <!--Container End-->
        <div></div>
    </body>
</html>
