<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.PageManager" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.Info" %>
<%
    HashMap user = Info.getUser(request);
    String uname = user.get("uname").toString();
    String utype = user.get("utype").toString();
    String userid = user.get("id").toString();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>


    <style type="text/css">
        <!--

        .mytab {
            font-size: 12px;
            width: 100%;
            line-height: 150%;
            text-decoration: none;
            word-wrap: break-word;
            border: #DBE6E3 solid 1px;
            border-bottom: 0;
            border-right: 0;
            border-left: #DBE6E3 solid 1px;
            line-height: 175%;
            margin: 1px 1px;
            margin-left: 0px;
        }

        .mytab td {
            padding: 2px 5px;
            border: #DBE6E3 solid 1px;
            border-left: 0;
            border-top: 0;
        }

        body {
            margin-left: 3px;
            margin-top: 0px;
            margin-right: 3px;
            margin-bottom: 0px;
        }

        .STYLE1 {
            color: #e1e2e3;
            font-size: 12px;
        }

        .STYLE6 {
            color: #000000;
            font-size: 12;
        }

        .STYLE10 {
            color: #000000;
            font-size: 12px;
        }

        .STYLE19 {
            color: #344b50;
            font-size: 12px;
        }

        .STYLE21 {
            font-size: 12px;
            color: #3b6375;
        }

        .STYLE22 {
            font-size: 12px;
            color: #295568;
        }

        -->
    </style>

    <script language="javascript" src="/invitemsg/js/popup.js"></script>

    <script>
        var highlightcolor = '#d5f4fe';
        //此处clickcolor只能用win系统颜色代码才能成功,如果用#xxxxxx的代码就不行,还没搞清楚为什么:(
        var clickcolor = '#51b2f6';

        function changeto() {
            source = event.srcElement;
            if (source.tagName == "TR" || source.tagName == "TABLE")
                return;
            while (source.tagName != "TD")
                source = source.parentElement;
            source = source.parentElement;
            cs = source.children;
//alert(cs.length);
            if (cs[0].style.backgroundColor != highlightcolor && source.id != "nc" && cs[0].style.backgroundColor != clickcolor)
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = highlightcolor;
                }
        }

        function changeback() {
            if (event.fromElement.contains(event.toElement) || source.contains(event.toElement) || source.id == "nc")
                return
            if (event.toElement != source && cs[0].style.backgroundColor != clickcolor)
//source.style.backgroundColor=originalcolor
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = "";
                }
        }

        function clickto() {
            source = event.srcElement;
            if (source.tagName == "TR" || source.tagName == "TABLE")
                return;
            while (source.tagName != "TD")
                source = source.parentElement;
            source = source.parentElement;
            cs = source.children;
//alert(cs.length);
            if (cs[0].style.backgroundColor != clickcolor && source.id != "nc")
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = clickcolor;
                }
            else
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = "";
                }
        }
    </script>


</head>

