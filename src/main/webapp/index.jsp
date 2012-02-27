<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <%@taglib uri="/struts-tags" prefix="s"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::AdZappy::.</title>
<s:head theme="jquery"/>
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
height:1000px;
background-color:#FFF;
box-shadow: 0px 0px 0px;
padding-left:350px;
}


</style>

	
 <link rel="stylesheet" href="menu1.css" type="text/css" />
 <link rel="stylesheet" href="style.css" type="text/css" />
 
 
 
<script type="text/javascript" src="js/jquery-1.3.1.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>

<script>

$(document).ready(function() {

	//Speed of the slideshow
	var speed = 3000;
	
	//You have to specify width and height in #slider CSS properties
	//After that, the following script will set the width and height accordingly
	$('#mask-gallery, #gallery li').width($('#slider').width());	
	$('#gallery').width($('#slider').width() * $('#gallery li').length);
	$('#mask-gallery, #gallery li, #mask-excerpt, #excerpt li').height($('#slider').height());
	
	//Assign a timer, so it will run periodically
	var run = setInterval('newsscoller(0)', speed);	
	
	$('#gallery li:first, #excerpt li:first').addClass('selected');

	//Pause the slidershow with clearInterval
	$('#btn-pause').click(function () {
		clearInterval(run);
		return false;
	});

	//Continue the slideshow with setInterval
	$('#btn-play').click(function () {
		run = setInterval('newsscoller(0)', speed);	
		return false;
	});
	
	//Next Slide by calling the function
	$('#btn-next').click(function () {
		newsscoller(0);	
		return false;
	});	

	//Previous slide by passing prev=1
	$('#btn-prev').click(function () {
		newsscoller(1);	
		return false;
	});	
	
	//Mouse over, pause it, on mouse out, resume the slider show
	$('#slider').hover(
	
		function() {
			clearInterval(run);
		}, 
		function() {
			run = setInterval('newsscoller(0)', speed);	
		}
	); 	
	
});


function newsscoller(prev) {

	//Get the current selected item (with selected class), if none was found, get the first item
	var current_image = $('#gallery li.selected').length ? $('#gallery li.selected') : $('#gallery li:first');
	var current_excerpt = $('#excerpt li.selected').length ? $('#excerpt li.selected') : $('#excerpt li:first');

	//if prev is set to 1 (previous item)
	if (prev) {
		
		//Get previous sibling
		var next_image = (current_image.prev().length) ? current_image.prev() : $('#gallery li:last');
		var next_excerpt = (current_excerpt.prev().length) ? current_excerpt.prev() : $('#excerpt li:last');
	
	//if prev is set to 0 (next item)
	} else {
		
		//Get next sibling
		var next_image = (current_image.next().length) ? current_image.next() : $('#gallery li:first');
		var next_excerpt = (current_excerpt.next().length) ? current_excerpt.next() : $('#excerpt li:first');
	}

	//clear the selected class
	$('#excerpt li, #gallery li').removeClass('selected');
	
	//reassign the selected class to current items
	next_image.addClass('selected');
	next_excerpt.addClass('selected');

	//Scroll the items
	$('#mask-gallery').scrollTo(next_image, 800);		
	$('#mask-excerpt').scrollTo(next_excerpt, 800);					
	
}



</script>

<style>

#slider {

	/* You MUST specify the width and height */
	width:1000px;
	height:300px;
	position:relative;	
	overflow:hidden;
}

#mask-gallery {
	
	overflow:hidden;	
}

#gallery {
	
	/* Clear the list style */
	list-style:none;
	margin:0;
	padding:0;
	
	z-index:0;
	
	/* width = total items multiply with #mask gallery width */
	width:1000px;
	overflow:hidden;
}

	#gallery li {

		
		/* float left, so that the items are arrangged horizontally */
		float:left;
	}


#mask-excerpt {
	
	/* Set the position */
	position:absolute;	
	top:0;
	left:0;
	z-index:500px;
	
	/* width should be lesser than #slider width */
	width:250px;
	overflow:hidden;	
	

}
	
