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
    new CommDAO().delete(request, "zpinfo");
    String id = request.getParameter("id");
    String erjitype = request.getParameter("erjitype");
    String myztree = request.getParameter("myztree");
    HashMap ext = new HashMap();
    ext.put("qyuname", Info.getUser(request).get("uname"));
    ext.put("qytname", Info.getUser(request).get("tname"));
    new CommDAO().update(request, response, "zpinfo", ext, true, false);
    HashMap mmm = new CommDAO().getmap(id, "zpinfo");
%>
<body>
<!-- servletformstart
  <form  action="/invitemsg/invitemsg?ac=zpinfoxg&id=<%=mmm.get("id")%>"     name="f1" method="post"  onsubmit="return checkform()" >
   servletformend -->
<!-- s2formstart -->
<form name="f1" method="post" onsubmit="return checkform()"
      action="/invitemsg/invitemsg!zpinfoxg.action?id=<%=mmm.get("id")%>">
    <!--  s2formend -->
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
                                                        class="STYLE1"> 信息回复&nbsp;&nbsp;</span></td>
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
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">招聘标题</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='title' name='title' size=60/><label
                                id='clabeltitle'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">招聘人数</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='zprs' name='zprs' size=35/><label
                                id='clabelzprs'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">工作地点</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='gzdd' name='gzdd' size=60/><label
                                id='clabelgzdd'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">学历要求</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<span
                                id="xldanx"><label><input type=radio name='xl' value='高中'/>&nbsp;&nbsp;高中 </label>&nbsp;
<label><input type=radio name='xl' value='大专'/>&nbsp;&nbsp;大专 </label>&nbsp;
<label><input type=radio name='xl' value='本科'/>&nbsp;&nbsp;本科 </label>&nbsp;
<label><input type=radio name='xl' value='硕士'/>&nbsp;&nbsp;硕士 </label>&nbsp;
<label><input type=radio name='xl' value='博士'/>&nbsp;&nbsp;博士 </label>&nbsp;
</span></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">技能要求</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='jl' name='jl' size=35/><label
                                id='clabeljl'/></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">招聘类别</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<span
                                id="infotypedanx"><label><input type=radio name='infotype' value='校园招聘'/>&nbsp;&nbsp;校园招聘 </label>&nbsp;
<label><input type=radio name='infotype' value='社会招聘'/>&nbsp;&nbsp;社会招聘 </label>&nbsp;
<label><input type=radio name='infotype' value='定向招聘'/>&nbsp;&nbsp;定向招聘 </label>&nbsp;
</span></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">招聘要求</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<textarea
                                cols='45' rows='3' onblur='checkform()' style='margin-top: 1px;margin-bottom: 1px'
                                class='' name='bei'></textarea></td>
                    </tr>
                    <tr>
                        <td width="17%" height="30" align="center" bgcolor="#FFFFFF" class="STYLE19">工资待遇</td>
                        <td width="83%" height="30" align="left" bgcolor="#FFFFFF" class="STYLE19">&nbsp;<input
                                type=text onblur='checkform()' class='' id='dy' name='dy' size=60/><label
                                id='clabeldy'/></td>
                    </tr>

                    <tr>
                        <td height="30" colspan="2" align="center" bgcolor="#FFFFFF" class=""><label>
                            <input type="button" onclick="if(checkform()){f1.submit();}" name="Submit" value="提交信息"/>
                            &nbsp;&nbsp;&nbsp;
                            <input type=button value='返回上页' onclick='window.location.replace("zpinfocx.jsp")'/>
                        </label></td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
<script type="text/javascript">
    <%
    if(session.getAttribute("suc")!=null)
    {
    session.removeAttribute("suc");
    %>
    alert("操作成功");
    <%}
    %>
</script>
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
        var titleobj = document.getElementById("title");
        if (titleobj.value == "") {
            document.getElementById("clabeltitle").innerHTML = "&nbsp;&nbsp;<font color=red>请输入招聘标题</font>";
            return false;
        } else {
            document.getElementById("clabeltitle").innerHTML = "  ";
        }
        return true;
    }
</script>
<%=Info.tform(mmm)%>
<script language=javascript>

</script>
<%=Info.tform(mmm)%> 
