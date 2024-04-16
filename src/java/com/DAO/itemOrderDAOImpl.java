/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.item_order;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

/**
 *
 * @author Naveen Dilshan
 */
public class itemOrderDAOImpl implements itemOrderDAO{
    
    private Connection conn;
    
    public itemOrderDAOImpl(Connection conn){
        super();
        this.conn = conn;
    }
    
    public int getOrderNo(){
        
        int i=0;
        try{
            String sql = "select*from order";
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs =ps.executeQuery();
            while(rs.next()){
                i++;
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
        return 0;
    }
    
    public boolean saveOrder(List<item_order> Ilist){
        boolean f=false;
        
        try{
            String sql="insert into order_detailes(Order_ID,User_Name,Email,Address,Phone,item_Name,Price,payment_type) values(?,?,?,?,?,?,?,?)";
            
            conn.setAutoCommit(false);
            PreparedStatement ps=conn.prepareStatement(sql);
            
            for(item_order b : Ilist){
               ps.setString(1,b.getOrder_Id());
               ps.setString(2,b.getUserName());
               ps.setString(3,b.getEmail());
               ps.setString(4,b.getFullAdd());
               ps.setString(5,b.getPhone());
               ps.setString(6,b.getItemName());
               ps.setString(7,b.getPrice());
               ps.setString(8,b.getPaymenttype());
               ps.addBatch();
             
            }
            
            int[] count = ps.executeBatch();
            conn.commit();
            f =true;
            conn.setAutoCommit(true);
            
            }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
}
