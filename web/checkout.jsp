<%-- 
    Document   : cart
    Created on : 11-Apr-2024, 08:50:31
    Author     : Naveen Dilshan
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.cart"%>
<%@page import="com.entity.user"%>
<%@page import="com.DAO.cartDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>

<!DOCTYPE html>

<%
    user u = (user)session.getAttribute("userobj");
    
    
    

%>
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
                <div class="col-md-12">
                     <div class="card bg-white">
                <div class="card-body">
                    <h3 class="text-center text succes">Your selected</h3>
                    <table class="table table-striped">
                            <thead>
                              <tr>
                                <th scope="col">Item Name</th>
                                <th scope="col">M_year</th>
                                <th scope="col">Quantity</th>
                                <th scope="col">Price</th>
                                <th scope="col">Action</th>
                              </tr>
                            </thead>
                            <tbody>
                                <%
                                   
                                    if(cart_list != null){
                                        
                                        for(cart c: cartProducts){ %>
                                            
                                            <tr>
                                            <th scope="row"><%=c.getItemName()%></th>

                                            <td><%=c.getM_year()%></td>

                                            <td>
                                                <form action="" method="" class="form-inline">
                                                    <input type="hidden" name="id" value="<%=c.getIid()%>" class="form-input">
                                                    <div class="form-group d-flex justify-content-between">
                                                        <a class="btn btn-sn btn decre text-danger"><i class="fa-solid fa-square-minus"></i></a>
                                                        <input type="text" name="quantity"  class="form-control" value="1" readonly>
                                                        <a class="btn btn-sn btn incre text-success"><i class="fa-solid fa-square-plus"></i></a>

                                            <td><%=c.getPrice()%></td>
                                            <td><a href="RemoveItemCart?Iid=<%=c.getIid()%>&&Cid=<%=c.getCid()%>" class="btn btn-sm btn-danger ">REMOVE</a></td>

                                            <td><%=c.getPricee()%></td>
                                            <td>
                                                <form action="" method="" class="form-inline">
                                                    <input type="hidden" name="id" value=<%=c.getIid()%> class="form-input">
                                                    <div class="form-group d-flex justify-content-between">
                                                        <a class="btn btn-sn btn decre text-danger"><i class="fa-solid fa-square-minus"></i></a>
                                                        <input type="text" name="quantity"  class="form-control" value="1" readonly>
                                                        <a class="btn btn-sn btn incre"><i class="fa-solid fa-square-plus"></i></a>

                                                    </div>
                                                </form>
                                            </td>
                                            <td><%=c.getPricee()%></td>
                                            <td>
                                                <a href="RemoveItemCart?Iid=<%=c.getIid()%>&&Cid=<%=c.getCid()%>" class="btn btn-sm btn-danger ">REMOVE</a>
                                            </td>
                                          </tr>
                                          <%
                                         
                                    }

                                     }
                                    %>
                                         
                                          
                                   
                                <tr>
                                    <td>Total Price</td>
                                    <td></td>
                                    <td></td>

                                    <td></td>

                                    <td><%=totallprice%></td>

                                    <td></td>
                                    <td>${(total>0)?total:0.00}</td>

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
