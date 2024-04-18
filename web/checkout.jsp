<%-- 
    Document   : cart
    Created on : 11-Apr-2024, 08:50:31
    Author     : Naveen Dilshan
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.cart"%>
<%@page import="com.entity.user"%>
<%@page import="com.DAO.cartDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_components/allCSS.jsp" %>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp" %>
        
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
         <c:if test="${ not empty succMsg}">
            <div class="alert alert-success" role="alert">
             This is a success alert—check it out!
            </div>
             <c:remove var="succMsg" scope="session"/>
         </c:if>
        
        <c:if test="${ not empty failedMsg}">
            <div class="alert alert-danger" role="alert">
             ${failedMsg}
            </div>
             <c:remove var="failedMsg" scope="session"/>
        </c:if>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                     <div class="card bg-white">
                <div class="card-body">
                    <h3 class="text-center text succes">Youe selected</h3>
                    <table class="table table-striped">
                            <thead>
                              <tr>
                                <th scope="col">Item Name</th>
                                <th scope="col">M_year</th>
                                <th scope="col">Price</th>
                                <th scope="col">Action</th>
                              </tr>
                            </thead>
                            <tbody>
                                <%
                                    user u = (user)session.getAttribute("userobj");
                                    
                                    cartDAOImpl dao = new cartDAOImpl(DBConnect.getConn());
                                     List<cart> cart = dao.getItemByUser( u.getId());
                                     Double totallprice =0.00;
                                     for(cart c:cart){
                                         totallprice= c.getTotallPrice();
                                     %>
                                         <tr>
                                            <th scope="row"><%=c.getItemName()%></th>
                                            <td><%=c.getM_year()%></td>
                                            <td><%=c.getPrice()%></td>
                                            <td><a href="RemoveItemCart?Iid=<%=c.getIid()%>&&Cid=<%=c.getCid()%>" class="btn btn-sm btn-danger ">REMOVE</a></td>
                                          </tr>
                                <%          
                                     }
                                %>
                                <tr>
                                    <td>Total Price</td>
                                    <td></td>
                                    <td></td>
                                    <td><%=totallprice%></td>
                                </tr>
                                <tr>
                                    <td><a href="placeOrder.jsp" class="btn btn-sm btn-warning "> Order Now</a></td>
                                </tr>
                             
                            </tbody>
                          </table>
                </div>
            </div>
                </div>
                
              
            </div>
        </div>
    </body>
</html>
