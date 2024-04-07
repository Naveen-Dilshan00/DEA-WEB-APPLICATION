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
    
    public boolean addItem(itemDetailes b);
    
    public List<itemDetailes> getAllItems();
    
}
