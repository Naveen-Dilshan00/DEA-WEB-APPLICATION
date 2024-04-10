<%-- 
    Document   : all_Laps
    Created on : 10-Apr-2024, 10:33:50
    Author     : Naveen Dilshan
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.itemDetailes"%>
<%@page import="com.DAO.itemDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
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
        <div class="container">
            
            <div class="row">
                
                   <%
                    itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
                    List<itemDetailes> list2 = dao.getLaps();
                    for(itemDetailes b : list2){
                    %>
                    
                    <div class="col-md-3">   
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Items_img/<%=b.getPhotoName()%>" style="width:150px; height:200px" class="img-thumblin">
                          <p><%=b.getItemName()%></p>
                          <p><%=b.getM_year()%></p>
                          
                          <%
                              if(b.getStatus().equals("Active")){
                          %>
                          <p><%=b.getStatus()%></p>
                          <div class="row">
                              <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                          </div>
                          
                          <%} 
                              else{
                           %>
                           <div class="row">
                              <button class="btn btn-success btn-sm ml-1" disabled>OUT Of stock</button>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                           </div>
                            <% }%>
                          
                        </div>
                    </div>
                </div>  
                    <%   
                    }
                    %>
    </body>
</html>
