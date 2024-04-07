<%-- 
    Document   : home
    Created on : 06-Apr-2024, 15:01:54
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin : Home</title>
        <%@include file="adminCSS.jsp"%>
        
        <style type="text/css">
            a{
                text-decoration: none;
                color:black;
            }
            a:hover{
                text-decoration: none;
                color:black;
            }
        </style>
    </head>
    <body>
        <%@include file="adminNavbar.jsp"%>
        <h2 class="text-center">Hello , Admin </h2>
        <div class="container">
            <div class="row p-5">
                <div class="col-md-3">
                    <a href="add_item.jsp">
                        <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-calendar-plus fa-3x text-primary"></i><br>
                            <h4>Add Items</h4>
                        </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-3">
                    <a href="all_items.jsp">
                        <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-laptop-file fa-3x text-danger"></i><br>
                            <h4>All Items</h4>
                        </div>
                        </div>
                    </a>
                </div>
                
                <div class="col-md-3">
                    <a href="orders.jsp">
                        <div class="card">
                        <div class="card-body text-center">
                            <i class="fa-solid fa-box-open fa-3x text-warning"></i><br>
                            <h4>Orders</h4>
                        </div>
                         </div>
                    </a>
                </div>
                
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center text-primary">
                           <i class="fa-solid fa-right-from-bracket fa-3x"></i><br>
                            <h4>Logout</h4>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
    </body>
</html>
