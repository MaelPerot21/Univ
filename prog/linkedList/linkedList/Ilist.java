package linkedList;

import java.util.Iterator;

public interface Ilist<T> extends Iterable<T>{
    public void add(T elem);
    public boolean add(T elem, int index) throws Exception;
    public void clear();
    public boolean contains(T elem);
    public boolean equals(Object other);
    public T get(int index) throws Exception;
    public int indexOf(T elem);
    public boolean isEmpty();
    public Iterator<T> Iterator();
    public T remove(int index) throws Exception;
    public T set(T elem, int index);
    public int size();
}
