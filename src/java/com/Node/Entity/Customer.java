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
public class Customer {

    private int cId;
    private String cName;
    private String user;
    private String password;
    private Date cDob;
    private String cAddress;
    private String cPhone;
    private String cEmail;
    private int cGender;
    private String cDescription;
    private int cStatus;

    public Customer() {
    }

    public Customer(int cId, String cName, String user, String password, Date cDob, String cAddress, String cPhone, String cEmail, int cGender, String cDescription, int cStatus) {
        this.cId = cId;
        this.cName = cName;
        this.user = user;
        this.password = password;
        this.cDob = cDob;
        this.cAddress = cAddress;
        this.cPhone = cPhone;
        this.cEmail = cEmail;
        this.cGender = cGender;
        this.cDescription = cDescription;
        this.cStatus = cStatus;
    }

    public void setcId(int cId) {
        this.cId = cId;
    }

    public void setcName(String cName) {
        this.cName = cName;
    }

    public void setUser(String user) {
        this.user = user;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setcDob(Date cDob) {
        this.cDob = cDob;
    }

    public void setcAddress(String cAddress) {
        this.cAddress = cAddress;
    }

    public void setcPhone(String cPhone) {
        this.cPhone = cPhone;
    }

    public void setcEmail(String cEmail) {
        this.cEmail = cEmail;
    }

    public void setcGender(int cGender) {
        this.cGender = cGender;
    }

    public void setcDescription(String cDescription) {
        this.cDescription = cDescription;
    }

    public void setcStatus(int cStatus) {
        this.cStatus = cStatus;
    }

    public int getcId() {
        return cId;
    }

    public String getcName() {
        return cName;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }

    public Date getcDob() {
        return cDob;
    }

    public String getcAddress() {
        return cAddress;
    }

    public String getcPhone() {
        return cPhone;
    }

    public String getcEmail() {
        return cEmail;
    }

    public int getcGender() {
        return cGender;
    }

    public String getcDescription() {
        return cDescription;
    }

    public int getcStatus() {
        return cStatus;
    }

}
