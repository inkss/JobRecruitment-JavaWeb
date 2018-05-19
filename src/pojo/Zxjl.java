package pojo;

/**
 * Zxjl entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Zxjl implements java.io.Serializable {

    // Fields

    private Integer id;
    private String uname;
    private String touname;
    private String tcontent;
    private String savetime;
    private String pid;

    // Constructors

    /**
     * default constructor
     */
    public Zxjl() {
    }

    /**
     * full constructor
     */
    public Zxjl(String uname, String touname, String tcontent, String savetime,
                String pid) {
        this.uname = uname;
        this.touname = touname;
        this.tcontent = tcontent;
        this.savetime = savetime;
        this.pid = pid;
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

    public String getTouname() {
        return this.touname;
    }

    public void setTouname(String touname) {
        this.touname = touname;
    }

    public String getTcontent() {
        return this.tcontent;
    }

    public void setTcontent(String tcontent) {
        this.tcontent = tcontent;
    }

    public String getSavetime() {
        return this.savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime;
    }

    public String getPid() {
        return this.pid;
    }

    public void setPid(String pid) {
        this.pid = pid;
    }

}