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
                                    HashMap jjmap = dao.getmap(id, "zpinfo");

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
                                                                        <% out.print(jjmap.get("title")); %>
                                                                    </strong>
                                                                    <table>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>
                                                                    <%="发布时间:" + jjmap.get("savetime") %>
                                                                    <table>
                                                                        <tr>
                                                                            <td></td>
                                                                        </tr>
                                                                    </table>

                                                                </center>


                                                                <%
                                                                    String qyid = new CommDAO().select("select * from sysuser where tname='" + jjmap.get("qytname") + "'").get(0).get("id").toString();
                                                                %>


                                                                企业名称 :  <% out.print(jjmap.get("qytname")); %>&nbsp;

                                                                <a href="qxiang.jsp?id=<%=qyid %>">[查看详情]</a>

                                                                <table>
                                                                    <tr>
                                                                        <td height="9"></td>
                                                                    </tr>
                                                                </table>


                                                                招聘人数 :  <% out.print(jjmap.get("zprs")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="9"></td>
                                                                    </tr>
                                                                </table>

                                                                工作地点 :  <% out.print(jjmap.get("gzdd")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="9"></td>
                                                                    </tr>
                                                                </table>

                                                                学历要求 :  <% out.print(jjmap.get("xl")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="9"></td>
                                                                    </tr>
                                                                </table>

                                                                技能要求 :  <% out.print(jjmap.get("jl")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="9"></td>
                                                                    </tr>
                                                                </table>

                                                                招聘要求 :  <% out.print(jjmap.get("bei")); %>

                                                                <table>
                                                                    <tr>
                                                                        <td height="9"></td>
                                                                    </tr>
                                                                </table>

                                                                工资待遇 :  <% out.print(jjmap.get("dy")); %>


                                                            </TD>
                                                        </TR>
                                                        </TBODY>
                                                    </TABLE>
                                            <TR>
                                                <TD height=53 colSpan=2 align="center">


                                                    <%
                                                        if (Info.getUser(request) != null) {
                                                            if (request.getParameter("fs") != null) {
                                                                HashMap user = Info.getUser(request);
                                                                new CommDAO().commOper("insert into emp values(null,'" + user.get("uname") + "','" + user.get("tname") + "','" + jjmap.get("title") + "','" + Info.getDateStr() + "') ");
                                                    %>
                                                    <script type="text/javascript">
                                                        alert("简历已发送，请等待工作人员回应");
                                                    </script>
                                                    <%
                                                    } else {
                                                    %>
                                                    <input type="button"
                                                           onclick="window.location.replace('zxiang.jsp?id=<%=id %>&fs=fs')"
                                                           value="发送求职简历">
                                                    <%
                                                            }
                                                        }
                                                    %>


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
<%
    List<HashMap> list = dao.select("select * from members");
    String unames = "";
    for (HashMap map : list) {
        unames += map.get("uname") + ",";
    }
%>
<script type="text/javascript">
    <!--
    function check() {
        var uname = document.getElementById("uname").value;
        if ('<%=unames%>'.indexOf(uname) > -1) {
            alert("用户名已存在");
            return false;
        }
    }

    //-->
</script>