#excerpt {
	/* Opacity setting for different browsers */
	filter:alpha(opacity=60);
	-moz-opacity:0.6;  
	-khtml-opacity: 0.6;
	opacity: 0.6;  
	
	/* Clear the list style */
	list-style:none;
	margin:0;
	padding:0;
	
	/* Set the position */
	z-index:10;
	position:absolute;
	top:0;
	left:0;
	
	/* Set the style */
	width:200px;
	background-color:#000;
	overflow:hidden;
	font-family:arial;
	font-size:10px;
	color:#fff;	
}

	#excerpt li {
		padding:5px;
	}
	


.clear {
	clear:both;	
}


</style>
 
 
</head>

<body>
<div align="center">
<div style="width:1350px;" >
<div style="width:1350px; height:100px; ">
<div class="header" align="left" >
<img src="images/logo.jpg" width="20%" height="50px" />
<br />
 Welcome&nbsp; <s:property value="email"/>
 <s:include value="menu1.jsp"/>
</div>
</div>
<div style=" height:300px; padding-top:10px;">
<div style="width:1000px; height:300px; float:left;">

					<div id="debug"></div>
        <div id="slider">
		              <div id="mask-gallery">
		                <ul id="gallery">
		                  <li><img src="images/advertise_banner.jpg" width="1000" height="300" alt=""/></li>
		                  <li><img src="images/banner_advertiseroverview.jpg" width="1000" height="300" alt=""/></li>
		                  <li><img src="images/testimonials_banner.gif" width="1000" height="300" alt=""/></li>
	                    </ul>
          </div>
		              
        </div>
        <div class="clear"></div>

					

	</div>

<div style="width:330px; height:300px; float:right">
<table width="324" height="307" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left;margin-left:6px;margin-top:-5px">
              <tr>
                <td align="left" valign="top"></td>
              </tr>
              <tr>
                <td width="30%" height="300px" align="center" valign="top" >
					<div class="boxwrap">
						<div class="getstartedwrap">
                        <br />
                        <br />
                        <br />
							<a href="signup.jsp" class="getstarted">Get Started</a>
                      </div>
                                                <%-- <form action="#" method="post" id="loginform">   --%>
                                                 <s:form action="login" >
                        	<h3>LOG IN TO YOUR ACCOUNT</h3>
                                    <div class="formdiv">
                                
                                             <s:textfield name="email" label="Email"/>
							</div>
							<div class="formdiv">
                                                            <%--	<label for="password">Password</label>
                                                                        <input type="password" name="password"/>     --%>
                              <s:password name="password" label="Password"/>
                                                            <s:submit value="Submit"/>
                                                             </s:form>
							</div>
                                                        <br />
                                                        <br />
                                                        <br />
                                                        <div class="formfooter">
                                                           <a href="forgotpass.jsp" class="forget">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Forget Password?</a>
                                                            
					  </div>
                                                           
                             
			<div style="clear: both;"></div>
                  </div>
				
				</td>
              </tr>
              <tr>
                <td align="left" valign="top"></td>
              </tr>
      </table>
</div>

</div>
                                                <s:actionmessage theme="jquery"/><s:actionerror theme="jquery"/>
<table style=" height:300px;  ">
<tr>
<td width="300" style="width:300px; height:300px; background-image:url(images/button1.gif); background-repeat:no-repeat;  float:left;">

<table width="300px" height="307" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left">
              <tr>
                <td height="15" align="left" valign="top"></td>
              </tr>
              <tr>
              <td width="300px" height="253" align="center" valign="top" ><table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="39" align="left" class="h11">Advertisers</td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h2">Reach Your Target Audience</td>
                    </tr>
                    <tr>
                      <td><table width="275" height="184" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="275" height="136" align="left" valign="top"><ul>
                                <li><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.                              </li>                            
                              </ul></td>
                            <td width="250" align="right" valign="top">&nbsp;</td>
                          </tr>
                           <tr>
                            <td height="24" colspan="2" style="padding-left:200px;" valign="bottom" ><a href="#"><img src="images/btn_more.jpg" width="60" height="24" border="0" /></a></td>
                            </tr>
                      </table></td>
                    </tr>
                    <tr></tr>
                </table></td>
              </tr>
              <tr>
                <td height="39" align="left" valign="top">&nbsp;</td>
          </tr>
        </table>
