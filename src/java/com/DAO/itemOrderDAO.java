/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.item_order;
import java.util.List;

/**
 *
 * @author Naveen Dilshan
 */
public interface itemOrderDAO {
    public int getOrderNo();
    
    public boolean saveOrder(List<item_order> Ilist);
}
