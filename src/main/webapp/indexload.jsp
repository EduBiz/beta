<%-- 
    Document   : indexload
    Created on : Dec 5, 2011, 7:07:46 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <style media="all" type="text/css">
     
      #message_box { 
       position: absolute; 
       top: 0; left: 0; 
       z-index: 10; 
	   background:#000;
	   padding:5px;
  opacity:0.3;
                filter:alpha(opacity=30);
       text-align:center; 
       font-weight:bold; 
       width:250px;
	   height:120px;
      }
      
   </style>
<script type="text/javascript" language="javascript" src="jquery-1.2.6.min.js"></script>
<script type="text/javascript" language="javascript">
//  Developed by Roshan Bhattarai 
//  Visit http://roshanbh.com.np for this script and more.
//  This notice MUST stay intact for legal use
$(document).ready(function()
{
	//scroll the message box to the top offset of browser's scrool bar
	$(window).scroll(function()
	{
  		$('#message_box').animate({top:$(window).scrollTop()+"px" },{queue: false, duration: 350});  
	});
    //when the close button at right corner of the message box is clicked 
	$('#close_message').click(function()
	{
  		//the messagebox gets scrool down with top property and gets hidden with zero opacity 
		$('#message_box').animate({ top:"+=15px",opacity:0 }, "slow");
	});
});
 </script>
 <script language="javascript" type="text/javascript" src="load.js">
        </script>
        
<title>Example of Floating Message box using jQuery</title></head>
<body>
 <div id="message_box"><img id="close_message" style="float:right;cursor:pointer"  src="images/exit-closed-symbol-md.png" height="30px" width="30px"/>
            

            <div id="topbar">
           

            <div id="one" >
                <object  id="foo" name="foo" type="text/html" data="http://localhost:8080/beta/displaycampaign.action?type=text"></object>
            </div>

        </div>
        </div>

</body>


</html>
