package blog;

public interface Publishable {
	public long getPublicationDate() {
		return this.AbstractPublishableItem.getpublicationDate();
	}
	
	public String getAuthor() {
		return this.AbstractPublishedItem.getAuthor();
	}
}
