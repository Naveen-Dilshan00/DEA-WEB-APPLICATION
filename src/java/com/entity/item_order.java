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
public class item_order  {
    
    private int id;
    private int order_Id;
    private String userName;
    private String email;
    private String fullAdd;
    private String phone;
    private String paymenttype;
    private String itemName;
    private String price;
    private int quantity;

    public item_order() {
        super();
    }

    public void setOrder_Id(int order_Id){
        this.order_Id=order_Id;
    }
    
    public int getOrder_Id(){
        return order_Id;
    }
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getFullAdd() {
        return fullAdd;
    }

    public void setFullAdd(String fullAdd) {
        this.fullAdd = fullAdd;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPaymenttype() {
        return paymenttype;
    }

    public void setPaymenttype(String paymenttype) {
        this.paymenttype = paymenttype;
    }

    public String getItemName() {
        return itemName;
    }

    public void setItemName(String itemName) {
        this.itemName = itemName;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    
    
    

    @Override
    public String toString() {
        return "item_order{" + "id=" + id + ", userName=" + userName + ", email=" + email + ", fullAdd=" + fullAdd + ", phone=" + phone + ", paymenttype=" + paymenttype + '}';
    }
    
    
    
}
