package pojo;

/**
 * Zpinfo entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Zpinfo implements java.io.Serializable {

    // Fields

    private Integer id;
    private String qyuname;
    private String title;
    private String zprs;
    private String gzdd;
    private String xl;
    private String jl;
    private String infotype;
    private String bei;
    private String dy;
    private String savetime;
    private String qytname;

    // Constructors

    /**
     * default constructor
     */
    public Zpinfo() {
    }

    /**
     * full constructor
     */
    public Zpinfo(String qyuname, String title, String zprs, String gzdd,
                  String xl, String jl, String infotype, String bei, String dy,
                  String savetime, String qytname) {
        this.qyuname = qyuname;
        this.title = title;
        this.zprs = zprs;
        this.gzdd = gzdd;
        this.xl = xl;
        this.jl = jl;
        this.infotype = infotype;
        this.bei = bei;
        this.dy = dy;
        this.savetime = savetime;
        this.qytname = qytname;
    }

    // Property accessors

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getQyuname() {
        return this.qyuname;
    }

    public void setQyuname(String qyuname) {
        this.qyuname = qyuname;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getZprs() {
        return this.zprs;
    }

    public void setZprs(String zprs) {
        this.zprs = zprs;
    }

    public String getGzdd() {
        return this.gzdd;
    }

    public void setGzdd(String gzdd) {
        this.gzdd = gzdd;
    }

    public String getXl() {
        return this.xl;
    }

    public void setXl(String xl) {
        this.xl = xl;
    }

    public String getJl() {
        return this.jl;
    }

    public void setJl(String jl) {
        this.jl = jl;
    }

    public String getInfotype() {
        return this.infotype;
    }

    public void setInfotype(String infotype) {
        this.infotype = infotype;
    }

    public String getBei() {
        return this.bei;
    }

    public void setBei(String bei) {
        this.bei = bei;
    }

    public String getDy() {
        return this.dy;
    }

    public void setDy(String dy) {
        this.dy = dy;
    }

    public String getSavetime() {
        return this.savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime;
    }

    public String getQytname() {
        return this.qytname;
    }

    public void setQytname(String qytname) {
        this.qytname = qytname;
    }

}