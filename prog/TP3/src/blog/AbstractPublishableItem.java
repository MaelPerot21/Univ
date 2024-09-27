package blog;

public abstract class AbstractPublishableItem implements Publishable {
	private long publicationDate;
	private String author;
	
	public AbstractPublishableItem(long publicationDate, String author) {
		this.publicationDate = publicationDate;
		this.author = author;
	}
	
	public long getPublicationDate() {
		return publicationDate;
	}
	
	public String getAuthor() {
		return author;
	}
}
