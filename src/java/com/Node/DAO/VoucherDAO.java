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
public class VoucherDAO {
    
    private Connection conn;

    public VoucherDAO() {
    
        conn = new DBConnection().getConnection();
    
    }
    
    public int getVoucher(String voucher){
        
        try {
            String sql = "SELECT  `type`  FROM `voucher` WHERE `description` = ?";
            
            PreparedStatement pst = conn.prepareStatement(sql);
            
            pst.setString(1, voucher);
            
            ResultSet rs = pst.executeQuery();
            
            if(rs.first()){
                return rs.getInt("type");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(VoucherDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return 0;
        
    }
    
    
    
}
