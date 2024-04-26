/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.DAO;

import com.entity.user;
/**
 *
 * @author Naveen Dilshan
 */
public interface userDAO {
    
    // user register
    public boolean userRegister(user us);
    
    //user login
    public user login(String name,String password);
    
    public boolean checkPassword(String ps,int id);
    
    public boolean updateProfile(user us);
}
