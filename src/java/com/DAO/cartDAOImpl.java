/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import java.sql.Connection;
import com.entity.cart;
import com.entity.itemDetailes;
import com.entity.user;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
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
            String sql="insert into cart(Item_Id,User_Id,Item_Name,M_Year,Price,Total_Price) values(?,?,?,?,?,?)";
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setInt(1,c.getIid());
            ps.setInt(2,c.getUserId());
            ps.setString(3,c.getItemName());
            ps.setString(4,c.getM_year());
            ps.setDouble(5,c.getPricee());
            ps.setDouble(6,c.getTotallPrice());
            
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
    
    public List<cart> getItemByUser(int userId){
        List<cart> list = new ArrayList<cart>();
        cart c =null;
        double totallPrice=0.00;
        try{
            String sql="select * from cart where User_ID =?";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setInt(1, userId);
            
            ResultSet rs=ps.executeQuery();
            
            while(rs.next())
            {
                c =new cart();
                c.setCid(rs.getInt(1));
                c.setIid(rs.getInt(2));
                c.setUserId(rs.getInt(3));
                c.setItemName(rs.getString(4));
                c.setM_year(rs.getString(5));

                c.setPrice(rs.getDouble(6));


                c.setPricee(rs.getDouble(6)* c.getQuantity());
                c.setQuantity(c.getQuantity());

                c.setPrice(rs.getDouble(6));
                c.setPricee(rs.getDouble(6)*rs.getInt(8));
                c.setQuantity(c.getQuantity());


                
//                totallPrice = totallPrice +rs.getDouble(7);
//                c.setTotallPrice(totallPrice);
                
                list.add(c);
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return list; 
    }
    
    public boolean deleteItem(int Iid,int Cid){
            boolean f=false;
            
            try{
                String sql = "delete from cart where Item_ID=? and Cart_ID = ?";
                PreparedStatement ps =conn.prepareStatement(sql);
                ps.setInt(1,Iid);
                ps.setInt(2,Cid);
                
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
    
    public boolean addDetailes(user u){
        boolean f = false;
        
        try{
            String sql="insert into cart(Item_Id,User_Id,Item_Name,M_Year,Price,Total_Price) values(?,?,?,?,?,?)";
        }
        catch(Exception e){
           
        }
        return f;
    }
}
