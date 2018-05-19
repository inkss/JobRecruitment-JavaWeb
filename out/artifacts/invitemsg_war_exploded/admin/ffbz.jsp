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
<form action="ffbz.jsp" name="f1" method="post">
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
                                                <td width="97%" valign="bottom"><span class="STYLE1"> 发放标准</span></td>
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
                        <td colspan=10 height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            <label></label>
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
                                String paddrs = request.getParameter("addrs") == null ? "" : request.getParameter("addrs");
                                String startaddrs = request.getParameter("startaddrs") == null ? "" : request.getParameter("startaddrs");
                                String endaddrs = request.getParameter("endaddrs") == null ? "" : request.getParameter("endaddrs");
                                String pjfmonth = request.getParameter("jfmonth") == null ? "" : request.getParameter("jfmonth");
                                String startjfmonth = request.getParameter("startjfmonth") == null ? "" : request.getParameter("startjfmonth");
                                String endjfmonth = request.getParameter("endjfmonth") == null ? "" : request.getParameter("endjfmonth");
                            %>

                            <%
                                HashMap mmm = new HashMap();%>

                            &nbsp;
                            身份证号
                            :
                            <input type=text class='' size=20 name='uname'/>
                            &nbsp;&nbsp;
                            姓名
                            &nbsp;:&nbsp;
                            <input type=text class='' size=12 name='tname'/>&nbsp;&nbsp;&nbsp;
                            户口所在地
                            :
                            <input type=text class='' size=20 name='houhold'/>
                            &nbsp;&nbsp;
                            住址
                            :
                            <input type=text class='' size=20 name='addrs'/>
                            &nbsp;&nbsp;
                            缴费月份 :
                            <input type=text class='' onclick="WdatePicker({dateFmt:'yyyy-MM'});" size=6
                                   name='jfmonth'/>
                            &nbsp;&nbsp;
                            <input type=submit class='' value='查询'/>
                        </td>
                    </tr>


                    <tr bgcolor="#F3F8F7">
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">身份证号</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">姓名</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">户口所在地</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">住址</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">缴费月份</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">缴费总额</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">发放月份</td>
                        <td height="30" align="center" style="background-color: #F3F8F7;color:#344B50;">发放金额</td>
                    </tr>


                    <%

                        String sql = "select uname,tname,houhold,addrs,jfmonth,sum(jfje) jfje from charges where 1=1 ";
                        if (!puname.equals("")) {
                            sql += " and uname like'%" + puname + "%' ";
                        }
                        if (!ptname.equals("")) {
                            sql += " and tname like'%" + ptname + "%' ";
                        }

                        if (!phouhold.equals("")) {
                            sql += " and houhold like'%" + phouhold + "%' ";
                        }
                        if (!paddrs.equals("")) {
                            sql += " and addrs like'%" + paddrs + "%' ";
                        }
                        if (!pjfmonth.equals("")) {
                            sql += " and jfmonth like'%" + pjfmonth + "%' ";
                        }
                        sql += " group by uname,tname,houhold,addrs,jfmonth ";
                        String url = "ffbz.jsp?1=1&uname=" + puname + "&tname=" + ptname + "&houhold=" + phouhold + "&addrs=" + paddrs + "&jfmonth=" + pjfmonth + "";
                        ArrayList<HashMap> list = PageManager.getPages(url, 5, sql, request);
                        for (HashMap map : list) {
                            String fmonth = map.get("jfmonth").toString() + "-01";
                            int year = Integer.parseInt(map.get("jfmonth").toString().substring(0, 4));
                            fmonth = (year + 10) + "-" + fmonth.substring(5);
                            double je = Double.parseDouble(map.get("jfje").toString()) * 4;
                    %>
                    <tr>

                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("uname")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("tname")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("houhold")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("addrs")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("jfmonth")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=map.get("jfje")%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=fmonth%>
                        </td>
                        <td height="30" align="center" bgcolor="#FFFFFF" class="STYLE19"><%=je%>
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
                        <td colspan=10 align="center" class="STYLE19">${ page.info}</td>
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
    mmm.put("addrs", paddrs);
    mmm.put("jfmonth", pjfmonth);
%>
<%=Info.tform(mmm)%>
<script language=javascript>

</script>
<%=Info.tform(mmm)%>
<script language=javascript src='/invitemsg/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/invitemsg/js/popup.js'></script>
<script language=javascript>
    function update(no) {
        pop('bjchargesxg.jsp?id=' + no, '信息修改', 550, '100%')
    }
</script>
<script language=javascript>
    function add() {
        pop('bjchargestj.jsp', '信息添加', 550, '100%')
    }
</script>
<%@page import="util.Info" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="util.PageManager" %>
<%@page import="dao.CommDAO" %>
