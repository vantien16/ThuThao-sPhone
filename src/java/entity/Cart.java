/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 *
 * @author ADMIN
 */
public class Cart {

    List<Product> cart;

    public Cart() {
    }

    public Cart(List<Product> cart) {
        this.cart = cart;
    }

    public void add(Product phone) {
        if (this.cart == null) {
            this.cart = new ArrayList<>();
            if (containsKey(this.cart, phone.id)) {
                int cur = this.cart.get(find(phone.id)).quantity;
                phone.setQuantity(cur + phone.getQuantity());
            }
            update(phone.getId(), phone);
        }

    }

    public void remove(String id) {
        if (this.cart != null) {
            if (containsKey(cart, id)) {
                this.cart.remove(find(id));
            }
//            if (this.cart.containsKey(id)) {
//                this.cart.remove(id);
//
//            }
        }
    }

    public void update(String id, Product phone) {
        for (Object a : cart) {
            Product b = (Product) a;
            if (b.id.equals(id)) {
                a = phone;
            }
        }
    }

    public int find(String id) {
        for (Object a : cart) {
            Product b = (Product) a;
            if (b.id.equals(id)) {
                return cart.indexOf(b);
            }
        }
        return -1;
    }

    public boolean containsKey(List cart, String id) {
        for (Object a : cart) {
            Product b = (Product) a;
            if (b.id.equals(id)) {
                return true;
            }

        }
        return false;
    }

//    public void add(Product phone) {
//        if (this.cart == null) {
//            this.cart = new HashMap<>();
//        }
//        if (this.cart.containsKey(phone.getId())) {
//            int currentquantity = this.cart.get((phone.getId())).getQuantity();
//            phone.setQuantity(currentquantity + phone.getQuantity());
//        }
//        this.cart.put(phone.getId(), phone);
//
//    }
//    public void remove(String id) {
//        if (this.cart != null) {
//            if (this.cart.containsKey(id)) {
//                this.cart.remove(id);
//
//            }
//        }
//    }
    public void clear() {
        cart.clear();
    }
}
