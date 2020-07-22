/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.DAO;

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
public class PaymentDAO {

    private Connection conn;

    public PaymentDAO() {
        
        conn = new DBConnection().getConnection();
    }

    public String getStatusBillById(int id) {

        try {
            String sql = "SELECT * FROM `payment` WHERE `payID` = ?";

            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setInt(1, id);
            
            ResultSet rs = pst.executeQuery();

            if (rs.first()) {
                return rs.getString("payName");
            }
        } catch (SQLException ex) {
            Logger.getLogger(StatusBillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return "";
    }

}
