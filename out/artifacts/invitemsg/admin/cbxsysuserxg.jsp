<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%
        HashMap user = Info.getUser(request);
        String uname = user.get("uname").toString();
        String utype = user.get("utype").toString();
        String userid = user.get("id").toString();
    %>
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
    <script type="text/javascript" src="/invitemsg/js/popup.js"></script>
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
    new CommDAO().delete(request, "sysuser");
    String id = request.getParameter("id");
    String erjitype = request.getParameter("erjitype");
    String myztree = request.getParameter("myztree");
    HashMap ext = new HashMap();
    new CommDAO().update(request, response, "sysuser", ext, true, false);
    HashMap mmm = new CommDAO().getmap(id, "sysuser");
%>
<body>
<form action="cbxsysuserxg.jsp?f=f&id=<%=mmm.get("id")%>" name="f1" method="post" onSubmit="return checkform()">
    <table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">

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
                                                <td width="3%" height="19" valign="bottom">&nbsp;</td>
                                                <td width="97%" valign="bottom"><span
                                                        class="STYLE1"> 修改个人信息&nbsp;&nbsp;</span></td>
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
                <table width="100%" border="0" cellpadding="0" cellspacing="0" bgcolor="#a8c7ce" class="mytab"
                       onMouseOver="changeto()" onmouseout="changeback()">
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">用户名</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("uname")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">姓名</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='tname' name='tname' size=35/><label
                                id='clabeltname'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">性别</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<span
                                id="sexdanx"><label><input type=radio name='sex' value='男'/>&nbsp;男 </label>
<label><input type=radio name='sex' value='女'/>&nbsp;女 </label>
</span></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">联系QQ</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='qq' name='qq' size=35/><label
                                id='clabelqq'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">联系邮箱</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='email' name='email' size=35/><label
                                id='clabelemail'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">户籍地</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='houhold' name='houhold' size=35/><label
                                id='clabelhouhold'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">联系地址</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<textarea
                                cols='35' onblur='checkform()' style='margin-top: 1px;margin-bottom: 1px' class=''
                                name='addrs'></textarea></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">出生年月</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text size='12' onblur='checkform()' class='' name='birth'
                                onclick='WdatePicker();'/><label id='clabelbirth'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">联系电话</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='tel' name='tel' size=35/><label
                                id='clabeltel'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">毕业日期</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text size='12' onblur='checkform()' class='' name='cbdate'
                                onclick='WdatePicker();'/><label id='clabelcbdate'/></td>
                    </tr>


                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">相片</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=Info.getImgUpInfo(65)%>
                        </td>
                    </tr>

                    <tr>
                        <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class=""><label>
                            <input type="submit" name="Submit" value="提交信息"/>
                            &nbsp;&nbsp;&nbsp;
                            <input type=button value='重置信息' onclick='getPvalue()'/>
                        </label></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
<script language=javascript src='/invitemsg/js/My97DatePicker/WdatePicker.js'></script>
<script language=javascript src='/invitemsg/js/ajax.js'></script>
<script language=javascript src='/invitemsg/js/popup.js'></script>
<%@page import="util.Info" %>
<%@page import="util.Info" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="util.PageManager" %>
<%@page import="dao.CommDAO" %>
<script language=javascript>

</script>
<script language=javascript>
    function checkform() {
        var tnameobj = document.getElementById("tname");
        if (tnameobj.value == "") {
            document.getElementById("clabeltname").innerHTML = "&nbsp;&nbsp;<font color=red>请输入姓名</font>";
            return false;
        } else {
            document.getElementById("clabeltname").innerHTML = "  ";
        }
        var qqobj = document.getElementById("qq");
        if (qqobj.value != "") {
            if (qqobj.value.length > 12 || isNaN(qqobj.value)) {
                document.getElementById("clabelqq").innerHTML = "&nbsp;&nbsp;<font color=red>联系QQ必须为12位以内数字</font>";
                return false;
            } else {
                document.getElementById("clabelqq").innerHTML = "";
            }
        }
        var emailobj = document.getElementById("email");
        if (emailobj.value != "") {
            var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if (!myreg.test(emailobj.value)) {
                document.getElementById("clabelemail").innerHTML = "&nbsp;&nbsp;<font color=red>联系邮箱格式不正确</font>";
                return false;
            } else {
                document.getElementById("clabelemail").innerHTML = "";
            }
        }
        var houholdobj = document.getElementById("houhold");
        if (houholdobj.value == "") {
            document.getElementById("clabelhouhold").innerHTML = "&nbsp;&nbsp;<font color=red>请输入户籍地</font>";
            return false;
        } else {
            document.getElementById("clabelhouhold").innerHTML = "  ";
        }
        var birthobj = document.getElementById("birth");
        if (birthobj.value == "") {
            document.getElementById("clabelbirth").innerHTML = "&nbsp;&nbsp;<font color=red>请输入出生年月</font>";
            return false;
        } else {
            document.getElementById("clabelbirth").innerHTML = "  ";
        }
        var telobj = document.getElementById("tel");
        if (telobj.value == "") {
            document.getElementById("clabeltel").innerHTML = "&nbsp;&nbsp;<font color=red>请输入联系电话</font>";
            return false;
        } else {
            document.getElementById("clabeltel").innerHTML = "  ";
        }
        var telobj = document.getElementById("tel");
        if (telobj.value != "") {
            if (telobj.value.length > 11 || telobj.value.length < 8 || isNaN(telobj.value)) {
                document.getElementById("clabeltel").innerHTML = "&nbsp;&nbsp;<font color=red>联系电话必须为8-11位数字</font>";
                return false;
            } else {
                document.getElementById("clabeltel").innerHTML = "";
            }
        }
        var cbdateobj = document.getElementById("cbdate");
        if (cbdateobj.value == "") {
            document.getElementById("clabelcbdate").innerHTML = "&nbsp;&nbsp;<font color=red>请输入毕业日期</font>";
            return false;
        } else {
            document.getElementById("clabelcbdate").innerHTML = "  ";
        }
        return true;
    }
</script>
<%=Info.tform(mmm)%>
<script language=javascript>

</script>
<%=Info.tform(mmm)%> 
