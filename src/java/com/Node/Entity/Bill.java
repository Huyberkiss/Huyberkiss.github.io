/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.Entity;

/**
 *
 * @author Admin
 */
public class Bill {

    private int bId;
    private int cId;
    private int pId;
    private String address;
    private String phone;
    private float productPrice;
    private int quantity;
    private int vId;
    private int payId;
    private int sbId;

    public Bill(int bId, int cId, int pId, String address, String phone, float productPrice, int quantity, int vId, int payId, int sbId) {
        this.bId = bId;
        this.cId = cId;
        this.pId = pId;
        this.address = address;
        this.phone = phone;
        this.productPrice = productPrice;
        this.quantity = quantity;
        this.vId = vId;
        this.payId = payId;
        this.sbId = sbId;
    }

    public Bill() {
    }
    
    

    public int getbId() {
        return bId;
    }

    public void setbId(int bId) {
        this.bId = bId;
    }

    public int getcId() {
        return cId;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public int getpId() {
        return pId;
    }

    public void setpId(int pId) {
        this.pId = pId;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public float getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(float productPrice) {
        this.productPrice = productPrice;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getvId() {
        return vId;
    }

    public void setvId(int vId) {
        this.vId = vId;
    }

    public int getPayId() {
        return payId;
    }

    public void setPayId(int payId) {
        this.payId = payId;
    }

    public int getSbId() {
        return sbId;
    }

    public void setSbId(int sbId) {
        this.sbId = sbId;
    }

}
