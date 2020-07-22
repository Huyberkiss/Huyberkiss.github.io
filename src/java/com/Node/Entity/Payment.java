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
public class Payment {
    
    private int payId;
    private String payName;

    public Payment() {
    }

    public Payment(int payId, String payName) {
        this.payId = payId;
        this.payName = payName;
    }

    public int getPayId() {
        return payId;
    }

    public void setPayId(int payId) {
        this.payId = payId;
    }

    public String getPayName() {
        return payName;
    }

    public void setPayName(String payName) {
        this.payName = payName;
    }
    
    
    
}
