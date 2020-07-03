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
            String sql = "INSERT INTO `customer`"
                    + "(`cName`, `cUser`, `cPass`, `cDob`, `cAdrress`, `cPhone`, `cEmail`, `cGender`, `cDescription`, `cStatus`)"
                    + " VALUES (? , ? , MD5(?) , ? , ? , ? , ? , ? , ? , ?)";

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
    
    public int login(String user , String pass){
        
        try {
            String sql = "SELECT * FROM `customer` WHERE `cUser`= ? AND `cPass` = MD5(?)";
            
            PreparedStatement pst = conn.prepareStatement(sql);
            
            pst.setString(1, user);
            pst.setString(2, pass);
            
            ResultSet rs = pst.executeQuery();
            
            String cUser = "";
            String cPass = "";
            int cId = 0;
            
            if(rs.next()){
              cUser = rs.getString("cUser");
              cPass = rs.getString("cPass");
              cId = rs.getInt("cId");
            }
            
            if(cUser.equals(user) && cPass.equals(pass)){
                return cId;
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(CustomerDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return -1;
    }

}
