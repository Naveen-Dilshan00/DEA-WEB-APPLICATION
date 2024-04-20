<%-- 
    Document   : settings
    Created on : 12-Apr-2024, 04:32:00
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_components/allCSS.jsp"%>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@page isELIgnored ="false"%>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp"%>
        
        <div class="container">
            <c:if test="${not empty userobj}">
                <h3>Hello,${userobj.name}</h3>
            </c:if>
            
            <div class="row p-5">
                <div class="col-md-6">
                    <a href="">
                        <div class="card">
                            <div class="card-body text-center">
                                <h3>Sell Old BooK</h3>
                            </div>   
                        </div>
                    </a>
                </div
                
                <div class="col-md-6">
                    <a href="edit_profile.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <h3>Login & security(Edit)</h3>
                            </div>   
                        </div>
                    </a>
                </div>
                
              <div class="row p-5">
                <div class="col-md-4 mt-3">
                    <a href="user_address.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <h3>MY address</h3>
                            </div>   
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4 mt-3">
                    <a href="orders.jsp">
                        <div class="card">
                            <div class="card-body text-center">
                                <h3 class="text-danger" >MY Order</h3>
                            </div>   
                        </div>
                    </a>
                </div>
                
                <div class="col-md-4 mt-3">
                    <a href="">
                        <div class="card">
                            <div class="card-body text-center">
                                <h3>Help Cemter</h3>
                            </div>   
                        </div>
                    </a>
                </div>
            </div>
          
        
        
    </body>
</html>
