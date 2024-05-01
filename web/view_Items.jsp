<%-- 
    Document   : view_Items
    Created on : 10-Apr-2024, 12:29:12
    Author     : Naveen Dilshan
--%>

<%@page import="com.entity.itemDetailes"%>
<%@page import="com.DAO.itemDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
    </head>
    <body>
        <%@include file="all_components/navbar1.jsp" %>
        
    <%
        int id = Integer.parseInt(request.getParameter("Iid"));
        itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
        itemDetailes b = dao.getItemsById(id);
    
    %>
        
        
    <div class="container">
        <div class="row">
            <div class="col-md-6 text-center p-5 border bg-white">
                <img src="Items_img/<%=b.getPhotoName()%>" style="height: 150px;width:150px;"><br>
                <h4>Item Name :<span class="text-success"> <%=b.getItemName()%></span></h4>
                <h4>Year : <span class="text-success"><%=b.getM_year()%></span></h4>
                <h4>Price : <span class="text-success"><%=b.getPrice()%></span></h4>
            </div>
            <div class="col-md-6">
                <h2><%=b.getItemName()%></h2>
                <%
                    if(b.getStatus().equals("Inactive")){
                %>
                <h5 class="text-primary">Contact to Seller</h5>
                <h5 class="text-primary">Email : <%=b.getEmail()%></h5>
                <%
                }
                %>
                
                
                
                <div class="row">
                    <h1>A</h1>
                    <h1>B</h1>
                    <h1>C</h1>
                </div>
                
                <%
                    if(b.getStatus().equals("Inactive")){
                 %>
                            <div class="row">
                    <a href='index.jsp' class="btn btn-primary">CONTINUE SHOPPING</a>
                    <a href='' class="btn btn-danger">250</a>
                           </div>
                <%            
                     }else{
                %>             
                     <div class="row">
                    <a href='' class="btn btn-primary">Add cart</a>
                    <a href='' class="btn btn-danger">250</a>
                     </div>
                <%  
                     }
                            
                %>
                
            </div>
        </div>
    </div>
                <%@include file="all_components/footer.jsp"%>
    </body>
</html>
