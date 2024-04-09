/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.itemDetailes;
import java.util.List;

/**
 *
 * @author Naveen Dilshan
 */
public interface itemDAO {
    
    //Add item from admin panel
    public boolean addItem(itemDetailes b);
    
    //All items view in admin panel
    public List<itemDetailes> getAllItems();
    
    // Edit items(admin panel)
    public itemDetailes getItemsById(int id);
    
    public boolean updateEditItems(itemDetailes b); 
    
    public boolean deleteItems(int id);
}
