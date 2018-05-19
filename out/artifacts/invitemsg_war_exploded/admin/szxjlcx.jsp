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
            border: #DBE6E3 solid 0px;
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
<%
    String id = request.getParameter("id");
    HashMap ext = new HashMap();
    ext.put("uname", Info.getUser(request).get("tname"));
    new CommDAO().insert(request, response, "zxjl", ext, true, false);
%>
<body>
<form action="szxjlcx.jsp?f=f&pid=<%=id %>&id=<%=id %>" name="f1" method="post">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

        <tr>
            <td height="3">
            </td>
        </tr>
        <tr>
            <td>


                <div style="height:274px ;overflow:auto;margin:0;padding:0;" align="left">
                    <table width="80%" border="0" cellpadding="0" cellspacing="0" onmouseover="changeto()"
                           onmouseout="changeback()">
                        <tr>
                            <td>
                                <font style="font-size: 13px"><label id="mychat"></label></font>
                            </td>
                        </tr>
                    </table>
                    <a href="" id="aa" name="aa"></a>
                </div>


            </td>
        </tr>
        <tr>
            <td height="30">
                <table width="99%" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td colspan=7 align="center" class="STYLE19"></td>
                    </tr>


                    <tr>

                        <td height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;&nbsp;发言&nbsp;:&nbsp;<input type="text" size="55" name='tcontent' id="tcontent"/>&nbsp;&nbsp;

                            <input type="button" onclick="sub();" onmousedown="f1.tcontent.focus();" value="提交"/>

                        </td>
                    </tr>


                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>


<script language=javascript src='/invitemsg/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/invitemsg/js/popup.js'></script>
<script language=javascript src='/invitemsg/js/ajax.js'></script>
<script language=javascript>
    function update(no) {
        pop('zxjlxg.jsp?id=' + no, '信息修改', 550, '100%')
    }
</script>
<script language=javascript>
    function add() {
        pop('zxjltj.jsp', '信息添加', 550, '100%')
    }


    function sub() {
        var ajax = new AJAX();
        ajax.post("/invitemsg/factory/getsonops.jsp?ctype=tchat&id=<%=id%>&touname=<%=new CommDAO().getmap(id,"zxjl").get("touname")%>&tname=<%=tname%>&tcontent=" + document.getElementById("tcontent").value);
        document.getElementById("tcontent").value = "";
        document.getElementById("aa").focus();
        document.getElementById("tcontent").focus();
    }

    var tid = 0;

    function getTs() {
        var tk = "";
        var ajax = new AJAX();
        ajax.post("/invitemsg/factory/getsonops.jsp?ctype=chat&id=<%=id%>&tname=<%=tname%>");
        var msg = ajax.getValue();
        document.getElementById("mychat").innerHTML = "";
        document.getElementById("mychat").innerHTML = msg;


    }

    setInterval(getTs, 1800);

</script>
<%@page import="util.Info" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="util.PageManager" %>
<%@page import="dao.CommDAO" %>
