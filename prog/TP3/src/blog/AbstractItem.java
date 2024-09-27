package blog;

public abstract class AbstractItem extends AbstractPublishableItem implements Taggable {
	private List<String> tags;
	
	public AbstractItem(long publicationDate, String author) {
		AbstractPublishableItem(publicationDate, author);
		
		tags = new ArrayList<String>();
	}
}
