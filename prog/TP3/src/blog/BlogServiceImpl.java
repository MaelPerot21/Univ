package blog;

import java.util.ArrayList;
import java.util.List;

public class BlogServiceImpl implements BlogService {
    private String title;
    private List<Publishable> items;

    public BlogServiceImpl(String title) {
        this.title = title;
        items = new ArrayList<Publishable>();
    }

    public String getTitle() {
        return title;
    }

    public void post(Publishable item) {
        items.add(item);
    }

    public List<Publishable> getItems() {
        return items;
    }

    public int getPublishableItemsCount() {
        return items.size();
    }

    public int getTaggableItemsCount() {
        int res = 0;

        for (int i = 0; i < getPublishableItemsCount(); i++) {
            if (items.get(i) instanceof Taggable)
                res++;
        }

        return res;
    }

    public List<Publishable> findItemsByAuthor(String author) {
        List<Publishable> fromAuthor = new ArrayList<Publishable>();

        for (int i = 0; i < getPublishableItemsCount(); i++) {
            if (items.get(i).getAuthor().equals(author))
                fromAuthor.add(items.get(i));
        }

        return fromAuthor;
    }

    public Publishable getLatestItem() {
        int ind = -1;
        Publishable latest = null;

        for (int i = 0; i < getPublishableItemsCount(); i++) {
            if ((ind == -1) || 
                (items.get(i).getPublicationDate() > latest.getPublicationDate()))
                latest = items.get(i);
        }

        return latest;
    }

    public List<Publishable> findItemsByTags(String[] tags) {
        List<Publishable> fromTags = new ArrayList<Publishable>();

        for (int i = 0; i < getPublishableItemsCount(); i++) {
            if (items.get(i) instanceof Taggable) {
                Taggable item = (Taggable) items.get(i);
                
                for (int tag = 0; tag < item.tagCount(); tag++) {
                    if (tags.contains(item.getTags().get(tag)))
                        fromTags.add((Publishable) item);
                }
            }
        }

        return fromTags;
    }

    public List<Publishable> findItemsByContent(String[] words) {

    }

    public List<Publishable> findItemsByTagsOrContent(String[] tags);
    
}
