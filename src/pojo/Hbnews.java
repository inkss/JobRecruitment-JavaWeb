package pojo;

/**
 * Hbnews entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Hbnews implements java.io.Serializable {

    // Fields

    private Integer id;
    private String title;
    private String author;
    private String filename;
    private String content;
    private String savetime;
    private String infotype;

    // Constructors

    /**
     * default constructor
     */
    public Hbnews() {
    }

    /**
     * full constructor
     */
    public Hbnews(String title, String author, String filename, String content,
                  String savetime, String infotype) {
        this.title = title;
        this.author = author;
        this.filename = filename;
        this.content = content;
        this.savetime = savetime;
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

    public String getAuthor() {
        return this.author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getFilename() {
        return this.filename;
    }

    public void setFilename(String filename) {
        this.filename = filename;
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

    public String getInfotype() {
        return this.infotype;
    }

    public void setInfotype(String infotype) {
        this.infotype = infotype;
    }

}