
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>.::AdZappy::.</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="pagination.js"></script>
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
                <div id="containerheader">Campaigns</div>
                <form action="seardash.action"> <div style="float:right;" id="searchbox" ><input type="text" value="Search" name="s" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                    </div></form>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title">Campaigns</div>
                <div class="buttonmenu">
                    <div style="float:left"><a href="addcampnav.action"><input type="image" value="+Add Campaign" name="+Add Campaign" src="images/free-psd.jpg"/></a></div> 

                </div>

                <div class="clear"></div>
                <div class="tableheader">

                    <span class="Compaign">Campaign</span>
                    <span class="Created">Start Date</span>
                    <span class="Budget">Budget</span>

                </div>
                <div class="clear"></div>
                <s:iterator  value="camplist">
                    <div class="tabletext" id="results" >
                        <span class="Name"><s:property value="campaignName" /></span>
                        <span class="Created"><s:property value="startDate" /></span>
                        <span class="Budget"><s:property value="dialyBudget" /></span>
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
