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


        <title>Admin</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="jscolor.js"></script>
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

            <div id="toplogomenu">
            <div id="toplogomenu1">

                <a href="adratechange.action" id="toplogomenuselect" >Adzappy Home</a>
                <a href="marketplace.jsp">Marketplace</a>

            </div>
            <div id="toplogomenu2">

                <a href="#" >Hello,<%out.println(u1.getEmailId()); %></a>
                <a href="logout.action" >Log out</a>
                <a href="#" >Help</a>

            </div>
        </div>
        </div>

        <div id="mainbanner">

            <s:include value="menu_2.jsp"/>

        </div>

        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader"  >Change AD Rate</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title">Change AD Rate</div>


                <div class="clear"></div>

                <div id="formcontainer" align="center">
                    <s:form action="ratechg" theme="simple">
                        <div class="formrow"> 
                            <div class="form-label">   Existing Rate</div>
                            <div class="form-widget"> <s:textfield name="existrate" label="Existing Rate" readonly="true" value="%{ad.currentRate}"  disabled="true" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label"> New Rate</div>
                            <div class="form-widget">   <s:textfield name="newrt" label="New Rate "  cssClass="input-div"   /></div>
                        </div>

                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label"> Confirm New Rate</div>
                            <div class="form-widget">   <s:textfield name="cfrt" label="Confirm Rate" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>

                        <div class="formrow">
                            <div class="form-button" > <s:submit value="Change Rate" cssClass="button"  /></div>
                        </div>
                        <div class="clear"></div>
                    </s:form>
                </div>
                <div class="clear"></div>
                <div class="alert">
                    * If Any Error occurs Please Click <a  href="adratechange.action">Home</a> to Continue or click Back Button 
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
