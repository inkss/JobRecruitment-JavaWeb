package pojo;

/**
 * Emp entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Emp implements java.io.Serializable {

    // Fields

    private Integer id;
    private String uname;
    private String tname;
    private String title;
    private String savetime;

    // Constructors

    /**
     * default constructor
     */
    public Emp() {
    }

    /**
     * full constructor
     */
    public Emp(String uname, String tname, String title, String savetime) {
        this.uname = uname;
        this.tname = tname;
        this.title = title;
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

    public String getTname() {
        return this.tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSavetime() {
        return this.savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime;
    }

}