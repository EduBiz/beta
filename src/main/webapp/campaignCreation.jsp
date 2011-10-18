<%-- 
    Document   : registration
    Created on : Oct 12, 2011, 6:58:24 PM
    Author     : Administrator
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

pageEncoding="UTF-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>

<!DOCTYPE html>
<html>
     <%@taglib uri="/struts-tags" prefix="s"%>
     <%@ taglib uri="/struts-dojo-tags" prefix="sx"%> 
    <head>
        <sx:head/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        <link href="style.css" rel="stylesheet" type="text/css" />
        
    </head>
    <body>
       <table width="990" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td height="99" valign="top"><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td height="66" align="left" valign="bottom"><img src="images/logo.jpg" width="241" height="49" /></td>
      </tr>
      <tr>
        <td height="24" valign="bottom">
            <s:include value="navigation.jsp" />
        </td>
      </tr>
    </table></td>
  </tr>
  <tr>
    <s:actionerror/>   
    <s:form action="campaignMain">
        <s:textfield name="campaignname" label="Campaign Name" />
        <sx:datetimepicker name="todaydate" label="Start (yyyy-MM-dd)" displayFormat="yyyy-MM-dd"/>
        <sx:datetimepicker name="endDate" label="End (dd-MMM-yyyy)" displayFormat="dd-MMM-yyyy"/>
        <s:textfield name="dailybdgt" label="Daily Budget $" />
        <s:radio label="Standard" name="deliverytype" list="{'0','Standard','1','Accelerated'}" />
        <s:textarea label="Note:(optional)" name="note" rows="15"/>
        <s:submit value="Save and Continue"/>
    </s:form>
        </tr>
         </table>   
    <s:include value="/footer.jsp" />
         
        
    </body>
</html>
