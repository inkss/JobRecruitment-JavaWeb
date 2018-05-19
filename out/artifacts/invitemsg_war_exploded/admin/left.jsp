<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
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
        }

        .STYLE3 {
            font-size: 12px;
            color: #435255;
        }

        .STYLE4 {
            font-size: 12px
        }

        .STYLE5 {
            font-size: 12px;
            font-weight: bold;
        }

        -->
    </style>
</head>
<script language=javascript>
    function show(no) {
        for (var i = 1; i < 50; i++) {
            var a = document.getElementById(no + "@" + i);
            if (a == null) {
                continue;
            }
            if (a.style.display == "") {
                a.style.display = "none";
            } else {
                a.style.display = "";
            }
        }

    }
</script>
<body>

<%
    HashMap map = (HashMap) session.getAttribute("admin");

%>


<table width="147" border="0" align="center" cellpadding="0" cellspacing="0">


    <%
        HashMap user = (HashMap) session.getAttribute("admin");
        String utype = user.get("utype").toString();
        if (utype.equals("管理员")) {
    %>

    <%=Info.getCol("A", "1", "招聘信息管理", "", "") %>
    <%=Info.getCol("B", "1", "招聘管理", "zpinfocx.jsp", "") %>
    <%=Info.getCol("B", "1", "求职信息查看", "empcx.jsp", "") %>
    <%=Info.getCol("C", "", "", "", "") %>


    <%=Info.getCol("A", "2", "网站信息管理", "", "") %>
    <%=Info.getCol("B", "2", "求职资讯", "xwhbnewscx.jsp", "none") %>
    <%=Info.getCol("B", "2", "网站公告", "wzgg.jsp", "none") %>
    <%=Info.getCol("B", "2", "系统简介", "wzjj.jsp", "none") %>
    <%=Info.getCol("B", "2", "友情链接", "yqljcx.jsp", "none") %>
    <%=Info.getCol("B", "2", "关于我们", "gywm.jsp", "none") %>
    <%=Info.getCol("B", "2", "留言管理", "messagescx.jsp", "none") %>
    <%=Info.getCol("B", "2", "密码申诉", "fpasscx.jsp", "none") %>
    <%=Info.getCol("B", "2", "求职信息查看", "empcx.jsp", "none") %>
    <%=Info.getCol("C", "", "", "", "") %>


    <%=Info.getCol("A", "3", "基本信息管理", "", "") %>
    <%=Info.getCol("B", "3", "求职者管理", "byssysusercx.jsp", "none") %>
    <%=Info.getCol("B", "3", "企业信息管理", "qysysusercx.jsp", "none") %>
    <%=Info.getCol("B", "3", "管理员信息维护", "sysusercx.jsp", "none") %>
    <%=Info.getCol("B", "3", "修改个人信息", "pusersxg.jsp", "none") %>
    <%=Info.getCol("B", "3", "修改登录密码", "uppass.jsp", "none") %>
    <%=Info.getCol("C", "", "", "", "") %>

    <%} %>


    <%
        if (utype.equals("求职者")) {
    %>
    <%=Info.getCol("A", "3", "个人信息管理", "", "") %>
    <%=Info.getCol("B", "3", "个人简历管理", "jlxsysuserxg.jsp", "") %>
    <%=Info.getCol("B", "3", "个人基本信息", "cbxsysuserxg.jsp?id=" + map.get("id"), "") %>
    <%=Info.getCol("B", "3", "企业推荐", "qysysusercxtj.jsp", "") %>
    <%=Info.getCol("B", "3", "在线交流", "zxjlcx.jsp", "") %>
    <%=Info.getCol("B", "3", "修改登录密码", "uppass.jsp", "") %>
    <%=Info.getCol("C", "", "", "", "") %>
    <%} %>


    <%
        if (utype.equals("企业")) {
    %>

    <%=Info.getCol("A", "3", "招聘信息管理", "", "") %>
    <%=Info.getCol("B", "3", "招聘信息管理", "zpinfocx.jsp", "") %>
    <%=Info.getCol("B", "3", "求职信息查看", "empcx.jsp", "") %>
    <%=Info.getCol("B", "3", "在线交流", "zxjlcx.jsp", "") %>
    <%=Info.getCol("C", "", "", "", "") %>

    <%=Info.getCol("A", "4", "基本信息管理", "", "") %>
    <%=Info.getCol("B", "4", "企业详细管理", "pqqysysuserxg.jsp?id=" + map.get("id"), "") %>
    <%=Info.getCol("B", "4", "企业基本管理", "cbqsysuserxg.jsp?id=" + map.get("id"), "") %>
    <%=Info.getCol("B", "4", "修改登录密码", "uppass.jsp", "") %>
    <%=Info.getCol("C", "", "", "", "") %>


    <%} %>


    </div></td></tr>


</table>
</body>
</html>
<script language="javascript">
    function go(purl) {
        parent.document.getElementsByTagName("iframe")[1].src = (purl);
    }
</script>
