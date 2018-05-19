package pojo;

/**
 * Messages entity.
 *
 * @author MyEclipse Persistence Tools
 */

public class Messages implements java.io.Serializable {

    // Fields

    private Integer id;
    private String saver;
    private String savetime;
    private String content;
    private String resaver;
    private String recontent;
    private String resavetime;

    // Constructors

    /**
     * default constructor
     */
    public Messages() {
    }

    /**
     * full constructor
     */

    public Messages(Integer id, String saver, String savetime, String content,
                    String resaver, String recontent, String resavetime) {
        this.id = id;
        this.saver = saver;
        this.savetime = savetime;
        this.content = content;
        this.resaver = resaver;
        this.recontent = recontent;
        this.resavetime = resavetime;
    }

    // Property accessors

    public Integer getId() {
        return this.id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSaver() {
        return this.saver;
    }

    public void setSaver(String saver) {
        this.saver = saver;
    }

    public String getSavetime() {
        return this.savetime;
    }

    public void setSavetime(String savetime) {
        this.savetime = savetime;
    }

    public String getContent() {
        return this.content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getResaver() {
        return this.resaver;
    }

    public void setResaver(String resaver) {
        this.resaver = resaver;
    }

    public String getRecontent() {
        return this.recontent;
    }

    public void setRecontent(String recontent) {
        this.recontent = recontent;
    }

    public String getResavetime() {
        return this.resavetime;
    }

    public void setResavetime(String resavetime) {
        this.resavetime = resavetime;
    }

}