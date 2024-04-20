<%-- 
    Document   : index
    Created on : 05-Apr-2024, 20:22:06
    Author     : Naveen Dilshan
--%>

<%@page import="com.entity.user"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.itemDetailes"%>
<%@page import="com.DAO.itemDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>APPLE-Index</title>
        <%@include file="all_components/allCSS.jsp"%>
        
        <style type="text/css">
            .back-img{
                background:url("image/Clock.jpg");
                height:50vh;
                width:100%;
                background-size: cover;
                background-position: center;
            }
            
            .crd-ho:hover{
                background-color:#f7f7f7;
            }
        </style>
    </head>
    <body style="background-color:#f7f7f7">
  
<!--        check user already loged in-->
        <%
            user u =(user)session.getAttribute("userobj");
        %>
        
        <%@include file="all_components/navbar.jsp"%>
        
        
        <div class="container-fluid back-img">
            <h2 class="text-center text-danger">WATCH STROE</h2>
        </div>
        
        
        <% Connection conn=DBConnect.getConn();
        out.println(conn);
        %>

<!--START RECENT BOOKS        -->

<div class="container">
            <h3 class="text-center">Laps</h3>
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
                             
<!--                              check user already loged in-->
                              <%
                                  if(u==null){
                              %>       
                                        <a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add cart</a>
                              <%
                                  } else{
                              %>
                              <a href="CartServlet?Iid=<%=b.getItemId()%>&&Uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add cart</a>
                              <%
                                  }
                              %>          
                              
                              <a href="view_Items.jsp?Iid=<%=b.getItemId()%>" class="btn btn-success btn-sm ml-1">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                          </div>
                          
                          <%} 
                              else{
                           %>
                           <div class="row">
                              <button class="btn btn-success btn-sm ml-1" disabled>OUT Of stock</button>
                              <a href="view_Items.jsp?Iid=<%=b.getItemId()%>" class="btn btn-success btn-sm ml-1">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                           </div>
                            <% }%>
                          
                        </div>
                    </div>
                </div>  
                    <%   
                    }
                    %>
<!--END RECENT BOOK-->

<hr>

<!--START NEW BOOKS -->

        <div class="container">
            <h3 class="text-center">Phones</h3>
            <div class="row">
                
                   <%
                    itemDAOImpl dao2 = new itemDAOImpl(DBConnect.getConn());
                    List<itemDetailes> list = dao2.getPhones();
                    for(itemDetailes b : list){
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
     
              
<!--END NEW BOOK-->

<hr>

<!--START OLD BOOKS-->

        <div class="container">
            <h3 class="text-center">Laptops</h3>
            <div class="row">
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-success btn-sm ml-5">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                          </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-success btn-sm ml-5">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                          </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-success btn-sm ml-5">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                          </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-success btn-sm ml-5">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-1">
                <a href="" class="btn btn-danger btn-sm text-white">View All</a>
            </div>
        </div>
<!--END Old BOOK-->

<%@include file="all_components/footer.jsp"%>
    </body>
</html>