</td>
<td width="310" style="width:300px; height:300px; background-image:url(images/button1.gif); background-repeat:no-repeat;  float:left;">
<table width="300px" height="307" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left">
              <tr>
                <td height="15" align="left" valign="top"></td>
              </tr>
              <tr>
              <td width="300px" height="253" align="center" valign="top" ><table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="39" align="left" class="h11">App Developers</td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h2">Reach Your Target Audience</td>
                    </tr>
                    <tr>
                      <td><table width="275" height="184" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="275" height="136" align="left" valign="top"><ul>
                                <li><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.                              </li>                            
                              </ul></td>
                            <td width="250" align="right" valign="top">&nbsp;</td>
                          </tr>
                           <tr>
                            <td height="24" colspan="2" style="padding-left:200px;" valign="bottom" ><a href="#"><img src="images/btn_more.jpg" width="60" height="24" border="0" /></a></td>
                            </tr>
                      </table></td>
                    </tr>
                    <tr></tr>
                </table></td>
              </tr>
              <tr>
                <td height="39" align="left" valign="top">&nbsp;</td>
          </tr>
        </table>
</td>
<td width="310" style="width:300px; height:300px; background-image:url(images/button1.gif); background-repeat:no-repeat; float:left;">
 <table width="300px" height="307" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left">
              <tr>
                <td height="15" align="left" valign="top"></td>
              </tr>
              <tr>
              <td width="300px" height="253" align="center" valign="top" ><table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="39" align="left" class="h11">Publishers</td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h2">Reach Your Target Audience</td>
                    </tr>
                    <tr>
                      <td><table width="275" height="184" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="275" height="136" align="left" valign="top"><ul>
                                <li><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.                              </li>                            
                              </ul></td>
                            <td width="250" align="right" valign="top">&nbsp;</td>
                          </tr>
                           <tr>
                            <td height="24" colspan="2" style="padding-left:200px;" valign="bottom" ><a href="#"><img src="images/btn_more.jpg" width="60" height="24" border="0" /></a></td>
                            </tr>
                      </table></td>
                    </tr>
                    <tr></tr>
                </table></td>
              </tr>
              <tr>
                <td height="39" align="left" valign="top">&nbsp;</td>
          </tr>
        </table>
</td>
<td width="393"  style=" height:300px;  float:right;">
<table width="350px" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="center" valign="top"></td>
                        </tr>
                        <tr>
                          <td align="center"><table width="350" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="350" height="266" align="center"><table width="379" height="237" border="0" align="center" cellpadding="0" cellspacing="0" >
                                  <tr>
                                    <td width="379" height="20" align="left" valign="middle"><h2>LATEST NEWS</h2></td>
                                  </tr>
                                  <tr>
                                    <td height="28" align="left" valign="top"><p> Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type..</p></td>
                                  </tr>
                                  <tr>
                                    <td height="14"><table width="380px" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td align="left" valign="bottom" class="date">03.2.2010</td>
                                          <td align="right" valign="bottom"><a href="#" class="read_more">read more...</a></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="2" class="line"></td>
                                  </tr>
                                  <tr>
                                    <td height="5"></td>
                                  </tr>
                                  <tr>
                                    <td height="16" align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. </td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td height="15" align="left" valign="bottom" class="date">03.2.2010</td>
                                          <td align="right" valign="bottom"><a href="#" class="read_more">read more...</a></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="2" class="line"></td>
                                  </tr>
                                  <tr>
                                    <td height="2"></td>
                                  </tr>
                                  <tr> </tr>
                                  <tr>
                                    <td height="39" align="left" valign="top"><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</p>
                                    <p>&nbsp;</p></td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td height="14" align="left" valign="bottom" class="date">03.2.2010</td>
                                          <td align="right" valign="bottom"><a href="#" class="read_more">read more...</a></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr> </tr>
                                  <tr>
                                    <td height="2"></td>
                                  </tr>
                                  <tr>
                                    <td height="25" align="right" valign="bottom"><a href="#"><img src="images/view_more.jpg" width="65" height="25" border="0" /></a></td>
                                  </tr>
                              </table></td>
                            </tr>
                          </table></td>
                        </tr>
                       
        </table>
</td>
</tr>
</table>
</div>

<div >
<s:include value="/footer.jsp"/>

</div>
</div>
</body>
</html>
