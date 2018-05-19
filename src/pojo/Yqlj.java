package pojo;

/**
 * Yqlj entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Yqlj implements java.io.Serializable {

    // Fields

    private Integer id;
    private String ljname;
    private String ljurl;

    // Constructors

    /**
     * default constructor
     */
    public Yqlj() {
    }

    /**
     * full constructor
     */
    public Yqlj(String ljname, String ljurl) {
        this.ljname = ljname;
        this.ljurl = ljurl;
    }

    // Property accessors

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLjname() {
        return this.ljname;
    }

    public void setLjname(String ljname) {
        this.ljname = ljname;
    }

    public String getLjurl() {
        return this.ljurl;
    }

    public void setLjurl(String ljurl) {
        this.ljurl = ljurl;
    }

}