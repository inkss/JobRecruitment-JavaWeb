<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.sql.Connection" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.Info" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE></TITLE>
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
<TD vAlign=top width=196>
    <TABLE border=0 cellSpacing=0 cellPadding=0 width="100%">
        <TBODY>
        <TR>
            <TD background="invitemsg_files/index_zlm.jpg" height="35" align="left">
                <font color="white"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户登录</strong></font>
            </TD>
        </TR>
        <TR>
            <TD background=invitemsg_files/index_zlmbj.jpg
                align=middle>

                <FORM name=adminlogin action="/invitemsg/invitemsg?ac=mlogin" method=post>
                    <TABLE border=0 cellSpacing=0 cellPadding=0
                           width="90%" align=center>

                        <TBODY>
                        <TR>
                            <TD class=css height=10
                                background=invitemsg_files/index_dx.jpg
                                align=left></TD>
                        </TR>


                        <%
                            String t = request.getParameter("t");
                            if (t != null) session.removeAttribute("admin");
                        %>


                        <%
                            HashMap umap = (HashMap) session.getAttribute("admin");
                            if (umap == null) {
                        %>
                        <TR>
                            <TD class=css height=33
                                align=center>


                                用户名: <input type="text" name="uname" id="uname" size="12"
                                            style="height:13px;width: 110px">

                            </TD>
                        </TR>
                        <TR>
                            <TD class=css height=33
                                align=center>密 &nbsp;码:
                                <input type="password" name="upass" id="upass" size="12"
                                       style="height:13px;width: 110px"></TD>
                        </TR>

                        <TR>
                            <TD class=css height=33
                                align="center">

                                <input type="submit" value="登录" style="border:2px"/>
                                &nbsp;&nbsp;

                                <a href="fpasstj.jsp">忘记密码</a>

                                <br>


                            </TD>
                        </TR>
                        <%} else { %>
                        <TR>
                            <TD class=css height=33
                                align=center>

                                <br/>

                                欢迎你回来 : <%=umap.get("uname") %>

                                <br/><br/>


                                &nbsp;
                                <a href="/invitemsg/admin/main.jsp" target="_blank"><font
                                        color="#804000">信息中心</font></a>


                                &nbsp;&nbsp;

                                <a href="index.jsp?t=t">退出</a>

                                <br/><br/>
                            </TD>
                        </TR>

                        <%} %>

                        <TR>
                            <TD class=css height=10
                                background=invitemsg_files/index_dx.jpg
                                align=left></TD>
                        </TR>
                        </TBODY>
                    </TABLE>
                </form>


            </TD>
        </TR>
        <TR>
            <TD align=left height="41" background="invitemsg_files/index_zlm1.jpg">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong><font
                    color="white">关于我们</font></strong>

            </TD>
        </TR>
        <TR>
            <TD background=invitemsg_files/index_zlmbj1.jpg
                align=middle>
                <TABLE border=0 cellSpacing=0 cellPadding=0
                       width=186 bgColor=#ffffff>
                    <TBODY>
                    <TR>
                        <TD height=2></TD>
                    </TR>
                    <TR>
                        <TD align=left style="padding: 5px" height="188">

                            <%
                                CommDAO dao = new CommDAO();
                                HashMap lxmap = dao.select("select * from mixinfo where infotype='关于我们'").get(0);
                                out.print(lxmap.get("content").toString());
                            %>

                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
            </TD>
        </TR>
        <TR>
            <TD height=62 background=invitemsg_files/index_zlmbj1.jpg
                align=middle>

                <div style="position: absolute; line-height:50px;left:340px; FONT-FAMILY:  "><font color="orange"
                                                                                                   size="4"><strong></strong></font>
                </div>

                <A
                        href="jxdg.jsp"><IMG border=0
                                             src="invitemsg_files/index_zlm2.jpg" width=186
                                             height=50></A></TD>
        </TR>
        </TBODY>
    </TABLE>
</TD>


</BODY>
</HTML>

