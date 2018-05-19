package pojo;

/**
 * Mixinfo entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Mixinfo implements java.io.Serializable {

    // Fields

    private Integer id;
    private String title;
    private String content;
    private String infotype;

    // Constructors

    /**
     * default constructor
     */
    public Mixinfo() {
    }

    /**
     * full constructor
     */
    public Mixinfo(String title, String content, String infotype) {
        this.title = title;
        this.content = content;
        this.infotype = infotype;
    }

    // Property accessors

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getInfotype() {
        return this.infotype;
    }

    public void setInfotype(String infotype) {
        this.infotype = infotype;
    }

}