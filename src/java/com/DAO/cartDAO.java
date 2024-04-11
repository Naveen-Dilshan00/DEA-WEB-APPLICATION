/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.cart;
import com.entity.itemDetailes;
import java.util.List;
/**
 *
 * @author Naveen Dilshan
 */
public interface cartDAO {
        
    public boolean addCart(cart c);
    
    public List<cart> getItemByUser(int userId);
    
    public boolean deleteItem(int Iid,int Uid);
}
