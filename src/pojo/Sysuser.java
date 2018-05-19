package pojo;

/**
 * Sysuser entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Sysuser implements java.io.Serializable {

    // Fields

    private Integer id;
    private String uname;
    private String upass;
    private String tname;
    private String filename;
    private String sex;
    private String qq;
    private String email;
    private String houhold;
    private String addrs;
    private String birth;
    private String wei;
    private String hei;
    private String health;
    private String tel;
    private String school;
    private String zy;
    private String xl;
    private String cbdate;
    private String grjs;
    private String grjl;
    private String xqah;
    private String gzjl;
    private String xmjy;
    private String wyll;
    private String utype;
    private String savetime;
    private String qzyx;
    private String filename2;
    private String docname3;

    // Constructors

    /**
     * default constructor
     */
    public Sysuser() {
    }

    /**
     * full constructor
     */
    public Sysuser(String uname, String upass, String tname, String filename,
                   String sex, String qq, String email, String houhold, String addrs,
                   String birth, String wei, String hei, String health, String tel,
                   String school, String zy, String xl, String cbdate, String grjs,
                   String grjl, String xqah, String gzjl, String xmjy, String wyll,
                   String utype, String savetime, String qzyx, String filename2,
                   String docname3) {
        this.uname = uname;
        this.upass = upass;
        this.tname = tname;
        this.filename = filename;
        this.sex = sex;
        this.qq = qq;
        this.email = email;
        this.houhold = houhold;
        this.addrs = addrs;
        this.birth = birth;
        this.wei = wei;
        this.hei = hei;
        this.health = health;
        this.tel = tel;
        this.school = school;
        this.zy = zy;
        this.xl = xl;
        this.cbdate = cbdate;
        this.grjs = grjs;
        this.grjl = grjl;
        this.xqah = xqah;
        this.gzjl = gzjl;
        this.xmjy = xmjy;
        this.wyll = wyll;
        this.utype = utype;
        this.savetime = savetime;
        this.qzyx = qzyx;
        this.filename2 = filename2;
        this.docname3 = docname3;
    }

    // Property accessors

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUname() {
        return this.uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return this.upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getTname() {
        return this.tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getFilename() {
        return this.filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getSex() {
        return this.sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public String getQq() {
        return this.qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getHouhold() {
        return this.houhold;
    }

    public void setHouhold(String houhold) {
        this.houhold = houhold;
    }

    public String getAddrs() {
        return this.addrs;
    }

    public void setAddrs(String addrs) {
        this.addrs = addrs;
    }

    public String getBirth() {
        return this.birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getWei() {
        return this.wei;
    }

    public void setWei(String wei) {
        this.wei = wei;
    }

    public String getHei() {
        return this.hei;
    }

    public void setHei(String hei) {
        this.hei = hei;
    }

    public String getHealth() {
        return this.health;
    }

    public void setHealth(String health) {
        this.health = health;
    }

    public String getTel() {
        return this.tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public String getSchool() {
        return this.school;
    }

    public void setSchool(String school) {
        this.school = school;
    }

    public String getZy() {
        return this.zy;
    }

    public void setZy(String zy) {
        this.zy = zy;
    }

    public String getXl() {
        return this.xl;
    }

    public void setXl(String xl) {
        this.xl = xl;
    }

    public String getCbdate() {
        return this.cbdate;
    }

    public void setCbdate(String cbdate) {
        this.cbdate = cbdate;
    }

    public String getGrjs() {
        return this.grjs;
    }

    public void setGrjs(String grjs) {
        this.grjs = grjs;
    }

    public String getGrjl() {
        return this.grjl;
    }

    public void setGrjl(String grjl) {
        this.grjl = grjl;
    }

    public String getXqah() {
        return this.xqah;
    }

    public void setXqah(String xqah) {
        this.xqah = xqah;
    }

    public String getGzjl() {
        return this.gzjl;
    }

    public void setGzjl(String gzjl) {
        this.gzjl = gzjl;
    }

    public String getXmjy() {
        return this.xmjy;
    }

    public void setXmjy(String xmjy) {
        this.xmjy = xmjy;
    }

    public String getWyll() {
        return this.wyll;
    }

    public void setWyll(String wyll) {
        this.wyll = wyll;
    }

    public String getUtype() {
        return this.utype;
    }

    public void setUtype(String utype) {
        this.utype = utype;
    }

    public String getSavetime() {
        return this.savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime;
    }

    public String getQzyx() {
        return this.qzyx;
    }

    public void setQzyx(String qzyx) {
        this.qzyx = qzyx;
    }

    public String getFilename2() {
        return this.filename2;
    }

    public void setFilename2(String filename2) {
        this.filename2 = filename2;
    }

    public String getDocname3() {
        return this.docname3;
    }

    public void setDocname3(String docname3) {
        this.docname3 = docname3;
    }

}