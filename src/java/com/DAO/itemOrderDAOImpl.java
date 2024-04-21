/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.item_order;
import com.entity.user;
import com.mysql.cj.protocol.Resultset;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

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
            String sql="insert into order_detailes(ID,User_Name,Email,Address,Phone,item_Name,Price,payment_type) values(?,?,?,?,?,?,?,?)";
            
            conn.setAutoCommit(false);
            PreparedStatement ps=conn.prepareStatement(sql);
            
            for(item_order b : Ilist){
//               ps.setString(1,b.getOrder_Id());
               ps.setInt(1, b.getId());
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
    
    public List<item_order> getItem(int id){
        List<item_order> list =new ArrayList <item_order>();
        item_order o =null;
        
        try{
            
            String sql ="select * from order_detailes where ID =?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                o =new item_order();
                o.setOrder_Id(rs.getInt(1));
                o.setId(rs.getInt(2));
                o.setUserName(rs.getString(3));
                o.setEmail(rs.getString(4));
                o.setFullAdd(rs.getString(5));
                o.setPhone(rs.getString(6));
                o.setItemName(rs.getString(7));
                o.setPrice(rs.getString(8));
                o.setPaymenttype(rs.getString(9));
                list.add(o);
                
                
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
    }
    
     public List<item_order> getAllItem(){
         
        List<item_order> list =new ArrayList <item_order>();
        item_order o =null;
        
        try{
            
            String sql ="select * from order_detailes";
            PreparedStatement ps = conn.prepareStatement(sql);
        
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                o =new item_order();
                o.setOrder_Id(rs.getInt(1));
                o.setId(rs.getInt(2));
                o.setUserName(rs.getString(3));
                o.setEmail(rs.getString(4));
                o.setFullAdd(rs.getString(5));
                o.setPhone(rs.getString(6));
                o.setItemName(rs.getString(7));
                o.setPrice(rs.getString(8));
                o.setPaymenttype(rs.getString(9));
                list.add(o);
                
                
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return list;
     }
}
