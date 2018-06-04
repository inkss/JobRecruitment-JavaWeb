<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="util.Info" %>
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
            overflow: hidden;
        }

        -->
    </style>
</head>
<%
    String url = "";
    HashMap user = Info.getUser(request);
    String uname = user.get("uname").toString();
    String utype = user.get("utype").toString();
    String userid = user.get("id").toString();
    if (utype.equals("管理员")) url = "zpinfocx.jsp";
    if (utype.equals("求职者")) url = "jlxsysuserxg.jsp";
    if (utype.equals("企业")) url = "pqqysysuserxg.jsp?id=" + userid;
%>
<body>
<table width="100%" height="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td width="8" bgcolor="#353c44">&nbsp;</td>
        <td width="147" valign="top">
            <iframe height="100%" width="100%" border="0" frameborder="0" src="left.jsp"></iframe>
        </td>
        <td width="10" bgcolor="#add2da">&nbsp;</td>
        <td valign="top">
            <iframe height="100%" width="100%" border="0" frameborder="0" src="<%=url %>"></iframe>
        </td>
        <td width="8" bgcolor="#353c44">&nbsp;</td>
    </tr>
</table>
</body>
</html>
