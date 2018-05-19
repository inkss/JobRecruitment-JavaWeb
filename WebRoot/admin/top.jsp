<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <style type="text/css">
        <!--
        body {
            margin-left: 0px;
            margin-top: 0px;
            margin-right: 0px;
            margin-bottom: 0px;
        }

        .STYLE1 {
            font-size: 12px;
            color: #000000;
        }

        .STYLE5 {
            font-size: 12
        }

        .STYLE7 {
            font-size: 12px;
            color: #FFFFFF;
        }

        .STYLE8 {
            color: #ffffff;
            font-size: 13;
            font-weight: bold;
        }

        -->
    </style>
</head>

<body>

<%
    HashMap user = (HashMap) session.getAttribute("admin");
%>

<table width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td height="57" background="images/main_03.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="57"><span class="STYLE8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        
       
       
        <strong><font size="5" face="华文行楷">求职招聘网</font></strong> 
          
        
        </span></td>
                    <td width="281" valign="bottom">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="33" height="27"><img src="images/main_05.gif" width="33" height="27"/></td>
                                <td width="248" background="images/main_06.gif">
                                    <table width="225" border="0" align="center" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="17">
                                                <div align="right"></div>
                                            </td>
                                            <td>
                                                <div align="right"></div>
                                            </td>
                                            <td>
                                                <div align="right"><a href="/invitemsg/index.jsp?zx=zx"
                                                                      target="_top"><img border="0"
                                                                                         src="images/quit.gif"
                                                                                         width="69" height="17"/></a>
                                                </div>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="40" background="images/main_10.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td height="40">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td width="248" background="images/main_11.gif">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="16%"><span class="STYLE5"></span></td>
                                <td width="75%">
                                    <div align="center"></div>
                                </td>
                                <td width="9%">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="30" background="images/main_31.gif">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="8" height="30"><img src="images/main_28.gif" width="8" height="30"/></td>
                    <td width="147" background="images/main_29.gif">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td width="24%">&nbsp;</td>
                                <td width="43%" height="20" valign="bottom" class="STYLE1">管理菜单</td>
                                <td width="33%">&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td width="39"><img src="images/main_30.gif" width="39" height="30"/></td>
                    <td>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td height="20" valign="bottom"><span class="STYLE1">当前登录用户：<%=user.get("uname") %> &nbsp;用户角色：<%=user.get("utype")%></span>
                                </td>
                                <td valign="bottom" class="STYLE1">
                                    <div align="right"><br/></div>
                                </td>
                            </tr>
                        </table>
                    </td>
                    <td width="17"><img src="images/main_32.gif" width="17" height="30"/></td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
