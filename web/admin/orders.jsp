<%-- 
    Document   : orders
    Created on : 07-Apr-2024, 07:46:30
    Author     : Naveen Dilshan
--%>

<%@page import="com.entity.item_order"%>
<%@page import="com.DAO.itemOrderDAOImpl"%>
<%@page import="com.entity.cart"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.cartDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin:Orders</title>
        <%@include file="adminCSS.jsp"%>
    </head>
    <body>
        <%@include file="adminNavbar.jsp"%>
        <h3 class="text-center">Hello Admin</h3>
        
        
        <table class="table">
            <thead class="bg-dark text-white">
                <tr>
                  <th scope="col">Order ID</th>
                  <th scope="col">Item</th>
                  <th scope="col">Price</th>
                  <th scope="col">User Name</th>
                  <th scope="col">Email</th>
                  <th scope="col">Address</th>
                  <th scope="col">Phoneumber</th>
                  <th scope='col'>Payment type</th>
                </tr>
              </thead>
              <tbody>
                
            <%
                itemOrderDAOImpl dao = new itemOrderDAOImpl(DBConnect.getConn());
                List<item_order> blist = dao.getAllItem();
                for(item_order b:blist){
             %>
                <tr>
                  <th scope="row"><%=b.getOrder_Id()%></th>
                  <th scope="row"><%=b.getItemName()%></th>
                  <th scope="row"><%=b.getPrice()%></th>
                  <th scope="row"><%=b.getUserName()%></th>
                  <th scope="row"><%=b.getEmail()%></th>
                  <th scope="row"><%=b.getFullAdd()%></th>
                  <th scope="row"><%=b.getPhone()%></th>
                  <th scope="row"><%=b.getPaymenttype()%></th>
                  
                </tr>
            <%
               }  
            %>
                                    
                
                
              </tbody>
         </table>
    </body>
</html>
