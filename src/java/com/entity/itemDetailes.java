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
public class itemDetailes {
    
    private int itemId;
    private String itemName;
    private String m_year;
    private Double price;
    private String catergory;
    private String status;
    private String photoName;
    private String email;
    
    
    public itemDetailes(){
        super();
    }

    public itemDetailes(String itemName, String m_year, Double price, String catergory, String status, String photoName, String email) {
        this.itemName = itemName;
        this.m_year = m_year;
        this.price = price;
        this.catergory = catergory;
        this.status = status;
        this.photoName = photoName;
        this.email = email;
    }

    public int getItemId() {
        return itemId;
    }

    public void setItemId(int itemId) {
        this.itemId = itemId;
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public String getCatergory() {
        return catergory;
    }

    public void setCatergory(String catergory) {
        this.catergory = catergory;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getPhotoName() {
        return photoName;
    }

    public void setPhotoName(String photoName) {
        this.photoName = photoName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "itemDetailes{" + "itemId=" + itemId + ", itemName=" + itemName + ", m_year=" + m_year + ", price=" + price + ", catergory=" + catergory + ", status=" + status + ", photoName=" + photoName + ", email=" + email + '}';
    }
    
    
 }
