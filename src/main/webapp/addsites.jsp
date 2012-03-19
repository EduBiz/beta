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


        <title>Add Sites</title>

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
                <div id="containerheader"  >Add Site</div>

                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">ADD SITE</div>
                <div class="buttonmenu">

                </div>

                <div class="clear"></div>

                <div id="formcontainer">
                    <s:form action="addsite" theme="simple">
                        <div class="formrow">
                            <div class="form-label"> Site Name</div>
                            <div class="form-widget"> <s:textfield name="sitename" label="Site Name" cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label"> Site Url</div>
                            <div class="form-widget">  <s:textfield name="siteurl" label="Site Url "  value="http://"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label">Description</div>
                            <div class="form-widget"> <s:textarea label="Description" name="desc" rows="3" cols="16.7"/></div>
                        </div>
                        <div class="clear"></div>
                         <div class="formrow">
                            <div class="form-label"> Background Color</div>
                            <div class="form-widget">  <s:textfield name="txtcolor" label="Background Color" cssClass="color" /></div>
                        </div>
                        <div class="clear"></div>
                         <div class="formrow">
                            <div class="form-label"> Background Text</div>
                            <div class="form-widget">  <s:textfield name="bgcolor" label="Background Text" cssClass="color"  /></div>
                        </div>
                        <div class="clear"></div>
                         <div class="formrow">
                            <div class="form-label">  Category</div>
                            <div class="form-widget">  <s:select label="Category" name="catgry" headerKey="Please select" headerValue="Please select" list="{'Business','Education','Entertainment','Comics','Finance','Games','Healthcare and Fitness','Lifestyle','Music','Navigation ','News','Photography','Productivity','Reference','Search Tools ','Social Networking','Sports','Travel','Utilities','Weather'}"  /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-button" style="float: right"> <s:submit value="Add Site" cssClass="button" /></div>
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
