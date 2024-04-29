/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.cart;
import java.sql.Connection;
import com.entity.user;
import com.mysql.cj.protocol.Resultset;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Naveen Dilshan
 */
public class userDAOImpl implements userDAO{
    
    private Connection conn;
    
    public userDAOImpl(Connection conn){
        super();
        this.conn=conn;
    }
    
    
//    User Register
    public boolean userRegister(user us){
        
        boolean f= false;
        
        try{
            String sql="insert into user(Name,Email,Password) values(?,?,?)";
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1,us.getName());
            ps.setString(2,us.getEmail());
//            ps.setString(3,us.getPhno());
            ps.setString(3,us.getPassword());
            
            int i=ps.executeUpdate();
            if(i==1)
            {
                f=true;
//                return true;
            }
            
        } catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
   
//    User Login
    public user login(String name,String password){

        user us =null;
        
        try{
            String sql="SELECT * FROM USER WHERE name = ? and password = ? ";
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1,name);
            ps.setString(2,password);
            
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
                us = new user();
                us.setId(rs.getInt(1));
                us.setName(rs.getString(2));
                us.setEmail(rs.getString(3));
                us.setPhno(rs.getString(4));
                us.setPassword(rs.getString(5));
                us.setAddress(rs.getString(6));
                us.setLandmark(rs.getString(7));
                us.setCity(rs.getString(8));
                us.setState(rs.getString(9));
                us.setPincode(rs.getString(10));
            
            }
            
            
        } catch(Exception e){
            e.printStackTrace();
        }
        
       return us;
    }
    
    public boolean checkPassword(String ps,int id){
        
        boolean f = false;
        
        try{
            String sql = "select * from user where ID=? and Password=?";
            PreparedStatement p = conn.prepareStatement(sql);
            p.setInt(1,id);
            p.setString(2,ps);
            
            ResultSet rs = p.executeQuery();
            while(rs.next()){
                f = true;
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return f;
    }
    
    
    public boolean updatePassword(user us){
        boolean f=false;
            
        try{
           String sql ="update user set Password =? where Id =?";
           PreparedStatement ps = conn.prepareStatement(sql);
           ps.setString(1,us.getPassword());
           ps.setInt(2,us.getId());
           
           int i =ps.executeUpdate();
           if(i==1){
               f=true;
           }
           
        }
        catch(Exception e){
            
        }
        
        return f;
    }
    
    public boolean updateProfile(user us){
        boolean f=false;
            
        try{
           String sql ="update user set Name =?,Email=?,Phonenumber=? where Id =?";
           PreparedStatement ps = conn.prepareStatement(sql);
           ps.setString(1,us.getName());
           ps.setString(2, us.getEmail());
           ps.setString(3,us.getPhno());
           ps.setInt(4,us.getId());
           
           int i =ps.executeUpdate();
           if(i==1){
               f=true;
           }
           
        }
        catch(Exception e){
            
        }
        
        return f;
    }
    
    public int getUserCount() {
        int count = 0;
        try {
            String sql ="SELECT COUNT(*) FROM user";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
    public int getProductCount() {
        int count = 0;
        try {
            String sql ="SELECT COUNT(*) FROM item_data ";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                count = rs.getInt(1);
            }
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return count;
    }
}
    