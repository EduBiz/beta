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
        <title>Password Change</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>
        <link href="style50.css" rel="stylesheet" type="text/css" />
        <!--for new changes in design Jun-2012  -->
        <link type="text/css" href="styleacc.css" rel="stylesheet" />
      
    </head>
    <body>
        <%
          Object obj = session.getAttribute("User");
       
          
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
                <div id="containerheader">&nbsp;&nbsp;Password Change</div>
                 <div  id="searchbox">   
                    
                </div>
                <div class="clear"></div>
                <div class="alert"><s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/> </div>

                <div class="clear"></div>
        

          
            <!--content start -->
          
                <div class="content pad10">
                    <h2>Change Your Password</h2>
                    <!--left box start -->
                    <div class="left leftbox">
                        <div><img src="adtype_images/top.jpg" width="615" height="9" alt="" title=""></div>
                        <div id="ddtags" class="boxbg fo">
                             <div id="formcontainer" align="center">
                                 <s:form action="resetpass" theme="simple" validate="true" >
                        <div class="formrow"> 
                            <div class="form-label">   Existing Password</div>
                            <div class="form-widget"> <s:password name="existpass"   cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label"> New Password</div>
                            <div class="form-widget">   <s:password name="newpass"  cssClass="input-div"   /></div>
                        </div>

                        <div class="clear"></div>
                        <div class="formrow">
                            <div class="form-label"> Confirm New Password</div>
                            <div class="form-widget">   <s:password name="cfnewpass"  cssClass="input-div" /></div>
                        </div>
                        <div class="clear"></div>

                        <div class="formrow">
                            <div class="form-button" > <s:submit value="Change Password" cssClass="button"  /></div>
                        </div>
                        <div class="clear"></div>
                    </s:form>
                </div>
                <div class="clear"></div>
                <div class="alert">
                    * If Any Error occurs Please Click <a  href="home.action">Home</a> to Continue or click Back Button 
                </div>
                        </div>
                        <div><img src="adtype_images/bottom.jpg" width="615" height="9" alt="" title=""></div>
                    </div>
                    <!--left box end -->
                   
                        <div class="clear"></div>
                    </div>

           
                <!--content end -->
             <div>
                <s:include value="footer_1.jsp"/>
            </div>

            </div>
          
        </div>
     
    </body>
</html>
