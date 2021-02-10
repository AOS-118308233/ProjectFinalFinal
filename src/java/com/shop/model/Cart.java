/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.shop.model;

import java.io.Serializable;
import java.util.ArrayList;

/**
 *
 * @author aoife
 */
public class Cart implements Serializable {
    
    private final ArrayList<LineItem> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public int getCount() {
        return items.size();
    }

    public void addItem(LineItem item) {
        
        String productCode = item.getProduct().getProductCode();
        int quantity = item.getQuantity();
        
        for (int i = 0; i <items.size(); i ++) {
            LineItem lineItem = items.get(i);
            
            if (lineItem.getProduct().getProductCode().equals(productCode)) {
                lineItem.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }
    
    public void removeItem(LineItem item) {
        String code = item.getProduct().getProductCode();
        
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            
            if (lineItem.getProduct().getProductCode().equals(code)) {
                items.remove(i);
                return;
            }
        }
    }
}
    
