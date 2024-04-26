/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.entity;

/**
 *
 * @author Naveen Dilshan
 */


  public class cart extends item_order{

    private int cid;
    private int iid;
    private int userId;
    private String itemName;
    private String m_year;
    private Double pricee;
    private int cQuantity;
    private Double totallPrice;
    private String cPhoto;

    public int getCid() {
        return cid;
    }

    public void setCid(int cid) {
        this.cid = cid;
    }

    public int getIid() {
        return iid;
    }

    public void setIid(int iid) {
        this.iid = iid;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getM_year() {
        return m_year;
    }

    public void setM_year(String m_year) {
        this.m_year = m_year;
    }
    
    public void setPricee(Double pricee) {
        this.pricee = pricee;
    }

    public Double getPricee() {
        return pricee;
    }

    public int getcQuantity() {
        return cQuantity;
    }

    public void setcQuantity(int cQuantity) {
        this.cQuantity = cQuantity;
    }
    
    


    public Double getTotallPrice() {
        return totallPrice;
    }

    public void setTotallPrice(Double totallPrice) {
        this.totallPrice = totallPrice;
    }

    public String getcPhoto() {
        return cPhoto;
    }

    public void setcPhoto(String cPhoto) {
        this.cPhoto = cPhoto;
    }
    
    
    
    
} 
