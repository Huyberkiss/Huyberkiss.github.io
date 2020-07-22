/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.DAO;

import com.Node.Entity.BillDetail;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class BillDetailDAO {

    private Connection conn;

    private ArrayList<BillDetail> listBillDetail;

    public BillDetailDAO() {

        conn = new DBConnection().getConnection();
        listBillDetail = new ArrayList<>();
    }

    public int insertBill(BillDetail bd) {
        try {
            String sql = "INSERT INTO `billdetail`(`bId`, `pId`,`cId`, `price`, `quantity`, `orderDate`) VALUES (? , ? , ?  , ? ,  ? ,  ? )";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, bd.getbId());
            pst.setInt(2, bd.getpId());
            pst.setInt(3, bd.getcId());
            pst.setFloat(4, bd.getPrice());
            pst.setInt(5, bd.getQuantity());
            pst.setDate(6, Date.valueOf(LocalDate.now()));

            return pst.executeUpdate();

        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }
    
    public ArrayList<BillDetail> listBillDetailByIdBill(int cId){
        try {
            String sql = "SELECT * FROM `billdetail` WHERE `cId` = ?";
            
            PreparedStatement pst = conn.prepareStatement(sql);
            
            pst.setInt(1, cId);
            
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                listBillDetail.add(new BillDetail(rs.getInt("bdId"), rs.getInt("bId"),rs.getInt("pId"),rs.getInt("cId"),
                        rs.getFloat("price"),rs.getInt("quantity"),(java.sql.Date)rs.getDate("orderDate")));
            }
            
            return listBillDetail;
            
        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null ;
    }

}
