package control;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import pojo.*;

import util.Info;
import util.StrUtil;

import net.sf.json.JSONObject;

import com.opensymphony.xwork2.ActionSupport;

import dao.CommDAO;

public class SysAction extends ActionSupport {

    CommDAO cdao = new CommDAO();
    HttpServletRequest request = ServletActionContext.getRequest();
    HttpServletResponse response = ServletActionContext.getResponse();
    HttpSession session = ServletActionContext.getRequest().getSession();
    HashMap<String, String> user = (HashMap<String, String>) session.getAttribute("admin");
    String date = Info.getDateStr();


    //fpasstj.jsp请求处理开始
    public String fpasstj() throws Exception {
        FpassDAO dao = (FpassDAO) Info.getDao(request, "FpassDAO");
        Fpass obj = new Fpass();
        String uname = request.getParameter("uname") == null ? "" : request.getParameter("uname");
        String sinfo = request.getParameter("sinfo") == null ? "" : request.getParameter("sinfo");
        String fpass = request.getParameter("fpass") == null ? "" : request.getParameter("fpass");
        String email = request.getParameter("email") == null ? "" : request.getParameter("email");
        String savetime = date;
        obj.setUname(uname);
        obj.setSinfo(sinfo);
        obj.setFpass(fpass);
        obj.setEmail(email);
        obj.setSavetime(savetime);
        dao.save(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/fpasstj.jsp");
        return null;
    }
    //fpasstj.jsp请求处理结束

    //xwhbnewstj.jsp请求处理开始
    public String xwhbnewstj() throws Exception {
        HbnewsDAO dao = (HbnewsDAO) Info.getDao(request, "HbnewsDAO");
        Hbnews obj = new Hbnews();
        String title = request.getParameter("title") == null ? "" : request.getParameter("title");
        String author = request.getParameter("author") == null ? "" : request.getParameter("author");
        String savetime = date;
        String filename = request.getParameter("filename") == null ? "" : request.getParameter("filename");
        String content = request.getParameter("content") == null ? "" : request.getParameter("content");
        content = content.replaceAll("'", " ");
        String infotype = "新闻";
        obj.setTitle(title);
        obj.setAuthor(author);
        obj.setSavetime(savetime);
        obj.setFilename(filename);
        obj.setContent(content);
        obj.setInfotype(infotype);
        dao.save(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/xwhbnewstj.jsp");
        return null;
    }
    //xwhbnewstj.jsp请求处理结束

    //xwhbnewsxg.jsp请求处理开始
    public String xwhbnewsxg() throws Exception {
        String id = request.getParameter("id");
        HbnewsDAO dao = (HbnewsDAO) Info.getDao(request, "HbnewsDAO");
        Hbnews obj = (Hbnews) dao.findById(Integer.parseInt(id));
        String title = request.getParameter("title") == null ? "" : request.getParameter("title");
        String author = request.getParameter("author") == null ? "" : request.getParameter("author");
        String filename = request.getParameter("filename") == null ? "" : request.getParameter("filename");
        String content = request.getParameter("content") == null ? "" : request.getParameter("content");
        content = content.replaceAll("'", " ");
        obj.setTitle(title);
        obj.setAuthor(author);
        obj.setFilename(filename);
        obj.setContent(content);
        dao.merge(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/xwhbnewsxg.jsp?id=" + id + "");
        return null;
    }
    //xwhbnewsxg.jsp请求处理结束

    //yqljtj.jsp请求处理开始
    public String yqljtj() throws Exception {
        YqljDAO dao = (YqljDAO) Info.getDao(request, "YqljDAO");
        Yqlj obj = new Yqlj();
        String ljname = request.getParameter("ljname") == null ? "" : request.getParameter("ljname");
        String ljurl = request.getParameter("ljurl") == null ? "" : request.getParameter("ljurl");
        obj.setLjname(ljname);
        obj.setLjurl(ljurl);
        dao.save(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/yqljtj.jsp");
        return null;
    }
    //yqljtj.jsp请求处理结束

    //yqljxg.jsp请求处理开始
    public String yqljxg() throws Exception {
        String id = request.getParameter("id");
        YqljDAO dao = (YqljDAO) Info.getDao(request, "YqljDAO");
        Yqlj obj = (Yqlj) dao.findById(Integer.parseInt(id));
        String ljname = request.getParameter("ljname") == null ? "" : request.getParameter("ljname");
        String ljurl = request.getParameter("ljurl") == null ? "" : request.getParameter("ljurl");
        obj.setLjname(ljname);
        obj.setLjurl(ljurl);
        dao.merge(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/yqljxg.jsp?id=" + id + "");
        return null;
    }
    //yqljxg.jsp请求处理结束

    //messagesxg.jsp请求处理开始
    public String messagesxg() throws Exception {
        String id = request.getParameter("id");
        MessagesDAO dao = (MessagesDAO) Info.getDao(request, "MessagesDAO");
        Messages obj = (Messages) dao.findById(Integer.parseInt(id));
        String recontent = request.getParameter("recontent") == null ? "" : request.getParameter("recontent");
        obj.setRecontent(recontent);
        dao.merge(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/messagesxg.jsp?id=" + id + "");
        return null;
    }
    //messagesxg.jsp请求处理结束

    //sysusertj.jsp请求处理开始
    public String sysusertj() throws Exception {
        SysuserDAO dao = (SysuserDAO) Info.getDao(request, "SysuserDAO");
        Sysuser obj = new Sysuser();
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
        obj.setUname(uname);
        obj.setUpass(upass);
        obj.setTname(tname);
        obj.setSex(sex);
        obj.setQq(qq);
        obj.setEmail(email);
        obj.setAddrs(addrs);
        obj.setSavetime(savetime);
        obj.setFilename(filename);
        obj.setUtype(utype);
        dao.save(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/sysusertj.jsp");
        return null;
    }
    //sysusertj.jsp请求处理结束

    //sysuserxg.jsp请求处理开始
    public String sysuserxg() throws Exception {
        String id = request.getParameter("id");
        SysuserDAO dao = (SysuserDAO) Info.getDao(request, "SysuserDAO");
        Sysuser obj = (Sysuser) dao.findById(Integer.parseInt(id));
        String uname = request.getParameter("uname") == null ? "" : request.getParameter("uname");
        String upass = request.getParameter("upass") == null ? "" : request.getParameter("upass");
        String tname = request.getParameter("tname") == null ? "" : request.getParameter("tname");
        String sex = request.getParameter("sex") == null ? "" : request.getParameter("sex");
        String qq = request.getParameter("qq") == null ? "" : request.getParameter("qq");
        String email = request.getParameter("email") == null ? "" : request.getParameter("email");
        String addrs = request.getParameter("addrs") == null ? "" : request.getParameter("addrs");
        String filename = request.getParameter("filename") == null ? "" : request.getParameter("filename");
        obj.setUname(uname);
        obj.setUpass(upass);
        obj.setTname(tname);
        obj.setSex(sex);
        obj.setQq(qq);
        obj.setEmail(email);
        obj.setAddrs(addrs);
        obj.setFilename(filename);
        dao.merge(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/sysuserxg.jsp?id=" + id + "");
        return null;
    }
    //sysuserxg.jsp请求处理结束

    //zpinfotj.jsp请求处理开始
    public String zpinfotj() throws Exception {
        ZpinfoDAO dao = (ZpinfoDAO) Info.getDao(request, "ZpinfoDAO");
        Zpinfo obj = new Zpinfo();
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
        obj.setTitle(title);
        obj.setZprs(zprs);
        obj.setGzdd(gzdd);
        obj.setXl(xl);
        obj.setJl(jl);
        obj.setInfotype(infotype);
        obj.setBei(bei);
        obj.setDy(dy);
        obj.setSavetime(savetime);
        obj.setQyuname(qyuname);
        obj.setQytname(qytname);
        dao.save(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/zpinfotj.jsp");
        return null;
    }
    //zpinfotj.jsp请求处理结束

    //zpinfoxg.jsp请求处理开始
    public String zpinfoxg() throws Exception {
        String id = request.getParameter("id");
        ZpinfoDAO dao = (ZpinfoDAO) Info.getDao(request, "ZpinfoDAO");
        Zpinfo obj = (Zpinfo) dao.findById(Integer.parseInt(id));
        String title = request.getParameter("title") == null ? "" : request.getParameter("title");
        String zprs = request.getParameter("zprs") == null ? "" : request.getParameter("zprs");
        String gzdd = request.getParameter("gzdd") == null ? "" : request.getParameter("gzdd");
        String xl = request.getParameter("xl") == null ? "" : request.getParameter("xl");
        String jl = request.getParameter("jl") == null ? "" : request.getParameter("jl");
        String infotype = request.getParameter("infotype") == null ? "" : request.getParameter("infotype");
        String bei = request.getParameter("bei") == null ? "" : request.getParameter("bei");
        String dy = request.getParameter("dy") == null ? "" : request.getParameter("dy");
        obj.setTitle(title);
        obj.setZprs(zprs);
        obj.setGzdd(gzdd);
        obj.setXl(xl);
        obj.setJl(jl);
        obj.setInfotype(infotype);
        obj.setBei(bei);
        obj.setDy(dy);
        dao.merge(obj);
        request.getSession().setAttribute("suc", "suc");
        response.sendRedirect("/invitemsg/admin/zpinfoxg.jsp?id=" + id + "");
        return null;
    }
    //zpinfoxg.jsp请求处理结束

//--业务层代码块结束--

    String id;


    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
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

}
 

          

