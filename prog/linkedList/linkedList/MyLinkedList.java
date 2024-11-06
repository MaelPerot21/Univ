package linkedList;

public class MyLinkedList<T> extends Node<T> implements Ilist<T> {
    private int size;
    private Node<T> head;

    public MyLinkedList() {
        size = 0;
        head = null;
    }

    public MyLinkedList(T value) {
        size = 1;
        head = new Node<T>(value);
    }

    public void add(T elem) {
        add(elem, size);
    }

    public boolean add(T elem, int index) {
        if ((index > size) || (index < 0))
            return false;

        Node<T> newNode = new Node<T>(elem);
        if (size == 0)
            head = newNode;
        
        else
        {
            Node<T> previous = head;
            for (int i = 0; i < index - 1; i++)
                previous = previous.getNext();
            
            newNode.setNext(previous.getNext());
            previous.setNext(newNode);
            
        }

        size++;
        return true;
    }

    public void clear() {
        Node<T> toDelete = head;
        head.clear();
        head = null;
        size = 0;

    }

    public boolean contains(T elem) {
        for ()
    }
}
