<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>.::AdZappy::.</title>
<link href="style.css" rel="stylesheet" type="text/css" />
</head>

<body>
     <%
    Object obj = session.getAttribute("User");
    if(obj==null)
        {
        response.sendRedirect(request.getContextPath()+"/sessionError.action");
    }
    %>
<table width="990" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="99" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="66" align="left" valign="bottom"><img src="images/logo.jpg" width="241" height="49" /></td>
      </tr>
      <tr>
        <td height="24" valign="bottom">
            Welcome&nbsp;<s:property value="email" />&nbsp;
            <s:include value="navigationdashboard.jsp" />
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <td height="325" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="17"><table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <td colspan="3" height="17"></td>
            </tr>
          <tr>
            <td colspan="3">
			<table width="740" height="306" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left; margin-top: -3px; text-shadow: 1px 1px 0px #fff;">
             <td width="740" height="240" align="center" valign="top" background="images/marketplace_header.jpg" style="background-repeat:repeat-x"><table width="680" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="30" align="left"></td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h12">AdZappy for Advertisers</td>
                    </tr>
                    <tr>
                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0" style="font-size: 16px; color: #444; line-height: 24px;">
                          <tr>
                            <td width="50%" height="120" align="left" valign="top"><p>
                           AdZappy provides innovative solutions for brand and performance advertisers to engage your mobile target audience.
                            </p></td>
                            <td width="50%" align="right" valign="top">&nbsp;</td>
                          </tr>                          
                      </table></td>
                    </tr>
                    <tr></tr>
                </table></td>
              </tr>             
            </table>
			<table width="240" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left;margin-left:6px;"> <tr>
                <td align="left" valign="top">
                    <div class="getstartedouter">
                        <div class="getstartedwrap">
                            <a href="campaignCreation.jsp" class="getstarted">Add Campaign</a>
                        </div>
                    </div>
                </td>
              </tr>
        
			  <tr>
                <td align="left" valign="top"><img src="images/top_corner2.jpg" width="240" height="9" /></td>
              </tr>
              <tr>
                <td width="240" height="209" align="center" valign="top" class="box_bg2">
					
                    <div class="boxwrap">
                    <div class="innerbox">
						<h3>Advertisers</h3>
						<p>Ads drive brand awareness and new user acquisition</p>
						<h3>Agencies</h3>
                        <p>Turnkey solutions to extend campaigns to mobile</p>
                        <h3>App Developers</h3>
                        <p>Distribution and monetization platform</p>
                        <h3>Mobile Web Publishers</h3>
                       	<p>Earn revenue by serving ads</p>                        
                    </div>
                        <div style="clear: both;"></div>
                    </div>
				
				</td>
              </tr>
              <tr>
                <td align="left" valign="top"><img src="images/bottm_corner2.jpg" width="240" height="9" /></td>
              </tr>
            </table>			
			<!--end of td-->			
			</td>
          </tr>
          <tr>
            <td height="76" colspan="3" align="left" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
              <tr>
                <td height="10"></td>
              </tr>
              <tr>
                <td valign="top" width="720"><table width="720" border="0" cellspacing="0" cellpadding="0" valign="top">
                    <tr valign="top">
                      <td height="447" style="padding-right: 15px;">
                      <div class="roundbox">                        
                        <div class="midbox">
                          <h3>Brand Advertisers</h3>
                          <div class="leftmid">
                            	AdMob offers brand advertisers the ability to reach the addressable mobile audiences. Our innovative ad units will carry your brand messaging onto the top mobile sites. As one of the leading brand mobile advertising marketplaces, we have the products and the people to help you meet your campaign needs.
                            </div>
                          <div class="rightmid">
                            AdMob offers brand advertisers the ability to reach the addressable mobile audiences. Our innovative ad units will carry your brand messaging onto the top mobile sites. As one of the leading brand mobile advertising marketplaces, we have the products and the people to help you meet your campaign needs.
                            </div>
                          <div class="fullmid">
                            <h4>Advantages of Mobile</h4>
Mobile advertising provides you with targeted access to mobile users, and is easy to buy and measure. Research shows that mobile campaigns outperform online campaigns across key metrics. Agencies click here to learn more.
                            </div>                        
                          </div>                        
                        </div>
                      </td>
                      <td width="15" valign="middle">
                      	<div class="midline"></div>
                      </td>
                      <td height="447" style="padding-right: 2px;">
                      <div class="roundbox middlebox">                       
                        <div class="midbox">
                          <h3>Performance Advertisers</h3>
                          <div class="leftmid">
                            	AdMob offers brand advertisers the ability to reach the addressable mobile audiences. Our innovative ad units will carry your brand messaging onto the top mobile sites. As one of the leading brand mobile advertising marketplaces, we have the products and the people to help you meet your campaign needs.
                            </div>
                          <div class="rightmid">
                            AdMob offers brand advertisers the ability to reach the addressable mobile audiences. Our innovative ad units will carry your brand messaging onto the top mobile sites. As one of the leading brand mobile advertising marketplaces, we have the products and the people to help you meet your campaign needs.
                            </div>
                          <div class="fullmid">
                            <h4>Advantages of Mobile</h4>
Mobile advertising provides you with targeted access to mobile users, and is easy to buy and measure. Research shows that mobile campaigns outperform online campaigns across key metrics. Agencies click here to learn more.
                            </div>                        
                          </div>                       
                        </div>
                      </td>                   
                    </tr>
                    <tr valign="top" width="700">
                      <td height="10" colspan="3">&nbsp;</td>
                      </tr>
                    <tr valign="top" width="700">
                      <td height="10" colspan="3" class="roundbox"><div style="border-bottom: 1px solid #ccc; margin: 0px 20px 0 20px"></div></td>
                      </tr>
                </table></td>        
          
                <td width="240" align="left" valign="top">
                      	<div class="silverbox">
                        	<div class="silveroutter">
                            	<div class="silverinner">
                                	 <h3>Advantages of Mobile</h3>
Mobile advertising provides you with targeted access to mobile users, and is easy to buy and measure. Research shows that mobile campaigns outperform online campaigns across key metrics. Agencies click here to learn more. Mobile advertising provides you with targeted access to mobile users, and is easy to buy and measure. Research shows that mobile campaigns outperform online campaigns across key metrics. Agencies click here to learn more.
                                </div>
                            </div>
                        </div>
                        <div class="silverbox">
                        	<div class="silveroutter">
                            	<div class="silverinner">
                                	 <h3>Ads Across Platforms</h3>
Mobile advertising provides you with targeted access to mobile users, and is easy to buy and measure. Research shows that mobile campaigns outperform online campaigns across key metrics. Agencies click here to learn more. Mobile advertising provides you with targeted access to mobile users, and is easy to buy and measure. Research shows that mobile campaigns outperform online campaigns across key metrics. Agencies click here to learn more.
                                </div>
                            </div>
                        </div>
                      </td>
              </tr>              
            </table></td>
            </tr>
        </table></td>
        </tr>

    </table></td>
  </tr>  
</table>
    <s:include value="/footer.jsp" />
</body>
</html>
