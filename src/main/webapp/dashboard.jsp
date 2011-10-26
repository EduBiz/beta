<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@page import="model.User"%>
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
            Welcome&nbsp;<s:property value="email" />&nbsp;<a href="/logoutaction">LogOut</a>
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
			<table width="240" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left">
              <tr>
                <td align="left" valign="top"><img src="images/adv_top_corner.jpg" width="240" height="5" /></td>
              </tr>
              <tr>
                <td width="240" height="240" align="center" valign="top" background="images/adv_bg.jpg" style="background-repeat:repeat-x"><table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="39" align="left" class="h11">Advertisers</td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h2">Reach Your Target Audience</td>
                    </tr>
                    <tr>
                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="73%" height="120" align="left" valign="top"><ul>
                                <li><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry.                              </li>                            
                              </ul></td>
                            <td width="27%" align="right" valign="top"><img src="images/adv_pic.jpg" width="70" /></td>
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
                <td align="left" valign="top"><img src="images/adv_bottom_corner.jpg" width="240" height="5" /></td>
              </tr>
            </table>
			<table width="240" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left;margin-left:10px">
              <tr>
                <td align="left" valign="top"><img src="images/adv_top_corner.jpg" width="240" height="5" /></td>
              </tr>
              <tr>
                <td width="240" height="240" align="center" valign="top" background="images/adv_bg.jpg" style="background-repeat:repeat-x"><table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="39" align="left" class="h11">App Developers</td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h2">Reach Your Target Audience</td>
                    </tr>
                    <tr>
                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="73%" height="120" align="left" valign="top">
							
							</td>
                            <td width="27%" align="right" valign="top"></td>
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
                <td align="left" valign="top"><img src="images/adv_bottom_corner.jpg" width="240" height="5" /></td>
              </tr>
            </table>			
			<table width="240" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left;margin-left:10px">
              <tr>
                <td align="left" valign="top"><img src="images/adv_top_corner.jpg" width="240" height="5" /></td>
              </tr>
              <tr>
                <td width="240" height="240" align="center" valign="top" background="images/adv_bg.jpg" style="background-repeat:repeat-x"><table width="90%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td height="39" align="left" class="h11">Publishers</td>
                    </tr>
                    <tr>
                      <td height="30" align="left" class="h2">Reach Your Target Audience</td>
                    </tr>
                    <tr>
                      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                          <tr>
                            <td width="73%" height="120" align="left" valign="top">
								
							</td>
                            <td width="27%" align="right" valign="top"></td>
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
                <td align="left" valign="top"><img src="images/adv_bottom_corner.jpg" width="240" height="5" /></td>
              </tr>
            </table>
			<table width="240" border="0" align="left" cellpadding="0" cellspacing="0" style="float:left;margin-left:6px;margin-top:-5px">
              <tr>
                <td align="left" valign="top"><img src="images/top_corner2.jpg" width="240" height="9" /></td>
              </tr>
              <tr>
                <td width="240" height="242" align="center" valign="top" class="box_bg2"><br><br> <br><br>
					<div class="boxwrap">
		                               <div class="getstartedwrap">
							<a href="campaignCreation.jsp" class="getstarted">Add Campaign</a>
                                                <%-- <form action="#" method="post" id="loginform">   --%>
                                               </div> 
                        	                <div class="getstartedwrap">
							<a href="rcharts.action" class="getstarted">View Reports</a>
						</div>
                            <div class="formdiv">
                                <%--	<label for="email">Email</label>
								<input type="text" name="email"/>    --%>
                                
							</div>
							<div class="formdiv">
                                                            <%--	<label for="password">Password</label>
                                                                        <input type="password" name="password"/>     --%>
                                                                 
							</div>
                                                       
                                                        <div class="formfooter">
                                                           
                                                            <%--<input type="submit" value="Submit"/> --%>
                                                            
                                                            <div>
								</div>
							</div>
                            <%-- </form> --%>
                            
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
                <td height="17"></td>
              </tr>
              <tr>
                <td><table width="990" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                      <td width="317" height="321" valign="top"><table width="317" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="center" valign="top"><table width="317" border="0" align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td width="100%" align="center" valign="top"><img src="images/top_corner.jpg" width="317" height="7" /></td>
                            </tr>
                            <tr>
                              <td width="100%" align="left" valign="top" class="box_bg" ><table width="300" border="0" align="center" cellpadding="0" cellspacing="0"  >
                                <tr>
                                  <td width="100%" height="28" align="left" valign="middle"><img src="images/features.jpg" width="76" height="15" hspace="5" /></td>
                                </tr>
                                <tr>
                                  <td width="317" align="center" valign="top"><table width="300" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="32%" align="left"><img src="images/pic1.jpg" width="88" height="89" hspace="5" /></td>
                                        <td width="68%" valign="top"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</td>
                                            </tr>
                                            <tr>
                                              <td class="read_more"><a href="#" class="read_more">read more...</a></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="6" colspan="2" class="line"></td>
                                      </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td height="5"></td>
                                </tr>
                                <tr>
                                  <td align="center" valign="top"><table width="305" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="32%" align="left"><img src="images/pic2.jpg" width="88" height="89" hspace="5" /></td>
                                        <td width="68%" valign="top"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</td>
                                            </tr>
                                            <tr>
                                              <td class="read_more"><a href="#" class="read_more">read more...</a></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="6" colspan="2" class="line"></td>
                                      </tr>
                                  </table></td>
                                </tr>
                                <tr>
                                  <td height="5"></td>
                                </tr>
                                <tr>
                                  <td align="center" valign="top"><table width="305" border="0" cellspacing="0" cellpadding="0">
                                      <tr>
                                        <td width="32%" align="left"><img src="images/pic3.jpg" width="88" height="89" hspace="5" /></td>
                                        <td width="68%" valign="top"><table width="95%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</td>
                                            </tr>
                                            <tr>
                                              <td class="read_more"><a href="#" class="read_more">read more...</a></td>
                                            </tr>
                                        </table></td>
                                      </tr>
                                      <tr>
                                        <td height="7" colspan="2"></td>
                                      </tr>
                                  </table></td>
                                </tr>
                              </table></td>
                            </tr>
                            <tr>
                              <td width="100%" align="center" valign="top"><img src="images/bottm_corner.jpg" width="317" height="7" /></td>
                            </tr>
                          </table></td>
                        </tr>
                      </table></td>
                      <td width="17"></td>
                      <td width="317" valign="top"><table width="310" border="0" align="center" cellpadding="0" cellspacing="0">
                        <tr>
                          <td width="317" align="center" valign="top"><img src="images/top_corner.jpg" width="317" height="7" /></td>
                        </tr>
                        <tr>
                          <td width="317" align="left" valign="middle" class="box_bg" ><table width="300"  align="center" cellpadding="0" cellspacing="0">
                            <tr>
                              <td height="10"></td>
                            </tr>
                            <tr>
                              <td height="170" align="center" valign="middle" ><img src="images/mobile.jpg" width="290" /></td>
                            </tr>
                            <tr>
                              <td height="49" align="left" valign="middle"><img src="images/welcome_99.jpg" width="215" height="22" /></td>
                            </tr>
                            <tr>
                              <td height="66" align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</td>
                            </tr>
                            <tr>
                              <td height="28" align="right" valign="bottom"><a href="#"><img src="images/read_more.jpg" width="65" height="25" border="0" /></a></td>
                            </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td width="317" align="center" valign="top"><img src="images/bottm_corner.jpg" width="317" height="7" /></td>
                        </tr>
                      </table></td>
                      <td width="15"></td>
                      <td width="324" align="left" valign="top"><table width="317" border="0" cellspacing="0" cellpadding="0">
                        <tr>
                          <td align="center" valign="top"><img src="images/top_corner.jpg" alt="" width="317" height="7" /></td>
                        </tr>
                        <tr>
                          <td align="center" class="box_bg"><table width="290" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                              <td width="311" align="center"><table width="290" height="323" border="0" align="center" cellpadding="0" cellspacing="0" >
                                  <tr>
                                    <td height="28" align="left" valign="middle"><img src="images/latest_news.jpg" width="108" height="15" hspace="0" /></td>
                                  </tr>
                                  <tr>
                                    <td height="71" align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type..</td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td align="left" valign="bottom" class="date">03.2.2010</td>
                                          <td align="right" valign="bottom"><a href="#" class="read_more">read more...</a></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="8" class="line"></td>
                                  </tr>
                                  <tr>
                                    <td height="5"></td>
                                  </tr>
                                  <tr>
                                    <td height="57" align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td align="left" valign="bottom" class="date">03.2.2010</td>
                                          <td align="right" valign="bottom"><a href="#" class="read_more">read more...</a></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr>
                                    <td height="8" class="line"></td>
                                  </tr>
                                  <tr>
                                    <td height="5"></td>
                                  </tr>
                                  <tr> </tr>
                                  <tr>
                                    <td height="51" align="left" valign="top">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,</td>
                                  </tr>
                                  <tr>
                                    <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
                                        <tr>
                                          <td align="left" valign="bottom" class="date">03.2.2010</td>
                                          <td align="right" valign="bottom"><a href="#" class="read_more">read more...</a></td>
                                        </tr>
                                    </table></td>
                                  </tr>
                                  <tr> </tr>
                                  <tr>
                                    <td height="17"></td>
                                  </tr>
                                  <tr>
                                    <td height="28" align="right" valign="bottom"><a href="#"><img src="images/view_more.jpg" width="65" height="25" border="0" /></a></td>
                                  </tr>
                              </table></td>
                            </tr>
                          </table></td>
                        </tr>
                        <tr>
                          <td><img src="images/bottm_corner.jpg" width="317" height="7" /></td>
                        </tr>
                      </table></td>
                    </tr>
                </table></td>
              </tr>
              <tr>
                <td height="10"></td>
              </tr>
<tr></tr>
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
