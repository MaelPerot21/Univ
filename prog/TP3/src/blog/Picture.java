package blog;

public class Picture extends AbstractItem {
    private String url;

    public Picture(long publicationDate, String author, String url) {
        super(publicationDate, author);

        this.url = url;
    }

    public String getURL() {
        return url;
    }
}
