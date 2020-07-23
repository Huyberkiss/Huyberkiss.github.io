/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.DAO;

import com.Node.Entity.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class CustomerDAO {

    private final Connection conn;

    public CustomerDAO() {
        this.conn = new DBConnection().getConnection();
    }

    public int insertCustomer(Customer c) {

        try {
            String sql = "INSERT INTO `customer`(`cName`, `cUser`, `cPass`, `cDob`, `cAddress`, `cPhone`, `cEmail`, `cGender`, `cDescription`, `cStatus`) VALUES (? , ? , MD5(?) , ? , ? , ? , ? , ? , ? , ?)";
            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setString(1, c.getcName());
            pst.setString(2, c.getUser());
            pst.setString(3, c.getPassword());
            pst.setDate(4, (java.sql.Date) c.getcDob());
            pst.setString(5, c.getcAddress());
            pst.setString(6, c.getcPhone());
            pst.setString(7, c.getcEmail());
            pst.setInt(8, c.getcGender());
            pst.setString(9, c.getcDescription());
            pst.setInt(10, c.getcStatus());

            return pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }

    public int changePassword(String user, String newPass) {
        try {
            String sql = "UPDATE `customer` SET `cPass` = MD5(?) WHERE `cUser` = ?";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, newPass);
            pst.setString(2, user);

            pst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return -1;

    }

    public int login(String user, String pass) {

        try {
            String sql = "SELECT * FROM `customer` WHERE `cUser`= ? AND `cPass` = MD5(?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, user);
            pst.setString(2, pass);

            ResultSet rs = pst.executeQuery();
            int cId = 0;
            if (rs.next()) {
                return rs.getInt("cId");

            }

        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return -1;
    }

    public int updateCustomer(Customer c) {

        try {
            String sql = "UPDATE `customer` SET `cName`= ?,`cDob`= ? ,`cAddress`= ?,`cPhone`= ? ,`cEmail`= ?,`cGender`= ? ,`cDescription`= ? WHERE `cId` = ?";

            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setString(1, c.getcName());
            pst.setDate(2, (java.sql.Date) c.getcDob());
            pst.setString(3, c.getcAddress());
            pst.setString(4, c.getcPhone());
            pst.setString(5, c.getcEmail());
            pst.setInt(6, c.getcGender());
            pst.setString(7, c.getcDescription());
            pst.setInt(8, c.getcId());

            return pst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }

    public Customer getCustomer(int cId) {

        try {
            String sql = "SELECT * FROM `customer` WHERE `cId`= ?";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, cId);
            ResultSet rs = pst.executeQuery();

            if (rs.next()) {
                return new Customer(rs.getInt("cId"), rs.getString("cName"), rs.getString("cUser"), rs.getString("cPass"),
                        rs.getDate("cDob"), rs.getString("cAddress"), rs.getString("cPhone"), rs.getString("cEmail"),
                        rs.getInt("cGender"), rs.getString("cDescription"), rs.getInt("cStatus"));

            }

        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

}
