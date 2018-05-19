package pojo;

/**
 * Zdatadic entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Zdatadic implements java.io.Serializable {

    // Fields

    private Integer id;
    private String datatype;
    private String ptitle;
    private String content;
    private String savetime;

    // Constructors

    /**
     * default constructor
     */
    public Zdatadic() {
    }

    /**
     * full constructor
     */
    public Zdatadic(String datatype, String ptitle, String content,
                    String savetime) {
        this.datatype = datatype;
        this.ptitle = ptitle;
        this.content = content;
        this.savetime = savetime;
    }

    // Property accessors

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getDatatype() {
        return this.datatype;
    }

    public void setDatatype(String datatype) {
        this.datatype = datatype;
    }

    public String getPtitle() {
        return this.ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getSavetime() {
        return this.savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime;
    }

}