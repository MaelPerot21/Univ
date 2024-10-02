package blog;

import java.util.ArrayList;
import java.util.List;

public abstract class AbstractItem extends AbstractPublishableItem implements Taggable {
	private List<String> tags;
	
	public AbstractItem(long publicationDate, String author) {
		super(publicationDate, author);
		
		tags = new ArrayList<String>();
	}

	public void addTag(String tag) {
		if (!tags.contains(tag) && (tag != null))
			tags.add(tag);
	}

	public void removeTag(String tag) {
		tags.remove(tag);
	}

	public int tagCount() {
		return tags.size();
	}

	public List<String> getTags() {
		return tags;
	}
}
