<%-- 
    Document   : output
    Created on : Dec 5, 2011, 12:12:05 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>

        <style type="text/css">

            #topbar{
                position:absolute;
                border: 1px solid black;
                padding: 2px;
                background-color:#000;
                opacity:0.3;
                filter:alpha(opacity=30);
                width: 250px;
                visibility: hidden;
                z-index: 100;
                height:100px;
            }

        </style>

        <script type="text/javascript" src="float.js">

        </script>
        <script language="javascript" type="text/javascript" src="load.js">
        </script>
    </head>
    <body>
        <div id="topbar">
            <a href="" onClick="closebar(); return false"><img src="images/exit-closed-symbol-md.png" width="20px" height="20px" border="0" /></a>

            <div id="one" >
                <object  id="foo" name="foo" type="text/html" data="http://localhost:8080/beta/displaycampaign.action?type=text"></object>
            </div>

        </div>

    </body>
</html>	 