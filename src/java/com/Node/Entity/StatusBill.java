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
public class StatusBill {
    
    
    private int sbId;
    private String sbName;

    public StatusBill() {
    }

    public StatusBill(int sbId, String sbName) {
        this.sbId = sbId;
        this.sbName = sbName;
    }

    public int getSbId() {
        return sbId;
    }

    public void setSbId(int sbId) {
        this.sbId = sbId;
    }

    public String getSbName() {
        return sbName;
    }

    public void setSbName(String sbName) {
        this.sbName = sbName;
    }
    
    
}
