package blog;

public interface Taggable {
	public void addTag(String tag) {
		this.AbstractItem.addTag(tag);
	}
	
	public void removeTag(String tag) {
		this.AbstractItem.removeTag(tag);
	}
	
	public int tagCount() {
		return this.AbstractItem(tagCount);
	}
	
	public String[] getTags() {
		return this.AbstractItem.getTags();
	}
 }
