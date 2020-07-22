/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.DAO;

import com.Node.Entity.Bill;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Admin
 */
public class BillDAO {

    private Connection conn;
    private ArrayList<Bill> listBill;

    public BillDAO() {

        conn = new DBConnection().getConnection();
        listBill = new ArrayList<>();

    }

    public int getMaxIdBill() {
        try {
            String sql = "SELECT max(`bId`) AS `billId` FROM `bill`";

            PreparedStatement pst = conn.prepareStatement(sql);

            ResultSet rs = pst.executeQuery();

            if (rs.first()) {
                return rs.getInt("billId");
            }

        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }

    public ArrayList<Bill> listBillByIdCustomer(int id) {
        try {
            String sql = "SELECT * FROM `bill` WHERE `cId` = ?";

            PreparedStatement pst = conn.prepareStatement(sql);

            pst.setInt(1, id);

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                listBill.add(new Bill(rs.getInt("bId"), rs.getInt("cId"), rs.getInt("pId"), rs.getString("address"), rs.getString("phone"),
                        rs.getFloat("productPrice"), rs.getInt("quantity"), rs.getInt("vId"), rs.getInt("payId"), rs.getInt("sbID")));
            }

            return listBill;

        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public int insertBill(Bill b) {
        try {
            String sql = "INSERT INTO `bill`(`cId`, `pId`, `address`, `phone`, `productPrice`, `quantity`, `vId`, `payId`, `sbID`) VALUES "
                    + "(? , ? , ? , ? , ? ,? ,? ,? ,?)";

            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, b.getcId());
            pst.setInt(2, b.getpId());
            pst.setString(3, b.getAddress());
            pst.setString(4, b.getPhone());
            pst.setFloat(5, b.getProductPrice());
            pst.setInt(6, b.getQuantity());
            pst.setInt(7, b.getvId());
            pst.setInt(8, b.getPayId());
            pst.setInt(9, b.getSbId());

            return pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(BillDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return 0;
    }

}
