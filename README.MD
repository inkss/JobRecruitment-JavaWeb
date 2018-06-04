# 求职招聘管理系统 

> 某毕设

---

本项目从 Eclipse 转制而来，原 JDK 似乎使用了 JDK1.6 。

本机使用的是 1.8 ，IDEA 似乎将一部分 jar 文件单独下载了（下载目录位于 ~/lib 中）

---

### 附录

* 有关编码：在 Win7 虚拟机上出现了数据库编码（非 utf-8）问题。此处予以记录。

* 有关演示：

  * 项目编译出的文件已经一并上传。
  
  * 使用 SQLFILE.sql 创建相应数据库。
  
  * 复制 invitemsg（位于 ~/out/artifacts/invitemsg） 目录 到 Tomcat 的 webapps 目录中。
  
  * 启动服务器，访问：http://http://localhost:8080/invitemsg