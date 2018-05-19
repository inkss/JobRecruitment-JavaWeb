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
<form action="byssysuserxg.jsp?f=f&id=<%=mmm.get("id")%>" name="f1" method="post" onSubmit="return checkform()">
    <table width="99.7%" border="0" align="center" cellpadding="0" cellspacing="0">

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
                                                        class="STYLE1"> 信息查看&nbsp;&nbsp;</span></td>
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
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">密码</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("upass")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">姓名</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("tname")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">性别</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("sex")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">联系QQ</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("qq")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">邮箱</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("email")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">户籍</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("houhold")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">联系地址</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("addrs")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">生日</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("birth")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">体重</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("wei")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">身高</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("hei")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">健康状况</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("health")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">联系电话</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("tel")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">毕业院校</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("school")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">专业</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("zy")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">学历</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("xl")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">毕业日期</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("cbdate")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">个人简介</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("grjs")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">技能介绍</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("grjl")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">兴趣爱好</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("xqah")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">工作经历</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("gzjl")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">项目经验</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("xmjy")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">外语能力</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=mmm.get("wyll")%>
                        </td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">相片</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=Info.getImgUpInfo(65)%>
                        </td>
                    </tr>

                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">证书</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">
                            &nbsp;<%=Info.getImgUpInfo2(65)%>
                        </td>
                    </tr>

                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">电子档简历</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<a
                                href="../upload?filename=<%=mmm.get("docname3") %>">点击下载</a></td>
                    </tr>

                    <tr>
                        <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class=""><label>

                            <input type=button value='返回上页' onclick='window.location.replace("byssysusercx.jsp")'/>
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
        return true;
    }
</script>
<%=Info.tform(mmm)%>
<script language=javascript>

</script>
<%=Info.tform(mmm)%> 