<body>
<form action="qysysusercxtj.jsp" name="f1" method="post">
    <table width="99.8%" border="0" align="center" cellpadding="0" cellspacing="0">
        <tr>
            <td height="30">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td height="24" bgcolor="#353c44">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                <tr>
                                    <td>
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tr>
                                                <td width="3%" height="19" valign="bottom">&nbsp;&nbsp;&nbsp;</td>
                                                <td width="97%" valign="bottom"><span class="STYLE1"> 企业信息推荐</span></td>
                                            </tr>
                                        </table>
                                    </td>
                                    <td>


                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td>
                <table width="100%" border="0" cellpadding="0" cellspacing="1" class="mytab" onmouseover="changeto()"
                       onmouseout="changeback()">

                    <tr>
                        <td colspan=8 height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            <label></label>&nbsp;
                            <%
                                String puname = request.getParameter("uname") == null ? "" : request.getParameter("uname");
                                String startuname = request.getParameter("startuname") == null ? "" : request.getParameter("startuname");
                                String enduname = request.getParameter("enduname") == null ? "" : request.getParameter("enduname");
                                String ptname = request.getParameter("tname") == null ? "" : request.getParameter("tname");
                                String starttname = request.getParameter("starttname") == null ? "" : request.getParameter("starttname");
                                String endtname = request.getParameter("endtname") == null ? "" : request.getParameter("endtname");
                                String phouhold = request.getParameter("houhold") == null ? "" : request.getParameter("houhold");
                                String starthouhold = request.getParameter("starthouhold") == null ? "" : request.getParameter("starthouhold");
                                String endhouhold = request.getParameter("endhouhold") == null ? "" : request.getParameter("endhouhold");
                                String pzy = request.getParameter("zy") == null ? "" : request.getParameter("zy");
                                String startzy = request.getParameter("startzy") == null ? "" : request.getParameter("startzy");
                                String endzy = request.getParameter("endzy") == null ? "" : request.getParameter("endzy");
                            %>

                            <%
                                HashMap mmm = new HashMap();%>

                            &nbsp;&nbsp;
                            企业名称
                            &nbsp;:&nbsp;
                            <input type=text class='' size=20 name='tname'/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            &nbsp;&nbsp;
                            所处城市
                            &nbsp;:&nbsp;
                            <input type=text class='' size=20 name='houhold'/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            公司性质
                            &nbsp;:&nbsp;
                            <select name='zy'>
                                <option value="">不限</option>
                                <option value='民营企业'>民营企业</option>
                                <option value='国有企业'>国有企业</option>
                                <option value='外资企业'>外资企业</option>
                            </select>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <input type=submit class='' value='查询信息'/></td>
                    </tr>


                    <tr bgcolor="#F3F8F7">
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">用户名</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">企业名称</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">联系邮箱</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">所处城市</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">公司性质</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">行业类别</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">操作</td>
                    </tr>


                    <%
                        new CommDAO().delete(request, "sysuser");
                        if (request.getParameter("unameid1") != null) {
                            new CommDAO().commOper("update sysuser set uname ='' where id=" + request.getParameter("unameid1"));
                        }
                        if (request.getParameter("unameid2") != null) {
                            new CommDAO().commOper("update sysuser set uname ='' where id=" + request.getParameter("unameid2"));
                        }
                        String sql = "select * from sysuser where 1!=1 ";

                        String[] qzyx = user.get("qzyx").toString().split("，");

                        for (String str : qzyx) {
                            sql += " or addrs like'%" + str + "%' or zy like'%" + str + "%' or xl like'%" + str + "%' or tname in(select qytname from zpinfo where title like'%" + str + "%' or xl like'%" + str + "%'  or jl like'%" + str + "%' ) ";
                        }


                        if (!puname.equals("")) {
                            sql += " and uname like'%" + puname + "%' ";
                        }
                        if (!startuname.equals("")) {
                            mmm.put("startuname", startuname);
                            sql += " and uname >'" + startuname + "' ";
                        }
                        if (!enduname.equals("")) {
                            mmm.put("enduname", enduname);
                            sql += " and uname <'" + Info.getDay(enduname, 1) + "' ";
                        }
                        if (!ptname.equals("")) {
                            sql += " and tname like'%" + ptname + "%' ";
                        }
                        if (!starttname.equals("")) {
                            mmm.put("starttname", starttname);
                            sql += " and tname >'" + starttname + "' ";
                        }
                        if (!endtname.equals("")) {
                            mmm.put("endtname", endtname);
                            sql += " and tname <'" + Info.getDay(endtname, 1) + "' ";
                        }
                        if (!phouhold.equals("")) {
                            sql += " and houhold like'%" + phouhold + "%' ";
                        }
                        if (!starthouhold.equals("")) {
                            mmm.put("starthouhold", starthouhold);
                            sql += " and houhold >'" + starthouhold + "' ";
                        }
                        if (!endhouhold.equals("")) {
                            mmm.put("endhouhold", endhouhold);
                            sql += " and houhold <'" + Info.getDay(endhouhold, 1) + "' ";
                        }
                        if (!pzy.equals("")) {
                            sql += " and zy like'%" + pzy + "%' ";
                        }
                        if (!startzy.equals("")) {
                            mmm.put("startzy", startzy);
                            sql += " and zy >'" + startzy + "' ";
                        }
                        if (!endzy.equals("")) {
                            mmm.put("endzy", endzy);
                            sql += " and zy <'" + Info.getDay(endzy, 1) + "' ";
                        }
                        sql += "  and (1!=1 ";
                        sql += "  or  utype like'%企业%' ";
                        sql += "  ) ";
                        sql += " order by id desc ";
                        String url = "qysysusercxtj.jsp?1=1&uname=" + puname + "&tname=" + ptname + "&houhold=" + phouhold + "&zy=" + pzy + "";
                        ArrayList<HashMap> list = PageManager.getPages(url, 5, sql, request);
                        for (HashMap map : list) { %>
                    <tr>

                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("uname")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("tname")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("email")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("houhold")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("zy")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("xl")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">
                            <a href="/invitemsg/fg.jsp?g=g&uname=<%=map.get("uname") %>" target="_blank">查看招聘信息</a>
                            &nbsp;|&nbsp;&nbsp;

                            <a href="/invitemsg/qxiang.jsp?id=<%=map.get("id") %>" target="_blank">查看企业信息</a>
                        </td>
                    </tr>
                    <%}%>


                </table>
            </td>
        </tr>
        <tr>
            <td height="30">
                <table width="100%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td colspan=8 align="center" class="STYLE19">${ page.info}</td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>


<script language=javascript src='/invitemsg/js/ajax.js'></script>
<%
    mmm.put("uname", puname);
    mmm.put("tname", ptname);
    mmm.put("houhold", phouhold);
    mmm.put("zy", pzy);
%>
<%=Info.tform(mmm)%>
<script language=javascript src='/invitemsg/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/invitemsg/js/popup.js'></script> 
