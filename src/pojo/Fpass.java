package pojo;

/**
 * Fpass entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Fpass implements java.io.Serializable {

    // Fields

    private Integer id;
    private String uname;
    private String sinfo;
    private String fpass;
    private String email;
    private String savetime;

    // Constructors

    /**
     * default constructor
     */
    public Fpass() {
    }

    /**
     * full constructor
     */
    public Fpass(String uname, String sinfo, String fpass, String email,
                 String savetime) {
        this.uname = uname;
        this.sinfo = sinfo;
        this.fpass = fpass;
        this.email = email;
        this.savetime = savetime;
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

    public String getSinfo() {
        return this.sinfo;
    }

    public void setSinfo(String sinfo) {
        this.sinfo = sinfo;
    }

    public String getFpass() {
        return this.fpass;
    }

    public void setFpass(String fpass) {
        this.fpass = fpass;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSavetime() {
        return this.savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime;
    }

}