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
    
    public ArrayList<Product> getAll(){
        
        try {
            String sql = "SELECT * FROM `product` WHERE 1";
            
            PreparedStatement pst = conn.prepareStatement(sql);
            
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                listProduct.add(new Product(rs.getInt("pId"),rs.getString("pName"),rs.getFloat("pSalePrice"),
                        rs.getString("pBrand"),rs.getString("pType"),rs.getString("pCategoryId"),rs.getString("pQuantity"),
                        rs.getString("color"),rs.getString("length"), rs.getString("pDescription"),rs.getInt("pStatusId"),rs.getString("pImageID")));
            }
            
            return listProduct;
            
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return null;
        
    }
    
    
    
}
