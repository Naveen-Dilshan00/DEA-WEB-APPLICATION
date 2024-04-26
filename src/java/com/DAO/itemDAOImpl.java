/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.itemDetailes;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Naveen Dilshan
 */
public class itemDAOImpl implements itemDAO{
    
    
    private Connection con;
    
    public itemDAOImpl(Connection con){
        super();
        this.con = con;
    }
    
    // Item add (admin panel)
    public boolean addItem(itemDetailes b){
        
        boolean f =false;
        try{
            String sql = "insert into item_data(Item_Name,M_Year,Price,Photo,Category,Status,User_Email) values(?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql); 
            ps.setString(1,b.getItemName());
            ps.setString(2,b.getM_year());
            ps.setDouble(3,b.getPrice());
            ps.setString(4,b.getPhotoName());
            ps.setString(5,b.getCatergory());
            ps.setString(6,b.getStatus());
            ps.setString(7,b.getEmail());
            
            int y = ps.executeUpdate();
            
            if(y==1){
                f = true;
            }
            
            
        }  catch(Exception e){
            
            e.printStackTrace();
        }
        
        
        
        
        
        return f;
    }
    
    public List<itemDetailes> getAllItems(){
        List<itemDetailes> list = new ArrayList<itemDetailes>();
        itemDetailes b =null;
        
        try{
        
            String sql="select * from item_data";
            PreparedStatement ps = con.prepareStatement(sql);
            
            ResultSet rs =ps.executeQuery();
            while(rs.next())
            {
            
                b =new itemDetailes();
                b.setItemId(rs.getInt(1));
                b.setItemName(rs.getString(2));
                b.setM_year(rs.getString(3));
                b.setPrice(rs.getDouble(4));
                b.setPhotoName(rs.getString(5));
                b.setCatergory(rs.getString(6));
                b.setStatus(rs.getString(7));
                b.setEmail(rs.getString(8));
                
                list.add(b);
            }
            
    }  catch(Exception e){
            e.printStackTrace();
    }
    
    
    return list;
}
    
    
    @Override
    public itemDetailes getItemsById(int d){
        itemDetailes b = null;
        
        try{
            String sql="select*from item_data where Item_ID=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, d);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next())
            {
            
                b =new itemDetailes();
                b.setItemId(rs.getInt(1));
                b.setItemName(rs.getString(2));
                b.setM_year(rs.getString(3));
                b.setPrice(rs.getDouble(4));
                b.setPhotoName(rs.getString(5));
                b.setCatergory(rs.getString(6));
                b.setStatus(rs.getString(7));
                b.setEmail(rs.getString(8));
                
                
            }
            
            
        }  catch(Exception e){
            e.printStackTrace();
        }
        return b;
    }
    
    
    public boolean updateEditItems(itemDetailes b){
        boolean f =false;
        try{
            
            String sql=" update item_data set Item_Name=?,M_Year=?,Price=?,Status=? where Item_ID=?";
            PreparedStatement ps =con.prepareStatement(sql);
            
            ps.setString(1,b.getItemName());
            ps.setString(2,b.getM_year());
            ps.setDouble(3,b.getPrice());
            ps.setString(4,b.getStatus());
            ps.setInt(5,b.getItemId());
            
            int i=ps.executeUpdate();
            System.out.println("done");
            if(i==1)
            {
                f=true;
            }
            
        }
        catch(Exception e){
            e.printStackTrace();
        }
        
        return f;
    }
    
    
    public boolean deleteItems(int id){
        boolean f= false;
        try{
            String sql = "delete from item_data where Item_Id=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setInt(1, id);
            int i=ps.executeUpdate();
            if(i==1){
                f=true;
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
    
    
    public List<itemDetailes> getPhones(){
       
        List<itemDetailes> list = new ArrayList<itemDetailes>();
        itemDetailes b = null;
              
                try{
                    
                    String sql="select *from item_data where Category=? order by Item_ID DESC";
                    PreparedStatement ps = con.prepareStatement(sql);
                    String catergory;
                    ps.setString(1,"Phone");
//                    ps.setString(2,"Active");
                    ResultSet rs =ps.executeQuery();
                    int i=1;
                    
                    while(rs.next() && i<=4){
                        
                        b =new itemDetailes();
                        b.setItemId(rs.getInt(1));
                        b.setItemName(rs.getString(2));
                        b.setM_year(rs.getString(3));
                        b.setPrice(rs.getDouble(4));
                        b.setPhotoName(rs.getString(5));
                        b.setCatergory(rs.getString(6));
                        b.setStatus(rs.getString(7));
                        b.setEmail(rs.getString(8));

                        list.add(b);
                        
                        i++; 
                    }
                    
                }
                catch(Exception e){
                    e.printStackTrace();
                }
                
        return list;
    }
        
    public List<itemDetailes> getLaps(){
       
        List<itemDetailes> list2 = new ArrayList<itemDetailes>();
        itemDetailes b = null;
              
                try{
                    
                    String sql="select *from item_data where Category=? order by Item_ID DESC";
                    PreparedStatement ps = con.prepareStatement(sql);
                    String catergory;
                    ps.setString(1,"Laptop");
//                    ps.setString(2,"Active");
                    ResultSet rs =ps.executeQuery();
                    int i=1;
                    
                    while(rs.next()){
                        
                        b =new itemDetailes();
                        b.setItemId(rs.getInt(1));
                        b.setItemName(rs.getString(2));
                        b.setM_year(rs.getString(3));
                        b.setPrice(rs.getDouble(4));
                        b.setPhotoName(rs.getString(5));
                        b.setCatergory(rs.getString(6));
                        b.setStatus(rs.getString(7));
                        b.setEmail(rs.getString(8));

                        list2.add(b);
                        
                        i++; 
                    }
                    
                }
                catch(Exception e){
                    e.printStackTrace();
                }
                
        return list2;
    }
    
    public List<itemDetailes> getAllLaps(){
       
        List<itemDetailes> list2 = new ArrayList<itemDetailes>();
        itemDetailes b = null;
              
                try{
                    
                    String sql="select *from item_data where Category=? order by Item_ID DESC";
                    PreparedStatement ps = con.prepareStatement(sql);
                    String catergory;
                    ps.setString(1,"Laptop");
//                    ps.setString(2,"Active");
                    ResultSet rs =ps.executeQuery();
                    
                    
                    while(rs.next() ){
                        
                        b =new itemDetailes();
                        b.setItemId(rs.getInt(1));
                        b.setItemName(rs.getString(2));
                        b.setM_year(rs.getString(3));
                        b.setPrice(rs.getDouble(4));
                        b.setPhotoName(rs.getString(5));
                        b.setCatergory(rs.getString(6));
                        b.setStatus(rs.getString(7));
                        b.setEmail(rs.getString(8));

                        list2.add(b);
                        
                        
                    }
                    
                }
                catch(Exception e){
                    e.printStackTrace();
                }
                
        return list2;
    }
    
    public List<itemDetailes> getAlliphone(){
       
        List<itemDetailes> list2 = new ArrayList<itemDetailes>();
        itemDetailes b = null;
              
                try{
                    
                    String sql="select *from item_data where Category=? order by Item_ID DESC";
                    PreparedStatement ps = con.prepareStatement(sql);
                    String catergory;
                    ps.setString(1,"IPhone");
//                    ps.setString(2,"Active");
                    ResultSet rs =ps.executeQuery();
                    
                    
                    while(rs.next() ){
                        
                        b =new itemDetailes();
                        b.setItemId(rs.getInt(1));
                        b.setItemName(rs.getString(2));
                        b.setM_year(rs.getString(3));
                        b.setPrice(rs.getDouble(4));
                        b.setPhotoName(rs.getString(5));
                        b.setCatergory(rs.getString(6));
                        b.setStatus(rs.getString(7));
                        b.setEmail(rs.getString(8));

                        list2.add(b);
                        
                        
                    }
                    
                }
                catch(Exception e){
                    e.printStackTrace();
                }
                
        return list2;
    }
    
    public List<itemDetailes> getAllipad(){
       
        List<itemDetailes> list2 = new ArrayList<itemDetailes>();
        itemDetailes b = null;
              
                try{
                    
                    String sql="select *from item_data where Category=? order by Item_ID DESC";
                    PreparedStatement ps = con.prepareStatement(sql);
                    String catergory;
                    ps.setString(1,"IPad");
//                    ps.setString(2,"Active");
                    ResultSet rs =ps.executeQuery();
                    
                    
                    while(rs.next() ){
                        
                        b =new itemDetailes();
                        b.setItemId(rs.getInt(1));
                        b.setItemName(rs.getString(2));
                        b.setM_year(rs.getString(3));
                        b.setPrice(rs.getDouble(4));
                        b.setPhotoName(rs.getString(5));
                        b.setCatergory(rs.getString(6));
                        b.setStatus(rs.getString(7));
                        b.setEmail(rs.getString(8));

                        list2.add(b);
                        
                        
                    }
                    
                }
                catch(Exception e){
                    e.printStackTrace();
                }
                
        return list2;
    }
    
}