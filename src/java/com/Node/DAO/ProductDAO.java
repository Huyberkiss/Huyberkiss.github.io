/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.DAO;

import com.Node.Entity.Product;
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
public class ProductDAO {

    private Connection conn;

    private ArrayList<Product> listProduct;

    public ProductDAO() {

        conn = new DBConnection().getConnection();
        listProduct = new ArrayList<>();
    }

    public ArrayList<Product> getAll() {

        try {
            String sql = "SELECT * FROM `product` WHERE 1";

            PreparedStatement pst = conn.prepareStatement(sql);

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                listProduct.add(new Product(rs.getInt("pId"), rs.getString("pName"), rs.getFloat("pSalePrice"),
                        rs.getString("pBrand"), rs.getString("pType"), rs.getString("pCategoryId"), rs.getString("pQuantity"),
                        rs.getString("color"), rs.getString("length"), rs.getString("pDescription"), rs.getInt("pStatusId"), rs.getString("pImageID")));
            }

            return listProduct;

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    
    public ArrayList<Product> sortProductAlphaBet(String msg) {

        try {
            String sql = "SELECT * FROM `product` ORDER BY `product`.`pName` "+msg;

            PreparedStatement pst = conn.prepareStatement(sql);

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                listProduct.add(new Product(rs.getInt("pId"), rs.getString("pName"), rs.getFloat("pSalePrice"),
                        rs.getString("pBrand"), rs.getString("pType"), rs.getString("pCategoryId"), rs.getString("pQuantity"),
                        rs.getString("color"), rs.getString("length"), rs.getString("pDescription"), rs.getInt("pStatusId"), rs.getString("pImageID")));
            }

            return listProduct;

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    
    public ArrayList<Product> sortProductPrice(String msg) {

        try {
            String sql = "SELECT * FROM `product` ORDER BY `product`.`pSalePrice` "+msg;

            PreparedStatement pst = conn.prepareStatement(sql);

            ResultSet rs = pst.executeQuery();

            while (rs.next()) {
                listProduct.add(new Product(rs.getInt("pId"), rs.getString("pName"), rs.getFloat("pSalePrice"),
                        rs.getString("pBrand"), rs.getString("pType"), rs.getString("pCategoryId"), rs.getString("pQuantity"),
                        rs.getString("color"), rs.getString("length"), rs.getString("pDescription"), rs.getInt("pStatusId"), rs.getString("pImageID")));
            }

            return listProduct;

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;

    }
    public int deleteProduct(int id){
        String sql = "delete from product where pId=?";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setInt(1, id);
            
            return pst.executeUpdate();
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return 0;
    }

    public Product getProduct(int id) {

        try {
            String sql = "SELECT * FROM `product` WHERE `pId` = ?";

            PreparedStatement pst = conn.prepareStatement(sql);
            
            pst.setInt(1, id);
            
            ResultSet rs = pst.executeQuery();

            Product p = new Product();

            if (rs.first()) {
                p.setId(id);
                p.setName(rs.getString("pName"));
                p.setPrice(rs.getFloat("pSalePrice"));
                p.setBrand(rs.getString("pBrand"));
                p.setType(rs.getString("pType"));
                p.setCategory(rs.getString("pCategoryId"));
                p.setQuantity(rs.getString("pQuantity"));
                p.setColor(rs.getString("color"));
                p.setLength(rs.getString("length"));
                p.setDescription(rs.getString("pDescription"));
                p.setStatus(rs.getInt("pStatusId"));
                p.setImgID(rs.getString("pImageID"));

                return p;
            }

        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public ResultSet getProduct() {
        String sql = "Select * from product";
        try {
            PreparedStatement pst = conn.prepareStatement(sql);
            ResultSet rs = pst.executeQuery();
            return rs;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

}
