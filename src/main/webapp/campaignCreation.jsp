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

    </head>

    <body>
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
        <div id="container">
            <div id="containerbox">
                <div id="containerheader">Campaign Creation</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">Campaign Creation</div>
                <div class="buttonmenu">

                </div>

                <div class="clear"></div>

                <div id="leftpanel">
                    <ul>
                        <li class="navactive">
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
                        <li>
                            <span class="leftnav-header">Step4</span>
                            <span>Creation</span>
                        </li>
                    </ul>
                </div>


                <div id="formcontainer">
                    <s:form action="campaignMain" theme="simple">
                        <div class="formrow">
                            <div class="form-label">Campaign Name</div>
                            <div class="form-widget"> 
                                <div class="input-div"> <s:textfield name="campaignname" label="Campaign Name" required="true" cssClass="input-div" /></div>
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Start Date</div>
                            <div class="form-widget">
                                <div class="input-div"> <sj:datepicker name="startdate" displayFormat="mm/dd/yy" label="Start Date" cssClass="input-div" /></div>

                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">End Date</div>
                            <div class="form-widget">
                                <div class="input-div"> <sj:datepicker name="enddate" displayFormat="mm/dd/yy" label="End Date" cssClass="input-div" /></div>

                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Daily Budget</div>
                            <div class="form-widget">
                                <div class="input-div"> <s:textfield name="dailybdgt" label="Daily Budget $" required="true" cssClass="input-div" /></div>
                                <div>
                                    <span class="currency">$</span>
                                </div>				
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Delivery Type</div>
                            <div class="form-widget">
                                <div class="input-div">    <s:radio label="Delivery Type" name="deliverytype" list="{'Standard','Accelerated'}" required="true"  cssClass="input-div" /></div>
                               			
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Promotion Type</div>
                            <div class="form-widget">
                                <div class="input-div">    <s:select name="promotype"  label="Promotype" headerKey="Please select" headerValue="Please select" required="true"
                          list="{'Website','BlackBerry Application Ad','Android Application Ad','Iphone Application Ad','iTunes Media Ad','Streaming Video Ad','Books Ad','Click to Call Ad','Click to Map Ad'}" /></div>
                              			
                            </div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Notes</div>
                            <div class="form-widget"><s:textarea label="Note:(optional)" name="note" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-button" style="float: right" > <s:submit value="Save and Continue" cssClass="button" /></div>
                        </div>
                        <div class="clear"></div>
                    </s:form>
                </div>
                <div class="clear"></div>



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
