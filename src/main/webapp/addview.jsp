<%-- 
    Document   : addview
    Created on : Dec 2, 2011, 1:11:16 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-9" />
        <title>.::AdZappy::.</title>

        <!-- ALWAYS ON TOP FLOATING LAYER POP-UP -->



    </head>
    <body onLoad="placeIt(); showIt()">


        <div id="layer1" >
            <script language="JavaScript" type="text/javascript" src="java.js">

            </script>
            <script language="javascript" type="text/javascript" src="load.js">
            </script>
            <div style="float: left;">
                <span style="float:right; background-color:gray; color:white; font-weight:bold; text-align:center; cursor:pointer" onclick="javascript:hideIt()">&nbsp;X&nbsp;</span>
           
                
                <div id="one" >
                    <object style=" background-color:#222; filter :alpha(opacity=30)-moz-opacity:0.30;opacity:0.30; width: 300x; height:120px; border:solid 3px #000000;" id="foo" name="foo" type="text/html" data="http://beta.mathi.cloudbees.net/displaycampaign.action?type=text"></object>
                </div>
            </div>
            </div>

    </body>
</html>

