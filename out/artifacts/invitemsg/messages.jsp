<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="java.sql.Connection" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.PageManager" %>
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


    <%
        if (Info.getUser(request) == null) {
    %>
    <script type="text/javascript">
        alert("请先登录");
        window.location.replace("/invitemsg/index.jsp");
    </script>
    <%} %>


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


                                <jsp:include page="left.jsp"></jsp:include>


                                <%
                                    CommDAO dao = new CommDAO();
                                    HashMap umap = (HashMap) session.getAttribute("admin");
                                    HashMap amap = (HashMap) session.getAttribute("admin");
                                    if (request.getParameter("f") != null) {
                                        String content = request.getParameter("content");
                                        if (content != null) {
                                            dao.commOper("insert into messages values(null,'" + umap.get("uname") + "','" + Info.getDateStr() + "','" + content + "','','','')");
                                        }
                                    }
                                %>


                                <TD valign="top">


                                    <form action="/invitemsg/messages.jsp?f=f" method="post" name="f1">
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

                                                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    留言板</strong></TD>
                                                            <TD
                                                                    background=invitemsg_files/ny_ybj.jpg>&nbsp;
                                                            </TD>
                                                        </TR>
                                                        </TBODY>
                                                    </TABLE>
                                                </TD>
                                            </TR>
                                            <TR>
                                                <TD height=20>&nbsp;</TD>
                                            </TR>
                                            <TR>
                                                <TD class=css vAlign=top align=left>
                                                    <TABLE border=0 cellSpacing=0 cellPadding=0
                                                           width="100%">
                                                        <TBODY>


                                                        <%
                                                            PageManager pageManager = PageManager.getPage("messages.jsp?1=1", 4, request);
                                                            pageManager.doList("select * from messages where 1=1 order by id desc");
                                                            PageManager bean = (PageManager) request.getAttribute("page");
                                                            ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();


                                                            for (HashMap m : nlist) {
                                                                HashMap pumap = dao.select("select * from sysuser where uname='" + m.get("saver") + "'").get(0);

                                                        %>
                                                        <TR>
                                                            <TD width="16%" height="50" align=center class=css>

                                                                <img src="upfile/<%=pumap.get("filename") %>" width="50"
                                                                     height="40"></TD>
                                                            <TD width="84%" height="50" align=left valign="middle"
                                                                class=css><%=m.get("saver") %> ( <%=m.get("savetime") %>
                                                                ) : <br/>
                                                                <%=m.get("content") %>
                                                                <%
                                                                    if (m.get("resaver").equals("") && umap.get("utype").equals("管理员")) {
                                                                %>
                                                                <span onClick="update('<%=m.get("id") %>')"> <br/>
                                                                <font color="orange" style="cursor: hand">回复</font></span>
                                                                <%} %>
                                                                <%
                                                                    if (!m.get("recontent").equals("")) {

                                                                %>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD height="25" align=center class=css><font
                                                                    color=grey> </font></TD>
                                                            <TD height="25" align=left valign="middle" class=css><font
                                                                    color=grey> 管理员回复 :
                                                                <%=m.get("recontent") %>
                                                            </font>
                                                                <%} %></TD>
                                                        </TR>

                                                        <TR>
                                                            <TD height="10" colspan="2"
                                                                align="center" class=css>
                                                                - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                - - - - - - - - - - - - - - - -
                                                            </TD>
                                                        </TR>

                                                        <%} %>
                                                        </TBODY>
                                                    </TABLE>
                                            <TR>
                                                <TD height=33 colSpan=2 align="center"><label>${page.info }</label></TD>
                                            </TR>


                                            <TR>
                                                <TD height=33 colSpan=2 align="center"><label>

                                                    <textarea rows="3" cols="40" name="content"></textarea>


                                                </label></TD>
                                            </TR>


                                            <TR>
                                                <TD height=33 colSpan=2 align="center"><label>


                                                    <input type="submit" value="提交留言">


                                                </label></TD>
                                            </TR>
                                            <script language="javascript" src="js/popups.js"></script>

                                            <script language="javascript">


                                                function update(no) {
                                                    pop("huif.jsp?id=" + no, "回复", 420, 72);
                                                }
                                            </script>


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
 