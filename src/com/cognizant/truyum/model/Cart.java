package com.cognizant.truyum.model;

import com.cognizant.truyum.model.MenuItem;

import java.util.ArrayList;
import java.util.List;

public class Cart {
    private List<MenuItem> menuItemList;
    private double total;

    public Cart() {
        // TODO Auto-generated constructor stub
    }

    public Cart(List<MenuItem> menuItemList, double total) {
        super();
        this.menuItemList = menuItemList;
        this.total = total;
    }

    public List<com.cognizant.truyum.model.MenuItem> getMenuItemList() {
        return menuItemList;
    }

    public void setMenuItemList(ArrayList<com.cognizant.truyum.model.MenuItem> listMenu) {
        this.menuItemList = listMenu;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "Cart [menuItemList=" + menuItemList + ", total=" + total + "]";
    }

}
