/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.Entity;

import java.sql.Date;

/**
 *
 * @author Admin
 */
public class BillDetail {

    private int bdId;
    private int bId;
    private int pId;
    private int cId;
    private float price;
    private int quantity;
    private Date orderDate;

    public BillDetail(int bdId, int bId, int pId, int cId, float price, int quantity, Date orderDate) {
        this.bdId = bdId;
        this.bId = bId;
        this.pId = pId;
        this.cId = cId;
        this.price = price;
        this.quantity = quantity;
        this.orderDate = orderDate;
    }

    public BillDetail() {
    }

    public int getBdId() {
        return bdId;
    }

    public void setBdId(int bdId) {
        this.bdId = bdId;
    }

    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }
}
