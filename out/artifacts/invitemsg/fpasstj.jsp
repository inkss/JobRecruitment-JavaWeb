<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="java.sql.Connection" %>
<%@page import="dao.CommDAO" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>忘记密码</TITLE>
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


<%
    HashMap ext = new HashMap();
    String tglparentid = request.getParameter("tglparentid") == null ? "" : request.getParameter("tglparentid");
    ext.put("tglparentid", tglparentid);
    new CommDAO().insert(request, response, "fpass", ext, true, false);
%>
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


                                    <form action="/invitemsg/invitemsg?ac=fpasstj&tglparentid=<%=tglparentid%>"
                                          onSubmit="return checkform()" method="post" name="f1">
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

                                                                <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;用户注册</strong>
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
                                                <TD height=20>&nbsp;</TD>
                                            </TR>
                                            <TR>
                                                <TD class=css vAlign=top align=left>
                                                    <TABLE border=0 cellSpacing=0 cellPadding=0
                                                           width="100%">
                                                        <TBODY>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xtt.jpg width="23%"
                                                                align=center>用户名
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xtt.jpg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  class='' id='uname' name='uname'
                                                                                  size=35/><label id='clabeluname'/>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xtt.jpg width="23%"
                                                                align=center>申诉信息
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xtt.jpg width="77%"
                                                                align=left><textarea cols='45' rows='3'
                                                                                     style='margin-top: 1px;margin-bottom: 1px'
                                                                                     class='' name='sinfo'></textarea>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xtt.jpg width="23%"
                                                                align=center>以前密码
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xtt.jpg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  class='' id='fpass' name='fpass'
                                                                                  size=35/><label id='clabelfpass'/>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xtt.jpg width="23%"
                                                                align=center>回复邮箱
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xtt.jpg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  class='' id='email' name='email'
                                                                                  size=35/><label id='clabelemail'/>
                                                            </TD>
                                                        </TR>

                                                        </TBODY>
                                                    </TABLE>
                                            <TR>
                                                <TD height=33 colSpan=2 align="center"><label>
                                                    <input type="submit" name="button" id="button" value="提交">&nbsp;&nbsp;&nbsp;
                                                    <input type=reset value='重置'/>
                                                </label></TD>
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
<script language=javascript src='/invitemsg/js/popup.js'></script>
<script language=javascript src='/invitemsg/js/ajax.js'></script>
<%@page import="util.Info" %>
<%@page import="util.Info" %>
<%@page import="java.util.ArrayList" %>
<%@page import="java.util.HashMap" %>
<%@page import="util.PageManager" %>
<%@page import="dao.CommDAO" %>
<script language=javascript>

    function checkform() {
        var unameobj = document.getElementById("uname");
        if (unameobj.value == "") {
            document.getElementById("clabeluname").innerHTML = "&nbsp;&nbsp;<font color=red>请输入用户名</font>";
            return false;
        } else {
            document.getElementById("clabeluname").innerHTML = "  ";
        }

        var fpassobj = document.getElementById("fpass");
        if (fpassobj.value == "") {
            document.getElementById("clabelfpass").innerHTML = "&nbsp;&nbsp;<font color=red>请输入以前密码</font>";
            return false;
        } else {
            document.getElementById("clabelfpass").innerHTML = "  ";
        }

        var emailobj = document.getElementById("email");
        if (emailobj.value == "") {
            document.getElementById("clabelemail").innerHTML = "&nbsp;&nbsp;<font color=red>请输入回复邮箱</font>";
            return false;
        } else {
            document.getElementById("clabelemail").innerHTML = "  ";
        }

        var emailobj = document.getElementById("email");
        if (emailobj.value != "") {
            var myreg = /^([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\_|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/;
            if (!myreg.test(emailobj.value)) {
                document.getElementById("clabelemail").innerHTML = "&nbsp;&nbsp;<font color=red>回复邮箱格式不正确</font>";
                return false;
            } else {
                document.getElementById("clabelemail").innerHTML = "";
            }
        }
        return true;
    }
</script>  
