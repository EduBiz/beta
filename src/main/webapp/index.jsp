<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::AdZappy::.</title>
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
<script type="text/javascript" src="sliderman.1.3.6.js"></script>
	<link rel="stylesheet" type="text/css" href="sliderman.css" />
 <link rel="stylesheet" href="menu1.css" type="text/css" />
 <link rel="stylesheet" href="style.css" type="text/css" />
 
 
 

 
 
</head>

<body>
<div align="center">
<div style="width:1350px; height:800px;" >
<div style="width:1350px; height:100px; ">
<div class="header" align="left" >
<img src="images/logo.jpg" width="20%" height="50px" />
<br />
 Welcome&nbsp; <s:property value="email"/>
 <s:include value="menu1.jsp"/>
</div>
</div>
<div style="width:1350px; height:300px;  ">
<div style="width:1000px; height:300px; float:left;">

					<img src="images/advertise_banner.jpg" />
					

	</div>

<div style="width:350px; height:300px; float:right">
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
                                                <s:actionerror/>  <s:form action="login" >
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
<div style="width:1350px; height:300px;  ">
<div style="width:300px; height:300px; background-image:url(images/button1.gif); background-repeat:no-repeat;  float:left;">
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
                            <td height="24" colspan="2" align="right" valign="bottom"><a href="#"><img src="images/btn_more.jpg" width="60" height="24" border="0" /></a></td>
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
</div>
<div style="width:300px; height:300px; background-image:url(images/button1.gif); background-repeat:no-repeat;  float:left;">
<table width="300px" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left;margin-left:10px">
              <tr>
                <td align="left" valign="top">&nbsp;</td>
              </tr>
              <tr>
                <td width="300px" height="240" align="center" valign="top"><table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="39" align="left" class="h11">App Developers</td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h2">Reach Your Target Audience</td>
                    </tr>
                    <tr>
                      <td><table width="249" height="185" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="250px" height="120" align="left" valign="top">
							
							</td>
                            <td width="27%" align="right" valign="top"></td>
                          </tr>
                           <tr>
                            <td height="24" colspan="2" align="right" valign="bottom"><a href="#"><img src="images/btn_more.jpg" width="63" height="24" border="0" /></a></td>
                            </tr>
                      </table></td>
                    </tr>
                    <tr></tr>
                </table></td>
              </tr>
              <tr>
                <td height="34" align="left" valign="top">&nbsp;</td>
              </tr>
            </table>
</div>
<div style="width:300px; height:300px; background-image:url(images/button1.gif); background-repeat:no-repeat; float:left;">
 <table width="300px" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left;margin-left:10px">
              <tr>
                <td align="left" valign="top">&nbsp;</td>
              </tr>
              <tr>
                <td width="300px" height="300" align="center" valign="top"><table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="39" align="left" class="h11">Publishers</td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h2">Reach Your Target Audience</td>
                    </tr>
                    <tr>
                      <td><table width="244" height="188" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="300" height="120" align="left" valign="top">
							
							</td>
                            <td width="300" align="right" valign="top"></td>
                          </tr>
                           <tr>
                            <td height="24" colspan="2" align="right" valign="bottom"><a href="#"><img src="images/btn_more.jpg" width="60" height="23" border="0" /></a></td>
                        </tr>
                      </table></td>
                    </tr>
                    <tr></tr>
                </table></td>
              </tr>
              <tr>
                <td height="14" align="left" valign="top">&nbsp;</td>
              </tr>
        </table>
</div>
<div style="width:450px; height:300px;  float:left;">
<table width="450px" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="center" valign="top"></td>
                        </tr>
                        <tr>
                          <td align="center"><table width="450px" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="450px" height="266" align="center"><table width="450px" height="234" border="0" align="center" cellpadding="0" cellspacing="0" >
                                  <tr>
                                    <td height="19" align="left" valign="middle"><h2>LATEST NEWS</h2></td>
                                  </tr>
                                  <tr>
                                    <td height="46" align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type..</td>
                                  </tr>
                                  <tr>
                                    <td><table width="350px" border="0" cellspacing="0" cellpadding="0">
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
                                    <td height="28" align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td height="14" align="left" valign="bottom" class="date">03.2.2010</td>
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
</div>
</div>
<div style="width:1350px; height:100px">
<s:include value="/footer.jsp"/>
</div>
</div>
</div>
</body>
</html>
