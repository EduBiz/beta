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


        <title>Sign Up</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="jscolor.js"></script>
    </head>
    <body>
          <%
        Object obj = session.getAttribute("User");
        
        if(obj!=null)
            {
            response.sendRedirect(request.getContextPath()+"/home.action");
        }
        %>
        <div id="topnav">

        </div>

        <div id="mainbanner">

            <div class="menubar">
                <ul>
                    <li><a href="indexn.jsp">Home</a></li>
                    <li><a href="login.jsp">Login</a></li> 
                </ul>
            </div>

        </div>

        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader"  >Sign Up</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">Sign Up</div>
                <div class="buttonmenu">

                </div>

                <div class="clear"></div>
                <div id="leftpanel">

                    <div align="left">
                        <img src="images/Sign-up_off.png" align="left" alt="" />
                    </div>

                </div>

                <div id="formcontainer">
                    <s:form  action="signup" theme="simple">
                        <div class="formrow" >
                            <div class="form-label">User Name</div>
                            <div class="form-widget">  <s:textfield name="uname" label="User Name" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow" >
                            <div class="form-label">Email_Address</div>
                            <div class="form-widget"> <s:textfield name="email" label="Email id" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Password</div>
                            <div class="form-widget">  <s:password name="pwd" label="Password" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow" >
                            <div class="form-label">Confirm Password</div>
                            <div class="form-widget">   <s:password name="confirmpwd" label="Confirm Password"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div align="right">
                            <div class="form-widget" align="center" > <s:submit value="Register" cssClass="button" /></div>
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
