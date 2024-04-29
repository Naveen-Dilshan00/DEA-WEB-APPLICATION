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
    <title>Admin: Orders</title>
    <%@include file="adminCSS.jsp"%>
    <style>
       
        .table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-top: 20px;
        }
        .table th,
        .table td {
            padding: 8px;
            text-align: center; 
            border-bottom: 1px solid #ddd;
            font-weight: 500;
        }
        
        h2{
            color: #007bff;
            font-weight: 700;
        }
        .table th {
            background-color: #0C0C1E; 
            color: white;
            font-weight: 700;
        }
        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .table tbody tr:hover {
            background-color: #ddd;
        }
    </style>
</head>
<body>
    <%@include file="adminNavbar.jsp"%>
    <h2 class="text-center">Hello Admin</h2>
    
    <!-- Table markup -->
    <table class="table">
        <thead>
            <tr>
                <th scope="col">Order ID</th>
                <th scope="col">Item</th>
                <th scope="col">Price</th>
                <th scope="col">User Name</th>
                <th scope="col">Email</th>
                <th scope="col">Address</th>
                <th scope="col">Phone Number</th>
                <th scope="col">Payment Type</th>
            </tr>
        </thead>
        <tbody>
        <% itemOrderDAOImpl dao = new itemOrderDAOImpl(DBConnect.getConn());
            List<item_order> blist = dao.getAllItem();
            for(item_order b:blist) { %>
            <tr>
                <td><%=b.getOrder_Id()%></td>
                <td><%=b.getItemName()%></td>
                <td><%=b.getPrice()%></td>
                <td><%=b.getUserName()%></td>
                <td><%=b.getEmail()%></td>
                <td><%=b.getFullAdd()%></td>
                <td><%=b.getPhone()%></td>
                <td><%=b.getPaymenttype()%></td>
            </tr>
        <% } %>
        </tbody>
    </table>
</body>
</html>
