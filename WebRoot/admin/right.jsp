<%@ page language="java" import="java.util.*" pageEncoding="utf-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>无标题文档</title>
    <style type="text/css">
        <!--
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
            if (cs[1].style.backgroundColor != highlightcolor && source.id != "nc" && cs[1].style.backgroundColor != clickcolor)
                for (i = 0; i < cs.length; i++) {
                    cs[i].style.backgroundColor = highlightcolor;
                }
        }

        function changeback() {
            if (event.fromElement.contains(event.toElement) || source.contains(event.toElement) || source.id == "nc")
                return
            if (event.toElement != source && cs[1].style.backgroundColor != clickcolor)
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
            if (cs[1].style.backgroundColor != clickcolor && source.id != "nc")
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

<body>
<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0">
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
                                            <td width="6%" height="19" valign="bottom">
                                                <div align="center"><img src="images/tb.gif" width="14" height="14"/>
                                                </div>
                                            </td>
                                            <td width="94%" valign="bottom"><span class="STYLE1"> 管理人员基本信息列表</span></td>
                                        </tr>
                                    </table>
                                </td>
                                <td>
                                    <div align="right"><span class="STYLE1">
              <input type="checkbox" name="checkbox11" id="checkbox11"/>
              全选      &nbsp;&nbsp;<img src="images/add.gif" width="10" height="10"/> 添加   &nbsp; <img
                                            src="images/del.gif" width="10" height="10"/> 删除    &nbsp;&nbsp;<img
                                            src="images/edit.gif" width="10" height="10"/> 编辑   &nbsp;</span><span
                                            class="STYLE1"> &nbsp;</span></div>
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
            <table width="100%" border="0" cellpadding="0" cellspacing="1" bgcolor="#a8c7ce" onmouseover="changeto()"
                   onmouseout="changeback()">
                <tr>
                    <td width="4%" height="20" bgcolor="d3eaef" class="STYLE10">
                        <div align="center">
                            <input type="checkbox" name="checkbox" id="checkbox"/>
                        </div>
                    </td>
                    <td width="10%" height="20" bgcolor="d3eaef" class="STYLE6">
                        <div align="center"><span class="STYLE10">用户名</span></div>
                    </td>
                    <td width="15%" height="20" bgcolor="d3eaef" class="STYLE6">
                        <div align="center"><span class="STYLE10">用户角色</span></div>
                    </td>
                    <td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
                        <div align="center"><span class="STYLE10">联系方式</span></div>
                    </td>
                    <td width="16%" height="20" bgcolor="d3eaef" class="STYLE6">
                        <div align="center"><span class="STYLE10">IP地址</span></div>
                    </td>
                    <td width="27%" height="20" bgcolor="d3eaef" class="STYLE6">
                        <div align="center"><span class="STYLE10">详细描述</span></div>
                    </td>
                    <td width="14%" height="20" bgcolor="d3eaef" class="STYLE6">
                        <div align="center"><span class="STYLE10">基本操作</span></div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox2" id="checkbox2"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE6">
                        <div align="center"><span class="STYLE19">admin</span></div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center" class="STYLE21">删除 | 查看</div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox3" id="checkbox3"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">admin</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center"><span class="STYLE21">删除 | 查看</span></div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox4" id="checkbox4"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">admin</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center"><span class="STYLE21">删除 | 查看</span></div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox5" id="checkbox5"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">admin</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center"><span class="STYLE21">删除 | 查看</span></div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox6" id="checkbox6"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">admin</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center"><span class="STYLE21">删除 | 查看</span></div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox7" id="checkbox7"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">admin</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center"><span class="STYLE21">删除 | 查看</span></div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox8" id="checkbox8"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">admin</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center"><span class="STYLE21">删除 | 查看</span></div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox9" id="checkbox9"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">admin</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center"><span class="STYLE21">删除 | 查看</span></div>
                    </td>
                </tr>
                <tr>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center">
                            <input type="checkbox" name="checkbox10" id="checkbox10"/>
                        </div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">admin</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">系统管理员</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">13913612548</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">192.168.0.124</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF" class="STYLE19">
                        <div align="center">用户可以对系统的所有操作进行管理...</div>
                    </td>
                    <td height="20" bgcolor="#FFFFFF">
                        <div align="center"><span class="STYLE21">删除 | 查看</span></div>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td height="30">
            <table width="100%" border="0" cellspacing="0" cellpadding="0">
                <tr>
                    <td width="33%">
                        <div align="left"><span
                                class="STYLE22">&nbsp;&nbsp;&nbsp;&nbsp;共有<strong> 243</strong> 条记录，当前第<strong> 1</strong> 页，共 <strong>10</strong> 页</span>
                        </div>
                    </td>
                    <td width="67%">
                        <table width="312" border="0" align="right" cellpadding="0" cellspacing="0">
                            <tr>
                                <td width="49">
                                    <div align="center"><img src="images/main_54.gif" width="40" height="15"/></div>
                                </td>
                                <td width="49">
                                    <div align="center"><img src="images/main_56.gif" width="45" height="15"/></div>
                                </td>
                                <td width="49">
                                    <div align="center"><img src="images/main_58.gif" width="45" height="15"/></div>
                                </td>
                                <td width="49">
                                    <div align="center"><img src="images/main_60.gif" width="40" height="15"/></div>
                                </td>
                                <td width="37" class="STYLE22">
                                    <div align="center">转到</div>
                                </td>
                                <td width="22">
                                    <div align="center">
                                        <input type="text" name="textfield" id="textfield"
                                               style="width:20px; height:12px; font-size:12px; border:solid 1px #7aaebd;"/>
                                    </div>
                                </td>
                                <td width="22" class="STYLE22">
                                    <div align="center">页</div>
                                </td>
                                <td width="35"><img src="images/main_62.gif" width="26" height="15"/></td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
        </td>
    </tr>
</table>
</body>
</html>
