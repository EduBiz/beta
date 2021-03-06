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


        <title>Registration</title>

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

        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader">Registration</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">Registration</div>
                <div class="buttonmenu">

                </div>

                <div class="clear"></div>

                <div id="formcontainer" style="float: right" >
                    <s:form action="useRegistration" theme="simple">

                        <div class="clear"></div>
                        <div class="formrow"><s:hidden name="email" label="Email id"   value="%{email}"  />
                            <div class="form-label">First Name</div>
                            <div class="form-widget">   <s:textfield name="fname" label="First Name"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Last Name</div>
                            <div class="form-widget">    <s:textfield name="lname" label="Last Name"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Date of Birth</div>
                            <div class="form-widget">    <sj:datepicker name="dob" displayFormat="mm/dd/yy" label="Date of Birth"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Address Line1</div>
                            <div class="form-widget">   <s:textfield name="addline1" label="Address Line1"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Country</div>
                            <div class="form-widget">   <s:textfield name="ctry" label="Country"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">State/Region</div>
                            <div class="form-widget">  <s:textfield name="storeg" label="State/Region"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">City</div>
                            <div class="form-widget">   <s:textfield name="city" label="City"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Postal/Zip Code</div>
                            <div class="form-widget">  <s:textfield name="postcode" label="Postal/Zip Code"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow"  >
                           <div class="form-widget" style="margin-left: 240px;" > <s:submit value="Save Information" cssClass="button" /></div>
                        </div>
                        <div class="clear"></div>
                    </s:form>
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
