
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>.::Sites::.</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="pagination.js"></script>
        <script type="text/javascript" src="jconfirmaction.jquery.js"></script>
        <script type="text/javascript">
	
            $(document).ready(function() {
                $('.ask').jConfirmAction();
            });
	
        </script>
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
                <div id="containerheader">SITE</div>
                <form action="searupsite.action"> <div style="float:right;"><input type="text" value="Search" name="s" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                    </div></form>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title" align="center">SITE</div>
                <div class="buttonmenu">
                    <div style="float:left"><a href="addsitenav.action"><input type="image" value="+Add sites" name="+Add sites" src="images/addsite.jpg"/></a></div>

                </div>

                <div class="clear"></div>
                <div class="tableheader">

                    <span class="Compaign">Site Name</span>
                    <span class="Created">Category</span>
                    <span class="Status">Site Url</span>
                    <span class="Budget">Edit</span>
                    <span class="CPC">Delete</span>
                    <span class="Clicks">Requests</span>
                    <span class="Clicks">eCPM</span>
                    <span class="CTR">Fill Rate</span>
                    <span class="Cost">RPM</span>

                </div>
                <div class="clear"></div>
                <s:iterator value="sitelist">
                    <div class="tabletext" id="results" >
                        <s:url action="editsite.action" var="editsite">
                            <s:param name="publishid" value="%{publishId}" />
                            <s:param name="sitename" value="%{siteName}" />
                            <s:param name="siteurl" value="%{siteUrl}" />
                            <s:param name="desc" value="%{description}" />
                            <s:param name="txtcolor" value="%{textColor}" />
                            <s:param name="bgcolor" value="%{bgColor}" />
                            <s:param name="catgry" value="%{category}" />
                        </s:url>
                        <span class="Compaign"><s:property value="siteName" /></span>
                        <span class="Created"><s:property value="category" /></span>
                        <span class="Status"><s:property value="siteUrl" /></span>
                        <span class="Budget"><s:a href="%{editsite}" ><img src="images/pencil.png"/></s:a></span>
                            <s:url action="deletesite.action" var="deletesite">
                                <s:param name="publishid" value="%{publishId}" />
                            </s:url>
                        <span class="CPC"><s:a href="%{deletesite}" ><img src="images/trash.png"/></s:a></span>
                        <span class="Clicks">0</span>
                        <span class="Clicks">$0.00</span>
                        <span class="CTR">0.00%</span>
                        <span class="Cost">$0.00</span>
                    </div></s:iterator>
                    <div class="clear"></div>



                    <div align="right" id="pageNavPosition"></div>    
                    <div class="clear"></div>



                    <div>
                    <s:include value="footer_1.jsp"/>
                </div>

            </div>     

            <script type="text/javascript">
                var pager = new Pager('results',20, 'pager', 'pageNavPosition');
                pager.init();
                pager.showPage(1);
            </script>

        </div>
        <!--Container End-->
        <div></div>

    </body>
</html>
