<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<%@page import="model.*"%>
<!DOCTYPE html>
<html>

    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>

        <s:head theme="jquery"/>
        <sj:head jqueryui="true" jquerytheme="flick"/>

        <style type="text/css">
            .header
            {
                background-image:url(images/adv1_bg.jpg);
                background-color:#91cf52;
                background-repeat:repeat;

                width:100%;
                height: 80px;
                margin: 0 auto;
                padding: 0px 50px;
                margin: 0;
                padding: 0;

            }

            #menu {
                margin:30px auto;
                width:80%;
            }
            body
            {
                margin: 0;
                padding: 0;
                font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;


            }
            .boder
            {
                width:100%;
                height:10px;
                background-color:#000;
            }
            .button
            {
                vertical-align:top;
                height:250px;
                padding-left:300px;

            }
            #user
            {
                font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
                width:100%;
                border-collapse:collapse;
            }
            #user td, #user th 
            {
                font-size:1.2em;
                padding:15px;
            }
            #user th 
            {
                font-size:1.4em;
                text-align:left;
                padding-top:8px;
                padding-bottom:8px;
                background-color:#A7C942;
                color:#fff;
            }
            #user tr.alt td 
            {
                color:#000;
                background-color:#EAF2D3;
            }
            .footer
            {
                height:60px;
                width:100%;
                background-color:#91cf52;
            }
            .banner
            {
                height:100px;
                width:100%;
            }
            .box
            {
                width:600px;
                height:400px;
                background-color:#FFF;
                box-shadow: 0px 0px 0px;
                padding-left:500px;
                padding-top:70px;
            }


        </style>
        <link rel="stylesheet" href="menu_style.css" type="text/css" />
        <link rel="stylesheet" href="style.css" type="text/css" />
        <script type="text/javascript" src="jscolor.js"></script>
    </head>

    <body>
        <%
     Object obj = session.getAttribute("User");

     if(obj==null)
         {
         response.sendRedirect(request.getContextPath()+"/sessionError.action");
     }
   
        %>
        <div style="height:600px;">
            <div class="header" >
                <img src="images/logo.jpg" width="200" height="50" />
                <br />
                Welcome&nbsp; <s:property value="email"/>
            </div>

            <div>
                <ul class="menu">

                    <li class="top"><a  href="adratechange.action" class="top_link"><span>HOME</span></a></li>
                  
                   
                    <li class="top"><a href="logoutaction.action" class="top_link"><span>LOGOUT</span></a></li>
                </ul>
            </div>
            <div class="box">
                <div>
                    <p style="font-size:30px; color:#030; padding-left:70px;">Change AD Rate</p>
                </div>


                <div style="width:100%;">    
                    <s:actionerror theme="jquery"/>   <s:actionmessage theme="jquery"/>
                    <s:form action="ratechg" theme="simple">
                        <table style="font-size:15px;">
                            
                            <tr>
                                <td>
                                    Existing Rate
                                </td>
                                <td>
                                    <s:textfield name="existrate" label="Existing Rate" readonly="true" value="%{ad.currentRate}"  />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    New Rate
                                </td>
                                <td>
                                    <s:textfield name="newrt" label="New Rate "  />
                                </td></tr>


                            <tr>
                                <td>
                                    Confirm New Rate
                                </td>
                                <td>
                                    <s:textfield name="cfrt" label="Confirm Rate"  />
                                </td></tr>

                            <tr>
                                <td>
                                </td>
                                <td>
                                    <s:submit value="Change Rate"/>
                                </td></tr>
                        </table>
                    </s:form>    

                </div>
                    <p style="font-size:15px;color:red">* If Any Error occurs Please Click <a  href="adratechange.action">Home</a> to Continue or click Back Button </p>
            </div>
        </div>

        <div>
            <s:include value="/footer.jsp"/>
        </div>


    </body>
</html>
