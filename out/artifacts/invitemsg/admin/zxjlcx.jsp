<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="util.PageManager" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.Info" %>
<%
    HashMap user = Info.getUser(request);
    String uname = user.get("uname").toString();
    String tname = user.get("tname").toString();
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
<form action="zxjlcx.jsp" name="f1" method="post">
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
                                                <td width="97%" valign="bottom"><span class="STYLE1"> 在线交流</span></td>
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
                        <td colspan=7 height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            <label></label>&nbsp;&nbsp;&nbsp;
                            <%
                                String puname = request.getParameter("uname") == null ? "" : request.getParameter("uname");
                                String startuname = request.getParameter("startuname") == null ? "" : request.getParameter("startuname");
                                String enduname = request.getParameter("enduname") == null ? "" : request.getParameter("enduname");
                                String ptouname = request.getParameter("touname") == null ? "" : request.getParameter("touname");
                                String starttouname = request.getParameter("starttouname") == null ? "" : request.getParameter("starttouname");
                                String endtouname = request.getParameter("endtouname") == null ? "" : request.getParameter("endtouname");
                                String ptcontent = request.getParameter("tcontent") == null ? "" : request.getParameter("tcontent");
                                String starttcontent = request.getParameter("starttcontent") == null ? "" : request.getParameter("starttcontent");
                                String endtcontent = request.getParameter("endtcontent") == null ? "" : request.getParameter("endtcontent");
                            %>

                            <%
                                HashMap mmm = new HashMap();%>

                            &nbsp;&nbsp;
                            发送人
                            &nbsp;:&nbsp;
                            <input type=text class='' size=20 name='uname'/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            &nbsp;&nbsp;
                            接受方
                            &nbsp;:&nbsp;
                            <input type=text class='' size=20 name='touname'/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            &nbsp;&nbsp;
                            内容
                            &nbsp;:&nbsp;
                            <input type=text class='' size=20 name='tcontent'/>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                            <input type=submit class='' value='查询信息'/>
                            &nbsp;&nbsp;
                            <input type=button class='' value='发起会话' onclick="update('');"/> &nbsp;&nbsp;
                        </td>
                    </tr>


                    <tr bgcolor="#F3F8F7">
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">发送人</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">接受方</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">内容</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">发送时间</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">操作</td>
                    </tr>


                    <%
                        new CommDAO().delete(request, "zxjl");
                        if (request.getParameter("unameid1") != null) {
                            new CommDAO().commOper("update zxjl set uname ='' where id=" + request.getParameter("unameid1"));
                        }
                        if (request.getParameter("unameid2") != null) {
                            new CommDAO().commOper("update zxjl set uname ='' where id=" + request.getParameter("unameid2"));
                        }
                        String sql = "select * from zxjl where pid='-1' ";
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
                        if (!ptouname.equals("")) {
                            sql += " and touname like'%" + ptouname + "%' ";
                        }
                        if (!starttouname.equals("")) {
                            mmm.put("starttouname", starttouname);
                            sql += " and touname >'" + starttouname + "' ";
                        }
                        if (!endtouname.equals("")) {
                            mmm.put("endtouname", endtouname);
                            sql += " and touname <'" + Info.getDay(endtouname, 1) + "' ";
                        }
                        if (!ptcontent.equals("")) {
                            sql += " and tcontent like'%" + ptcontent + "%' ";
                        }
                        if (!starttcontent.equals("")) {
                            mmm.put("starttcontent", starttcontent);
                            sql += " and tcontent >'" + starttcontent + "' ";
                        }
                        if (!endtcontent.equals("")) {
                            mmm.put("endtcontent", endtcontent);
                            sql += " and tcontent <'" + Info.getDay(endtcontent, 1) + "' ";
                        }
                        sql += "  and (1!=1 ";
                        sql += "  or  uname like'%" + tname + "%'  or  touname like'%" + tname + "%' ";
                        sql += "  ) ";
                        sql += " order by id desc ";
                        String url = "zxjlcx.jsp?1=1&uname=" + puname + "&touname=" + ptouname + "&tcontent=" + ptcontent + "";
                        ArrayList<HashMap> list = PageManager.getPages(url, 5, sql, request);
                        for (HashMap map : list) { %>
                    <tr>

                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("uname")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("touname")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("tcontent")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("savetime")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">

                            <a href="javascript:add('<%=map.get("id")%>')">在线交流</a>

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
                        <td colspan=7 align="center" class="STYLE19">${ page.info}</td>
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
    mmm.put("touname", ptouname);
    mmm.put("tcontent", ptcontent);
%>
<%=Info.tform(mmm)%>
<script language=javascript>

</script>
<%=Info.tform(mmm)%>
<script language=javascript src='/invitemsg/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/invitemsg/js/popup.js'></script>
<script language=javascript>
    function update(no) {
        pop('zxjltj.jsp?id=' + no, '信息修改', 550, '100%')
    }
</script>
<script language=javascript>
    function add(no) {
        pop('szxjlcx.jsp?id=' + no, '会话', 750, 314)
    }
</script>
<%@page import="util.Info" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="util.PageManager" %>
<%@page import="dao.CommDAO" %>
