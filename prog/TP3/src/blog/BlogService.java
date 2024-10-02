package blog;

import java.util.List;

public interface BlogService {
    public String getTitle();

    public void post(Publishable item);

    public List<Publishable> getItems();

    public int getPublishableItemsCount();

    public int getTaggableItemsCount();

    public List<Publishable> findItemsByAuthor(String author);

    public Publishable getLatestItem();

    public List<Publishable> findItemsByTags(String[] tags);

    public List<Publishable> findItemsByContent(String[] words);

    public List<Publishable> findItemsByTagsOrContent(String[] tags);
}
