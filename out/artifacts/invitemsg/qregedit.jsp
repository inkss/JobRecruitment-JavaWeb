<%@page language="java" import="java.util.*" pageEncoding="UTF-8" %>
<%@page import="java.sql.Connection" %>
<%@page import="dao.CommDAO" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0031)http://www.qyyqyj.com/index.jsp -->
<HTML xmlns="http://www.w3.org/1999/xhtml">
<HEAD><TITLE>用户注册</TITLE>
    <LINK rel=stylesheet type=text/css
          href="style/css.css"/>

    <STYLE type=text/css>BODY {
        BACKGROUND-IMAGE: none;
        MARGIN: 0px
    }
    </STYLE>
    <LINK rel=stylesheet type=text/css href="schicmangesys_files/style.css"/>
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

    <META content="text/html; charset=utf-8" http-equiv=Content-Type/>
    <META name=GENERATOR content="MSHTML 8.00.6001.19222">
</HEAD>


<%
    HashMap ext = new HashMap();
    String tglparentid = request.getParameter("tglparentid") == null ? "" : request.getParameter("tglparentid");
    ext.put("tglparentid", tglparentid);
    ext.put("utype", "企业");
    new CommDAO().insert(request, response, "sysuser", ext, true, false);
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


                                    <form action="qregedit.jsp?f=f&tglparentid=<%=tglparentid%>"
                                          onclick="return checkform()" onSubmit="return checkform()" method="post"
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
                                                                background=invitemsg_files/ny_xt.jpgg width="23%"
                                                                align=center>用户名
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  class='textBox' id='uname'
                                                                                  name='uname' size=35/><label
                                                                    id='clabeluname'/>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="23%"
                                                                align=center>登录密码
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  class='textBox' id='upass'
                                                                                  name='upass' size=35/><label
                                                                    id='clabelupass'/>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="23%"
                                                                align=center>企业名称
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  class='textBox' id='tname'
                                                                                  name='tname' size=35/><label
                                                                    id='clabeltname'/>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="23%"
                                                                align=center>所处城市
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  class='textBox' id='houhold'
                                                                                  name='houhold' size=35/><label
                                                                    id='clabelhouhold'/>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="23%"
                                                                align=center>联系地址
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="77%"
                                                                align=left><textarea cols='35'
                                                                                     style='margin-top: 1px;margin-bottom: 1px'
                                                                                     class='textArea'
                                                                                     name='addrs'></textarea>
                                                            </TD>
                                                        </TR>

                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="23%"
                                                                align=center>联系电话
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  class='textBox' id='tel' name='tel'
                                                                                  size=35/><label id='clabeltel'/>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="23%"
                                                                align=center>成立日期
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="77%"
                                                                align=left><input type=text onblur='checkform()'
                                                                                  size='12' class='textBox'
                                                                                  name='cbdate' id="cbdate"
                                                                                  onclick='WdatePicker();'/><label
                                                                    id='clabelcbdate'/>
                                                            </TD>
                                                        </TR>
                                                        <TR>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="23%"
                                                                align=center>企业LOGO
                                                            </TD>
                                                            <TD class=css height=32
                                                                background=invitemsg_files/ny_xt.jpgg width="77%"
                                                                align=left><%=Info.getImgUpInfo(65)%>
                                                            </TD>
                                                        </TR>

                                                        </TBODY>
                                                    </TABLE>
                                            <TR>
                                                <TD height=33 colSpan=2 align="center"><label>
                                                    <input type="submit" name="button" id="button" value="提交"/>&nbsp;&nbsp;&nbsp;
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

        var unameobj = document.getElementById("uname");
        if (unameobj.value != "") {
            var ajax = new AJAX();
            ajax.post("/invitemsg/factory/checkno.jsp?table=sysuser&col=uname&value=" + unameobj.value + "&checktype=insert&ttime=<%=Info.getDateStr()%>")
            var msg = ajax.getValue();
            if (msg.indexOf('Y') > -1) {
                document.getElementById("clabeluname").innerHTML = "&nbsp;&nbsp;<font color=red>用户名已存在</font>";
                return false;
            } else {
                document.getElementById("clabeluname").innerHTML = "  ";
            }
        }
        var upassobj = document.getElementById("upass");
        if (upassobj.value == "") {
            document.getElementById("clabelupass").innerHTML = "&nbsp;&nbsp;<font color=red>请输入登录密码</font>";
            return false;
        } else {
            document.getElementById("clabelupass").innerHTML = "  ";
        }

        var tnameobj = document.getElementById("tname");
        if (tnameobj.value == "") {
            document.getElementById("clabeltname").innerHTML = "&nbsp;&nbsp;<font color=red>请输入企业名称</font>";
            return false;
        } else {
            document.getElementById("clabeltname").innerHTML = "  ";
        }

        var houholdobj = document.getElementById("houhold");
        if (houholdobj.value == "") {
            document.getElementById("clabelhouhold").innerHTML = "&nbsp;&nbsp;<font color=red>请输入城市</font>";
            return false;
        } else {
            document.getElementById("clabelhouhold").innerHTML = "  ";
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
            document.getElementById("clabelcbdate").innerHTML = "&nbsp;&nbsp;<font color=red>请输入成立日期</font>";
            return false;
        } else {
            document.getElementById("clabelcbdate").innerHTML = "  ";
        }

        return true;
    }

    popheight = 500;
</script>  
