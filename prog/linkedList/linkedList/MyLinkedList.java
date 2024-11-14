package linkedList;

import java.util.Iterator;

public class MyLinkedList<T> implements Ilist<T> {
    private int size;
    private Node<T> head;
    public Node<T> getHead() {
        return head;
    }

    public MyLinkedList() {
        size = 0;
        head = null;
    }

    public MyLinkedList(T value) {
        size = 1;
        head = new Node<T>(value);
    }

    public void add(T elem) {
        try {
            add(elem, size);
        } catch (Exception e) {
            // will never happen
            e.printStackTrace();
        }
    }

    public boolean add(T elem, int index) throws Exception {
        if ((index > size) || (index < 0))
            throw new Exception("IndexOutOfBoundsException");


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
        head.clear();
        head = null;
        size = 0;
    }

    public boolean contains(T elem) {
        Node<T> toTest = head;
        for (int i = 0; i < size; i++) {
            if (toTest.getValue() == elem)
                return true;
        }

        return false;
    }

    public T get(int index) throws Exception {
        if ((index >= size) || (index < 0))
            throw new Exception("IndexOutOfBoundsException");

        Node<T> elem = head;
        for (int i = 0; i < index; i++) {
            elem = elem.getNext();
        }

        return elem.getValue();
    }

    @SuppressWarnings("unchecked")
    public boolean equals(Object other) {
        if (other == null)
            return false;

        // we know other is an instance of MyLinkedList during the cast because java is lazy with the &&
        if ((other == this) && (other.getClass() == this.getClass()) && 
            (((MyLinkedList<T>) other).getHead().getClass() == this.getHead().getClass()))
            return true;

        return false;
    }

    public int indexOf(T elem) {
        Node<T> toTest = head;
        for (int i = 0; i < size; i++) {
            if (toTest.getValue() == elem)
                return i;
        }

        return -1;
    }

    public boolean isEmpty() {
        if (size == 0)
            return true;
        return false;
    }

    private class MyLinkedListIterator implements Iterator<T>{
        private Node<T> current;

        public MyLinkedListIterator() {
            current = head;
        }

        public boolean hasNext() {
            if (current != null)
                if (current.getNext() != null)
                    return true;
            return false;
        }

        public T next() {
            return current.getNext().getValue();
        }
    }

    public Iterator<T> Iterator() {
        return new MyLinkedListIterator();
    }

    public T remove(int index) throws Exception {
        if ((index >= size) || (index < 0))
            throw new Exception("IndexOutOfBoundsException");
        
        Node<T> elem = getHead();
        if (index == 0) {
            head = head.getNext();
            return elem.getValue();
        }

        for (int i = 0; i < index - 1; i++) {
            elem = elem.getNext();
        }
        T toReturn = elem.getNext().getValue();
        elem.setNext(elem.getNext().getNext());

        size--;
        return toReturn;
    }

    public T set(T elem, int index) throws Exception {
        if ((index >= size) || (index < 0))
            throw new Exception("IndexOutOfBoundsException");

        
    }

    @Override
    public int size() {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'size'");
    }
}
