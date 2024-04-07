/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import java.sql.Connection;
import com.entity.user;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

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
            String sql="insert into user(Name,Email,Phonenumber,Password) values(?,?,?,?)";
            PreparedStatement ps =conn.prepareStatement(sql);
            ps.setString(1,us.getName());
            ps.setString(2,us.getEmail());
            ps.setString(3,us.getPhno());
            ps.setString(4,us.getPassword());
            
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
}
    