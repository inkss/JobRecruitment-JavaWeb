<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
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


                                <TD valign="top">


                                    <form action="/invitemsg/bys.jsp" onSubmit="return check();" method="post"
                                          name="f1">
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

                                                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                                    求职者信息</strong></TD>
                                                            <TD
                                                                    background=invitemsg_files/ny_ybj.jpg>&nbsp;
                                                            </TD>
                                                        </TR>
                                                        </TBODY>
                                                    </TABLE>
                                                </TD>
                                            </TR>
                                            <TR>
                                                <TD height=10>&nbsp;</TD>
                                            </TR>
                                            <TR>
                                                <TD class=css vAlign=top align=left>
                                                    <TABLE border=0 cellSpacing=0 cellPadding=0
                                                           width="100%">
                                                        <TBODY>


                                                        <TR>
                                                            <TD class=css align=left height="76">

                                                                <%
                                                                    String tname = request.getParameter("tname") == null ? "" : request.getParameter("tname");
                                                                    String houhold = request.getParameter("houhold") == null ? "" : request.getParameter("houhold");
                                                                    String school = request.getParameter("school") == null ? "" : request.getParameter("school");
                                                                    String xl = request.getParameter("xl") == null ? "" : request.getParameter("xl");
                                                                    String zy = request.getParameter("zy") == null ? "" : request.getParameter("zy");
                                                                    HashMap mm = new HashMap();
                                                                    mm.put("tname", tname);
                                                                    mm.put("houhold", houhold);
                                                                    mm.put("school", school);
                                                                    mm.put("xl", xl);
                                                                    mm.put("zy", zy);
                                                                %>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                学生姓名 : <input type=text name="tname" id="tname"
                                                                              size="10" style="height: 15px"/>
                                                                &nbsp;
                                                                所在城市 : <input type=text name="houhold" id="houhold"
                                                                              size="10" style="height: 15px"/>
                                                                &nbsp;
                                                                毕业院校 : <input type=text name="school" id="school"
                                                                              size="10" style="height: 15px"/>

                                                                <table>
                                                                    <tr>
                                                                        <td></td>
                                                                    </tr>
                                                                </table>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                学历 : <input type=text name="xl" id="xl" size="10"
                                                                            style="height: 15px"/>
                                                                &nbsp;
                                                                专业 : <input type=text name="zy" id="zy" size="10"
                                                                            style="height: 15px"/>
                                                                &nbsp;

                                                                <input type=submit value="查询" style="height: 22px"/>

                                                            </TD>

                                                        </TR>


                                                        <%
                                                            String key = request.getParameter("key") == null ? "" : request.getParameter("key");


                                                            PageManager pageManager = PageManager.getPage("bys.jsp?1=1", 8, request);

                                                            String sql = "select * from sysuser where utype='求职者' ";

                                                            if (!tname.equals(""))
                                                                sql += " and tname like'%" + tname + "%' ";
                                                            if (!houhold.equals(""))
                                                                sql += " and houhold like'%" + houhold + "%' ";
                                                            if (!xl.equals("")) sql += " and xl like'%" + xl + "%' ";
                                                            if (!zy.equals("")) sql += " and zy like'%" + zy + "%' ";
                                                            if (!school.equals(""))
                                                                sql += " and school like'%" + school + "%' ";


                                                            pageManager.doList(sql);
                                                            PageManager bean = (PageManager) request.getAttribute("page");
                                                            ArrayList<HashMap> nlist = (ArrayList) bean.getCollection();


                                                            for (HashMap m : nlist) {
                                                        %>
                                                        <TR>
                                                            <TD class=css align=left>
                                                                &nbsp;&nbsp;&nbsp;&nbsp;
                                                                <a href="bxiang.jsp?id=<%=m.get("id") %>">

                                                                    <%=m.get("tname") %>
                                                                    -
                                                                    <%=m.get("uname") %>


                                                                </a>

                                                                &nbsp;&nbsp;

                                                                <font color=gray> 毕业院校 : <%=m.get("school") %>
                                                                    - <%=m.get("zy") %>
                                                                </font>


                                                                &nbsp;&nbsp;

                                                                <font color=gray> 毕业日期 : <%=m.get("cbdate") %>
                                                                </font>

                                                            </TD>

                                                        </TR>

                                                        <TR>
                                                            <TD class=css height="10"
                                                                align="center">
                                                                - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                - - - - - - - - - - - - - - - - - - - - - - - - - - - -
                                                                -
                                                            </TD>
                                                        </TR>

                                                        <%} %>


                                                        </TBODY>
                                                    </TABLE>
                                            <TR>
                                                <TD height=33 colSpan=2 align="center"><label>${page.info }</label></TD>
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
<%=Info.tform(mm) %>
 
