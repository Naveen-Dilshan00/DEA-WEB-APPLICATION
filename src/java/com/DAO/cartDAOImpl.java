/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import java.sql.Connection;
import com.entity.cart;
import java.sql.PreparedStatement;
/**
 *
 * @author Naveen Dilshan
 */
public class cartDAOImpl implements cartDAO{
    
    private Connection conn;
    
    public cartDAOImpl(Connection conn){
        this.conn=conn;
    }
    
    public boolean addCart(cart c){
        
        boolean f=false;
        try{
            String sql="insert into cart(Item_Id,User_Id,Item_Name,M_year,Price,Total_Price) values(?,?,?,?,?,?)";
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setInt(1,c.getIid());
            ps.setInt(2,c.getUserId());
            ps.setString(3,c.getM_year());
            ps.setDouble(4,c.getPrice());
            ps.setDouble(5,c.getTotallPrice());
            
            int i = ps.executeUpdate();
            if(i==1){
                f=true;
            }
         }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
}
