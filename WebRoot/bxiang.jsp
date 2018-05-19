<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.sql.Connection" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.Info" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>求职招聘网</TITLE>
    <LINK rel=stylesheet type=text/css
          href="style/css.css">

    <STYLE type=text/css>BODY {
        BACKGROUND-IMAGE: none;
        MARGIN: 0px
    }
    </STYLE>
    <LINK rel=stylesheet type=text/css href="invitemsg_files/style.css">
    <STYLE type=text/css>.STYLE3 {
        COLOR: #333333;
        FONT-SIZE: 12px
    }

    A:link {
        TEXT-DECORATION: none
    }

    A:visited {
        TEXT-DECORATION: none
    }

    A:hover {
        TEXT-DECORATION: none
    }

    A:active {
        TEXT-DECORATION: none
    }
    </STYLE>

    <META content="text/html; charset=utf-8" http-equiv=Content-Type>
    <META name=GENERATOR content="MSHTML 8.00.6001.19222">
</HEAD>
<BODY>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=1002 align=center>
    <TBODY>
    <TR>
        <TD background=invitemsg_files/bj.jpg align=middle>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=800>
                <TBODY>


                <jsp:include page="top.jsp"></jsp:include>


                <TR>
                    <TD vAlign=top>
                        <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
                            <TBODY>
                            <TR>


                                <%
                                    CommDAO dao = new CommDAO();
                                    String id = request.getParameter("id");
                                    HashMap jjmap = dao.getmap(id, "sysuser");

                                %>

                                <jsp:include page="left.jsp"></jsp:include>


                                <TD valign="top">


                                    <form action="/invitemsg/invitemsg?ac=regmember" onSubmit="return check();"
                                          method="post" name="f1" enctype="multipart/form-data">
                                        <TABLE
                                                width="92%" border=0 align="center" cellPadding=0 cellSpacing=0>
                                            <TBODY>
                                            <TR>
                                                <TD>
                                                    <TABLE border=0 cellSpacing=0 cellPadding=0
                                                           width="100%">
                                                        <TBODY>
                                                        <TR>
                                                            <TD height=10 colSpan=2></TD>
                                                        </TR>
                                                        <TR>
                                                            <TD width=228 background="invitemsg_files/ny_y3.jpg"
                                                                height="37" align="left">

                                                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;信息详情</strong>
                                                            </TD>
                                                            <TD
                                                                    background=invitemsg_files/ny_ybj.jpg>&nbsp;
                                                            </TD>
                                                        </TR>
                                                        </TBODY>
                                                    </TABLE>
                                                </TD>
                                            </TR>
                                            <TR>
                                                <TD height=10 align="center">
                                                </TD>
                                            </TR>
                                            <TR>
                                                <TD class=css vAlign=top align=left>
                                                    <TABLE border=0 cellSpacing=0 cellPadding=0
                                                           width="100%">
                                                        <TBODY>
                                                        <TR>
                                                            <TD class=css height=32 align=left>
                                                                <center>
                                                                    <strong>
                                                                        <% out.print(jjmap.get("tname")); %> - 简历
                                                                    </strong>
                                                                    <table>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>
                                                                    <%="注册时间:" + jjmap.get("savetime") %>
                                                                    <table>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>

                                                                    <img src="upfile/<%=jjmap.get("filename")%>"
                                                                         height="80"/>
                                                                    <table>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>
                                                                </center>

                                                                站内编号 :  <% out.print(jjmap.get("uname")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                性别 :  <% out.print(jjmap.get("sex")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                联系QQ :  <% out.print(jjmap.get("qq")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                联系邮箱 :  <% out.print(jjmap.get("email")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                户籍地 :  <% out.print(jjmap.get("houhold")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                联系地址 :  <% out.print(jjmap.get("addrs")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                出生年月 :  <% out.print(jjmap.get("birth")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                体重 :  <% out.print(jjmap.get("wei")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                身高 :  <% out.print(jjmap.get("hei")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                健康状态 :  <% out.print(jjmap.get("health")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                联系电话 :  <% out.print(jjmap.get("tel")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                毕业院校 :  <% out.print(jjmap.get("school")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                专业 :  <% out.print(jjmap.get("zy")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                学历 :  <% out.print(jjmap.get("xl")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                毕业日期 :  <% out.print(jjmap.get("cbdate")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                个人简介 :  <% out.print(jjmap.get("grjs")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                技能简介 :  <% out.print(jjmap.get("grjl")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                兴趣爱好 :  <% out.print(jjmap.get("xqah")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                工作经历 :  <% out.print(jjmap.get("gzjl")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                项目经验 :  <% out.print(jjmap.get("xmjy")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                外语能力 :  <% out.print(jjmap.get("wyll")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                获奖证书 : <img src="upfile/<%=jjmap.get("filename2")%>"
                                                                            height="80"/>

                                                                <table>
                                                                    <tr>
                                                                        <td height="4"></td>
                                                                    </tr>
                                                                </table>

                                                                电子档证书 : <a
                                                                    href="upload?filename=<%=jjmap.get("docname3")%>">点击下载</a>

                                                            </TD>
                                                        </TR>
                                                        </TBODY>
                                                    </TABLE>
                                            <TR>
                                                <TD height=7 colSpan=2 align="center">


                                                </TD>
                                            </TR>
                                            <TR>
                                                <TD colSpan=2 align=middle>&nbsp;</TD>
                                            </TR>
                                            </TBODY>
                                        </TABLE>
                                    </form>


                                </TD>
                            </TR>
                            </TBODY>
                        </TABLE>


                    </TD>
                </TR>


                <jsp:include page="foot.jsp"></jsp:include>


            </TABLE>
        </TD>
    </TR>
    </TBODY>
</TABLE>

<SCRIPT type=text/javascript charset=utf-8
        src="invitemsg_files/2462870.jss"></SCRIPT>


</BODY>
</HTML>
<script type="text/javascript">
    <!--
    <%if(request.getAttribute("suc")!=null){%>
    alert("操作成功");
    <%}%>
    //-->
</script>
  
