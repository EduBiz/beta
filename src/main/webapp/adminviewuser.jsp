
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
    <%@taglib uri="/struts-tags" prefix="s"%>
    <%@page import="model.*"%>
    <%@ page import="java.util.*" %>
    <%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
    <head>
        <meta http-equiv="content-type" content="text/html; charset=windows-1250">

        <title>View User</title>

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

            <div id="toplogomenu">
            <div id="toplogomenu1">

                <a href="" >Adzappy Home</a>
                <a href="adratechange.action" id="toplogomenuselect">Marketplace</a>

            </div>
            <div id="toplogomenu2">

                <a href="" >Hello,<%out.println(u1.getEmailId()); %></a>
                <a href="logout.action" >Log out</a>
                <a href="" >Help</a>

            </div>
        </div>
        </div>

        <div id="mainbanner">
            
          <s:include value="menu_2.jsp"/>
        
        </div>
        <!--Container Start-->
        <div id="container">
            <div id="containerbox">
                <div id="containerheader">View Users</div>
                 <form action="searchall.action"> <div style="float:right;" id="searchbox" ><input type="text" value="Search" name="s" size="20" onblur="if(this.value == '') { this.value = 'Search'; }" onfocus="if(this.value == 'Search') { this.value = ''; }" /><input type="submit" value="Go"/>
                    </div></form>
                <div class="clear"></div>
               <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>
                <div class="title">View All Users</div>
              
               
                <div class="clear"></div>
                <div class="tableheader"  >
                   
                    <span class="Compaign">Email Id</span>
                    <span class="Compaign">User Name</span>
                    <span class="Compaign">Member Since</span>
                    <span class="Status">Status</span>
                    
                </div>
                <div class="clear"></div>
                <s:iterator  value="alluserlist">
                    <div class="tabletext" id="results" >
                
                    <span class="Compaign"><s:property value="emailId" /></span>
                    <span class="Compaign"><s:property value="userName" /></span>
                    <span class="Compaign"><s:property value="regDate" /></span>
                    <span class="Status"><s:property value="userStatus" /></span>
                    
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
