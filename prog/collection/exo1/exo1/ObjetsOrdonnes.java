package exo1;

import java.util.TreeSet;

public class ObjetsOrdonnes {
    public static void main(String[] args) {
        TreeSet<Integer> tree_int = new TreeSet<Integer>();
        for(int i = 0; i < 5; i++) {
            tree_int.add((int) (Math.random() * 10));
        }
        System.out.println(tree_int.toString());

        TreeSet<String> tree_str = new TreeSet<String>();
        tree_str.add("test");
        tree_str.add("tes");
        tree_str.add("no");
        tree_str.add("ha ha");
        tree_str.add("ye");
        System.out.println(tree_str.toString());

        TreeSet<BankAccount> tree_bnk = new TreeSet<BankAccount>();
        tree_bnk.add(new BankAccount(10));
        tree_bnk.add(new BankAccount(20));
        tree_bnk.add(new BankAccount(50));
        tree_bnk.add(new BankAccount(100));
        tree_bnk.add(new BankAccount(1000));
        for (BankAccount element : tree_bnk) {
            System.out.println(element.toString());
        }
        
    }
}
