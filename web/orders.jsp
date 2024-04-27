<%-- 
    Document   : orders
    Created on : 12-Apr-2024, 09:45:29
    Author     : Naveen Dilshan
--%>

<%@page import="com.entity.item_order"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.itemOrderDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.entity.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_components/allCSS.jsp"%>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>
        
        
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
        <div class="container">
            <h3 class="text-center"> Your order</h3>
            <table class="table table-striped">
  <thead>
    <tr>
     
      <th scope="col">Order ID</th>
      <th scope="col">User ID</th>
      <th scope="col">Name</th>
      <th scope="col">Item Name</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
      <%
        
             user u =(user)session.getAttribute("userobj");
             itemOrderDAOImpl dao = new itemOrderDAOImpl(DBConnect.getConn());
             List<item_order> blist = dao.getItem(u.getId());
             for(item_order b:blist){
       %>          
                <tr>
                    <th scope="row"><%=b.getOrder_Id()%></th>
                    <td><%=b.getId()%></td>
                    <td><%=b.getUserName()%></td>
                    <td><%=b.getItemName()%></td>
                    <td><%=b.getPrice()%></td>
                    <td><%=b.getPaymenttype()%></td>
                    
                </tr>
       
       <%
             }
      %>
    

  </tbody>
</table>
        </div>
    </body>
</html>
