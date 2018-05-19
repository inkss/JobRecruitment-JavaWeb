package control;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import jxl.Cell;
import jxl.Sheet;
import jxl.Workbook;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUpload;
import org.apache.commons.fileupload.RequestContext;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.servlet.ServletRequestContext;


import util.Info;

import dao.CommDAO;

public class MainCtrl extends HttpServlet {

    public MainCtrl() {
        super();
    }

    public void destroy() {
        super.destroy(); // Just puts "destroy" string in log
        // Put your code here
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        this.doPost(request, response);
    }

    public void go(String url, HttpServletRequest request, HttpServletResponse response) {
        try {
            request.getRequestDispatcher(url).forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public void gor(String url, HttpServletRequest request, HttpServletResponse response) {
        try {
            response.sendRedirect(url);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        HttpSession session = request.getSession();
        HashMap user = (HashMap) session.getAttribute("admin");
        String ac = request.getParameter("ac");
        if (ac == null) ac = "";
        CommDAO dao = new CommDAO();
        String date = Info.getDateStr();
        String today = date.substring(0, 10);
        String tomonth = date.substring(0, 7);


        if (ac.equals("mlogin")) {
            String username = request.getParameter("uname");
            String password = request.getParameter("upass");
            List<HashMap> list = dao
                    .select("select * from sysuser where uname='"
                            + username + "'");
            if (list.size() == 1) {
                HashMap map = list.get(0);
                List<HashMap> ulist = dao
                        .select("select * from sysuser where uname='"
                                + username + "'   and upass='" + password
                                + "'");

                if (ulist.size() == 1 && password.equals(map.get("upass").toString())) {

                    request.getSession().setAttribute("admin", map);

                    gor("/invitemsg/index.jsp", request, response);

                } else {
                    request.setAttribute("error", "");
                    go("/index.jsp", request, response);
                }
            } else {
                request.setAttribute("error", "");
                go("/index.jsp", request, response);
            }

        }


        //修改密码
        if (ac.equals("uppass")) {
            String olduserpass = request.getParameter("olduserpass");
            String userpass = request.getParameter("userpass");
            String copyuserpass = request.getParameter("copyuserpass");
            user = dao.getmap(Info.getUser(request).get("id").toString(), "sysuser");
            if (!(((String) user.get("upass")).equals(olduserpass))) {
                request.setAttribute("error", "");
                go("/admin/uppass.jsp", request, response);
            } else {
                String id = (String) user.get("id");
                String sql = "update sysuser set upass='" + userpass + "' where id=" + id;
                dao.commOper(sql);
                request.setAttribute("suc", "");
                go("/admin/uppass.jsp", request, response);
            }
        }


        if (ac.equals("uploaddoc")) {
            try {
                String filename = "";
                request.setCharacterEncoding("utf-8");
                RequestContext requestContext = new ServletRequestContext(request);
                if (FileUpload.isMultipartContent(requestContext)) {

                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    upload.setSizeMax(100 * 1024 * 1024);
                    List items = new ArrayList();

                    items = upload.parseRequest(request);

                    FileItem fileItem = (FileItem) items.get(0);
                    if (fileItem.getName() != null && fileItem.getSize() != 0) {
                        if (fileItem.getName() != null && fileItem.getSize() != 0) {
                            File fullFile = new File(fileItem.getName());
                            filename = Info.generalFileName(fullFile.getName());
                            File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
                            try {
                                fileItem.write(newFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else {
                        }
                    }
                }

                go("/js/uploaddoc.jsp?docname=" + filename, request, response);
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }

        //导excel
        if (ac.equals("importexcel")) {
            String page = request.getParameter("page");
            String whzdstr = request.getParameter("whzdstr");
            String tablename = request.getParameter("tablename");
            try {
                String filename = "";
                request.setCharacterEncoding("utf-8");
                RequestContext requestContext = new ServletRequestContext(request);
                if (FileUpload.isMultipartContent(requestContext)) {

                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    upload.setSizeMax(100 * 1024 * 1024);
                    List items = new ArrayList();

                    items = upload.parseRequest(request);

                    FileItem fileItem = (FileItem) items.get(0);
                    if (fileItem.getName() != null && fileItem.getSize() != 0) {
                        if (fileItem.getName() != null && fileItem.getSize() != 0) {
                            File fullFile = new File(fileItem.getName());
                            filename = Info.generalFileName(fullFile.getName());
                            File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
                            try {
                                fileItem.write(newFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else {
                        }
                    }

                    if (filename.indexOf(".xls") > -1) {
                        Workbook workbook;
                        try {
                            workbook = Workbook.getWorkbook(new File(request.getRealPath("/upfile/") + "/" + filename));
                            //通过Workbook的getSheet方法选择第一个工作簿（从0开始）
                            Sheet sheet = workbook.getSheet(0);
                            //通过Sheet方法的getCell方法选择位置为C2的单元格（两个参数都从0开始）
                            //int empty = 0;
                            for (int i = 1; i < 1000; i++) {
                                Cell cell = null;
                                try {
                                    String isql = "insert into " + tablename + "(";

                                    for (String str : whzdstr.split("-")) {
                                        isql += str + ",";
                                    }
                                    isql = isql.substring(0, isql.length() - 1);
                                    isql += ")values(";

                                    int j = 0;
                                    int empty = 1;
                                    for (String str : whzdstr.split("-")) {
                                        cell = sheet.getCell(j, i);
                                        isql += "'" + cell.getContents() + "',";
                                        String content = cell.getContents() == null ? "" : cell.getContents();
                                        if (!"".equals(content.trim())) {
                                            empty = 0;
                                        }
                                        j++;
                                    }
                                    if (empty == 1) continue;
                                    isql = isql.substring(0, isql.length() - 1);
                                    isql += ")";
                                    dao.commOper(isql);
                                } catch (Exception e) {
                                    continue;
                                }

                            }
                            workbook.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                go("/admin/" + page + "?docname=" + filename, request, response);
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }


        if (ac.equals("uploadimg")) {
            try {
                String filename = "";
                request.setCharacterEncoding("utf-8");
                RequestContext requestContext = new ServletRequestContext(request);
                if (FileUpload.isMultipartContent(requestContext)) {

                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    upload.setSizeMax(100 * 1024 * 1024);
                    List items = new ArrayList();

                    items = upload.parseRequest(request);

                    FileItem fileItem = (FileItem) items.get(0);
                    if (fileItem.getName() != null && fileItem.getSize() != 0) {
                        if (fileItem.getName() != null && fileItem.getSize() != 0) {
                            File fullFile = new File(fileItem.getName());
                            filename = Info.generalFileName(fullFile.getName());
                            File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
                            try {
                                fileItem.write(newFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else {
                        }
                    }
                }

                go("/js/uploadimg.jsp?filename=" + filename, request, response);
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }


        if (ac.equals("uploadimg2")) {
            try {
                String filename = "";
                request.setCharacterEncoding("utf-8");
                RequestContext requestContext = new ServletRequestContext(request);
                if (FileUpload.isMultipartContent(requestContext)) {

                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    upload.setSizeMax(100 * 1024 * 1024);
                    List items = new ArrayList();

                    items = upload.parseRequest(request);

                    FileItem fileItem = (FileItem) items.get(0);
                    if (fileItem.getName() != null && fileItem.getSize() != 0) {
                        if (fileItem.getName() != null && fileItem.getSize() != 0) {
                            File fullFile = new File(fileItem.getName());
                            filename = Info.generalFileName(fullFile.getName());
                            File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
                            try {
                                fileItem.write(newFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else {
                        }
                    }
                }

                go("/js/uploadimg2.jsp?filename=" + filename, request, response);
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }

        if (ac.equals("uploadimg3")) {
            try {
                String filename = "";
                request.setCharacterEncoding("utf-8");
                RequestContext requestContext = new ServletRequestContext(request);
                if (FileUpload.isMultipartContent(requestContext)) {

                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    upload.setSizeMax(100 * 1024 * 1024);
                    List items = new ArrayList();

                    items = upload.parseRequest(request);

                    FileItem fileItem = (FileItem) items.get(0);
                    if (fileItem.getName() != null && fileItem.getSize() != 0) {
                        if (fileItem.getName() != null && fileItem.getSize() != 0) {
                            File fullFile = new File(fileItem.getName());
                            filename = Info.generalFileName(fullFile.getName());
                            File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
                            try {
                                fileItem.write(newFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else {
                        }
                    }
                }

                go("/js/uploadimg3.jsp?filename=" + filename, request, response);
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }

        if (ac.equals("uploadimg4")) {
            try {
                String filename = "";
                request.setCharacterEncoding("utf-8");
                RequestContext requestContext = new ServletRequestContext(request);
                if (FileUpload.isMultipartContent(requestContext)) {

                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    upload.setSizeMax(100 * 1024 * 1024);
                    List items = new ArrayList();

                    items = upload.parseRequest(request);

                    FileItem fileItem = (FileItem) items.get(0);
                    if (fileItem.getName() != null && fileItem.getSize() != 0) {
                        if (fileItem.getName() != null && fileItem.getSize() != 0) {
                            File fullFile = new File(fileItem.getName());
                            filename = Info.generalFileName(fullFile.getName());
                            File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
                            try {
                                fileItem.write(newFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else {
                        }
                    }
                }

                go("/js/uploadimg4.jsp?filename=" + filename, request, response);
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }

        if (ac.equals("uploadimg5")) {
            try {
                String filename = "";
                request.setCharacterEncoding("utf-8");
                RequestContext requestContext = new ServletRequestContext(request);
                if (FileUpload.isMultipartContent(requestContext)) {

                    DiskFileItemFactory factory = new DiskFileItemFactory();
                    factory.setRepository(new File(request.getRealPath("/upfile/") + "/"));
                    ServletFileUpload upload = new ServletFileUpload(factory);
                    upload.setSizeMax(100 * 1024 * 1024);
                    List items = new ArrayList();

                    items = upload.parseRequest(request);

                    FileItem fileItem = (FileItem) items.get(0);
                    if (fileItem.getName() != null && fileItem.getSize() != 0) {
                        if (fileItem.getName() != null && fileItem.getSize() != 0) {
                            File fullFile = new File(fileItem.getName());
                            filename = Info.generalFileName(fullFile.getName());
                            File newFile = new File(request.getRealPath("/upfile/") + "/" + filename);
                            try {
                                fileItem.write(newFile);
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                        } else {
                        }
                    }
                }

                go("/js/uploadimg5.jsp?filename=" + filename, request, response);
            } catch (Exception e1) {
                e1.printStackTrace();
            }
        }


        //fpasstj.jsp请求处理开始
        if (ac.equals("fpasstj")) {
            String uname = request.getParameter("uname") == null ? "" : request.getParameter("uname");
            String sinfo = request.getParameter("sinfo") == null ? "" : request.getParameter("sinfo");
            String fpass = request.getParameter("fpass") == null ? "" : request.getParameter("fpass");
            String email = request.getParameter("email") == null ? "" : request.getParameter("email");
            String savetime = date;
            String sql = "insert into fpass(uname,sinfo,fpass,email,savetime " +
                    ")values('" + uname + "','" + sinfo + "','" + fpass + "','" + email + "','" + savetime + "')";
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/fpasstj.jsp");
        }
        //fpasstj.jsp请求处理结束

        //xwhbnewstj.jsp请求处理开始
        if (ac.equals("xwhbnewstj")) {
            String title = request.getParameter("title") == null ? "" : request.getParameter("title");
            String author = request.getParameter("author") == null ? "" : request.getParameter("author");
            String savetime = date;
            String filename = request.getParameter("filename") == null ? "" : request.getParameter("filename");
            String content = request.getParameter("content") == null ? "" : request.getParameter("content");
            content = content.replaceAll("'", " ");
            String infotype = "新闻";
            String sql = "insert into hbnews(title,author,savetime,filename,content,infotype " +
                    ")values('" + title + "','" + author + "','" + savetime + "','" + filename + "','" + content + "','" + infotype + "')";
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/xwhbnewstj.jsp");
        }
        //xwhbnewstj.jsp请求处理结束

        //xwhbnewsxg.jsp请求处理开始
        if (ac.equals("xwhbnewsxg")) {
            String id = request.getParameter("id");
            String title = request.getParameter("title") == null ? "" : request.getParameter("title");
            String author = request.getParameter("author") == null ? "" : request.getParameter("author");
            String filename = request.getParameter("filename") == null ? "" : request.getParameter("filename");
            String content = request.getParameter("content") == null ? "" : request.getParameter("content");
            content = content.replaceAll("'", " ");
            String sql = "update hbnews set title='" + title + "',author='" + author + "',filename='" + filename + "',content='" + content + "' where id=" + id;
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/xwhbnewsxg.jsp?id=" + id + "");
        }
        //xwhbnewsxg.jsp请求处理结束

        //yqljtj.jsp请求处理开始
        if (ac.equals("yqljtj")) {
            String ljname = request.getParameter("ljname") == null ? "" : request.getParameter("ljname");
            String ljurl = request.getParameter("ljurl") == null ? "" : request.getParameter("ljurl");
            String sql = "insert into yqlj(ljname,ljurl " +
                    ")values('" + ljname + "','" + ljurl + "')";
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/yqljtj.jsp");
        }
        //yqljtj.jsp请求处理结束

        //yqljxg.jsp请求处理开始
        if (ac.equals("yqljxg")) {
            String id = request.getParameter("id");
            String ljname = request.getParameter("ljname") == null ? "" : request.getParameter("ljname");
            String ljurl = request.getParameter("ljurl") == null ? "" : request.getParameter("ljurl");
            String sql = "update yqlj set ljname='" + ljname + "',ljurl='" + ljurl + "' where id=" + id;
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/yqljxg.jsp?id=" + id + "");
        }
        //yqljxg.jsp请求处理结束

        //messagesxg.jsp请求处理开始
        if (ac.equals("messagesxg")) {
            String id = request.getParameter("id");
            String recontent = request.getParameter("recontent") == null ? "" : request.getParameter("recontent");
            String sql = "update messages set recontent='" + recontent + "' where id=" + id;
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/messagesxg.jsp?id=" + id + "");
        }
        //messagesxg.jsp请求处理结束

        //sysusertj.jsp请求处理开始
        if (ac.equals("sysusertj")) {
            String uname = request.getParameter("uname") == null ? "" : request.getParameter("uname");
            String upass = request.getParameter("upass") == null ? "" : request.getParameter("upass");
            String tname = request.getParameter("tname") == null ? "" : request.getParameter("tname");
            String sex = request.getParameter("sex") == null ? "" : request.getParameter("sex");
            String qq = request.getParameter("qq") == null ? "" : request.getParameter("qq");
            String email = request.getParameter("email") == null ? "" : request.getParameter("email");
            String addrs = request.getParameter("addrs") == null ? "" : request.getParameter("addrs");
            String savetime = date;
            String filename = request.getParameter("filename") == null ? "" : request.getParameter("filename");
            String utype = "管理员";
            String sql = "insert into sysuser(uname,upass,tname,sex,qq,email,addrs,savetime,filename,utype " +
                    ")values('" + uname + "','" + upass + "','" + tname + "','" + sex + "','" + qq + "','" + email + "','" + addrs + "','" + savetime + "','" + filename + "','" + utype + "')";
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/sysusertj.jsp");
        }
        //sysusertj.jsp请求处理结束

        //sysuserxg.jsp请求处理开始
        if (ac.equals("sysuserxg")) {
            String id = request.getParameter("id");
            String uname = request.getParameter("uname") == null ? "" : request.getParameter("uname");
            String upass = request.getParameter("upass") == null ? "" : request.getParameter("upass");
            String tname = request.getParameter("tname") == null ? "" : request.getParameter("tname");
            String sex = request.getParameter("sex") == null ? "" : request.getParameter("sex");
            String qq = request.getParameter("qq") == null ? "" : request.getParameter("qq");
            String email = request.getParameter("email") == null ? "" : request.getParameter("email");
            String addrs = request.getParameter("addrs") == null ? "" : request.getParameter("addrs");
            String filename = request.getParameter("filename") == null ? "" : request.getParameter("filename");
            String sql = "update sysuser set uname='" + uname + "',upass='" + upass + "',tname='" + tname + "',sex='" + sex + "',qq='" + qq + "',email='" + email + "',addrs='" + addrs + "',filename='" + filename + "' where id=" + id;
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/sysuserxg.jsp?id=" + id + "");
        }
        //sysuserxg.jsp请求处理结束

        //zpinfotj.jsp请求处理开始
        if (ac.equals("zpinfotj")) {
            String title = request.getParameter("title") == null ? "" : request.getParameter("title");
            String zprs = request.getParameter("zprs") == null ? "" : request.getParameter("zprs");
            String gzdd = request.getParameter("gzdd") == null ? "" : request.getParameter("gzdd");
            String xl = request.getParameter("xl") == null ? "" : request.getParameter("xl");
            String jl = request.getParameter("jl") == null ? "" : request.getParameter("jl");
            String infotype = request.getParameter("infotype") == null ? "" : request.getParameter("infotype");
            String bei = request.getParameter("bei") == null ? "" : request.getParameter("bei");
            String dy = request.getParameter("dy") == null ? "" : request.getParameter("dy");
            String savetime = date;
            String qyuname = Info.getUser(request).get("uname").toString();
            String qytname = Info.getUser(request).get("tname").toString();
            String sql = "insert into zpinfo(title,zprs,gzdd,xl,jl,infotype,bei,dy,savetime,qyuname,qytname " +
                    ")values('" + title + "','" + zprs + "','" + gzdd + "','" + xl + "','" + jl + "','" + infotype + "','" + bei + "','" + dy + "','" + savetime + "','" + qyuname + "','" + qytname + "')";
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/zpinfotj.jsp");
        }
        //zpinfotj.jsp请求处理结束

        //zpinfoxg.jsp请求处理开始
        if (ac.equals("zpinfoxg")) {
            String id = request.getParameter("id");
            String title = request.getParameter("title") == null ? "" : request.getParameter("title");
            String zprs = request.getParameter("zprs") == null ? "" : request.getParameter("zprs");
            String gzdd = request.getParameter("gzdd") == null ? "" : request.getParameter("gzdd");
            String xl = request.getParameter("xl") == null ? "" : request.getParameter("xl");
            String jl = request.getParameter("jl") == null ? "" : request.getParameter("jl");
            String infotype = request.getParameter("infotype") == null ? "" : request.getParameter("infotype");
            String bei = request.getParameter("bei") == null ? "" : request.getParameter("bei");
            String dy = request.getParameter("dy") == null ? "" : request.getParameter("dy");
            String sql = "update zpinfo set title='" + title + "',zprs='" + zprs + "',gzdd='" + gzdd + "',xl='" + xl + "',jl='" + jl + "',infotype='" + infotype + "',bei='" + bei + "',dy='" + dy + "' where id=" + id;
            dao.commOper(sql);
            session.setAttribute("suc", "suc");
            response.sendRedirect("/invitemsg/admin/zpinfoxg.jsp?id=" + id + "");
        }
        //zpinfoxg.jsp请求处理结束

//--业务层代码块结束--
        dao.close();
        out.flush();
        out.close();
    }


    public void init() throws ServletException {
        // Put your code here
    }


    public static void main(String[] args) {
        System.out.println(new CommDAO().select("select * from mixinfo"));
    }


}
