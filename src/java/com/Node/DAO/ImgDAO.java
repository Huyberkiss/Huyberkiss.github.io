/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.Node.DAO;

import com.Node.Entity.IMG;
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
public class ImgDAO {
    
    private Connection conn;
    
    private ArrayList<IMG> listIMG;

    public ImgDAO() {
    
         conn = new DBConnection().getConnection();
         listIMG = new ArrayList<>();
    }
    
   public ArrayList<IMG> getAll(){
        try {
            String sql = "SELECT * FROM `image` WHERE 1";
            
            PreparedStatement pst = conn.prepareStatement(sql);
            
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                listIMG.add(new IMG(rs.getString("imgID"), rs.getInt("pID"), rs.getString("linkIMG")));
            }
            
            return listIMG;
            
        } catch (SQLException ex) {
            Logger.getLogger(ImgDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
   }
   
    public ArrayList<IMG> getImgByProductId(int id){
        try {
            String sql = "SELECT * FROM `image` WHERE `pID` = ? ";
            
            PreparedStatement pst = conn.prepareStatement(sql);
            
            pst.setInt(1, id);
            
            ResultSet rs = pst.executeQuery();
            
            while(rs.next()){
                listIMG.add(new IMG(rs.getString("imgID"), rs.getInt("pID"), rs.getString("linkIMG")));
            }
            
            return listIMG;
            
        } catch (SQLException ex) {
            Logger.getLogger(ImgDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
   }
    
    
    
}
