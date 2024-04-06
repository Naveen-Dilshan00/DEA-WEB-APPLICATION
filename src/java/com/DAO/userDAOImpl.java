/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import java.sql.Connection;
import com.entity.user;
import java.sql.PreparedStatement;

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
                return true;
            }
            
        } catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
