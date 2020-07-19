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
public class IMG {
    
    private String ID;
    private int pID;
    private String url;

    public IMG() {
    }

    public IMG(String ID, int pID, String url) {
        this.ID = ID;
        this.pID = pID;
        this.url = url;
    }

    public String getID() {
        return ID;
    }

    public void setID(String ID) {
        this.ID = ID;
    }

    public int getpID() {
        return pID;
    }

    public void setpID(int pID) {
        this.pID = pID;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }
    
    
    
}
