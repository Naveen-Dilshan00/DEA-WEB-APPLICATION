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
    


     //add a list to get cart item as a session
    public List<cart> getCartProducts(ArrayList<cart> cartList){
        List<cart> products = new ArrayList<cart>();

        try{


            if(cartList.size()>0){
                for(cart item:cartList){
                    String sql = "select *from item_data where Item_ID =? ";
                    PreparedStatement pst = conn.prepareStatement(sql);
                    pst.setInt(1,item.getIid());
//                    pst.setInt(2,item.getId());
                    ResultSet rs =pst.executeQuery();
                    while(rs.next()){
                        cart row = new cart();
                        row.setIid(rs.getInt("Item_ID"));
                        row.setItemName(rs.getString("Item_Name"));
                        row.setPricee(rs.getDouble("price")*item.getcQuantity());
                        row.setcQuantity(item.getcQuantity());
                        products.add(row);
                    }
                }
            }
        }
        catch(Exception e){
            System.out.println(e.getMessage());
            e.printStackTrace();
        }
        return products;
    }


    //Get a total value using session array list
    public double getTotalCartPrice(ArrayList<cart> cartList){
        double sum=0.0;

        try{
            if(cartList !=null){
                for(cart item : cartList){
                    String sql ="select Price from item_data where Item_ID =?";
                    PreparedStatement ps = conn.prepareStatement(sql);
                    ps.setInt(1,item.getIid());
                    ResultSet rs = ps.executeQuery();

                    while(rs.next()){
                        sum = rs.getDouble("Price")*item.getcQuantity()+ sum;
                    }
                }
            }
        }
        catch(Exception e){
            e.printStackTrace();
        }
      
        return sum;
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


                c.setPricee(rs.getDouble(6)* c.getQuantity());
                c.setQuantity(c.getQuantity());

                
//                c.setPricee(rs.getDouble(6)*rs.getInt(8));
//                c.setQuantity(c.getQuantity());
                
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
