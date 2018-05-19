<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<%@page import="java.sql.Connection" %>
<%@page import="dao.CommDAO" %>
<%@page import="util.Info" %>
<%@page import="util.PageManager" %>

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
                                    HashMap jjmap = dao.getmap(id, "fwly");

                                %>

                                <jsp:include page="left.jsp"></jsp:include>


                                <TD valign="top">

                                    <%
                                        HashMap ext = new HashMap();
                                        ext.put("saver", Info.getUser(request) == null ? "" : Info.getUser(request).get("uname"));
                                        ext.put("saverimg", Info.getUser(request) == null ? "" : Info.getUser(request).get("filename"));
                                        new CommDAO().insert(request, response, "fwpl", ext, true, false);
                                        if (request.getParameter("f") != null) {
                                    %>
                                    <script type="text/javascript">
                                        window.location.replace("/invitemsg/fwxiang.jsp?id=<%=id%>");
                                    </script>
                                    <%} %>
                                    <form action="fwxiang.jsp?f=f&fwid=<%=id %>&id=<%=id %>" method="post" name="f1">
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
                                                            <TD class=css height=16 align=left colspan="2">
                                                                <center>
                                                                    <strong>
                                                                        <% out.print(jjmap.get("title")); %>
                                                                    </strong>
                                                                    <br/>
                                                                    <%="信息发布人:" + jjmap.get("saver") %>&nbsp;
                                                                    <%="发布时间:" + jjmap.get("savetime") %>
                                                                    <br/>

                                                                    <%=jjmap.get("content") %>
                                                                </center>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=16 align=left colspan="2">&nbsp;</TD>
                                                        </TR>


                                                        <%
                                                            PageManager pageManager = PageManager.getPage("fwxiang.jsp?id=" + id, 5, request);
                                                            pageManager.doList("select * from fwpl where fwid='" + id + "' order by id desc");
                                                            PageManager bean = (PageManager) request.getAttribute("page");
                                                            ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();


                                                            for (HashMap m : nlist) {

                                                        %>


                                                        <TR>
                                                            <TD width="13%" height="50" rowspan="2" align=center
                                                                class=css><font color=grey><img
                                                                    src="upfile/<%=m.get("saverimg") %>" width="50"
                                                                    height="40"></font></TD>
                                                            <TD width="87%" height="25" align=left valign="middle"
                                                                class=css><font color=grey><%=m.get("saver") %>
                                                                ( <%=m.get("savetime") %> ):</font></TD>
                                                        </TR>
                                                        <TR>
                                                            <TD height="25" align=left valign="middle" class=css><font
                                                                    color=grey><%=m.get("content") %>
                                                            </font></TD>
                                                        </TR>


                                                        <%} %>
                                                        <TR>
                                                            <TD height=17 colSpan=2 align="center">${page.info}</TD>
                                                        </TR>
                                                        <%
                                                            if (Info.getUser(request) != null) {
                                                        %>
                                                        <TR>
                                                            <TD height=16 colSpan=2 align="center"><label>

                                                                <textarea rows="3" cols="40" name="content"></textarea>


                                                            </label></TD>
                                                        </TR>


                                                        <TR>
                                                            <TD height=33 colSpan=2 align="center"><label>


                                                                <input type="submit" value="提交评论">


                                                            </label></TD>
                                                        </TR>
                                                        <%} %>
                                                        </TBODY>
                                                    </TABLE>

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
