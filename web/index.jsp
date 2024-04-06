<%-- 
    Document   : index
    Created on : 05-Apr-2024, 20:22:06
    Author     : Naveen Dilshan
--%>

<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ebook-Index</title>
        <%@include file="/all_components/allCSS.jsp"%>
        
        <style type="text/css">
            .back-img{
                background:url("image/Book.jpg");
                height:50vh;
                width:100%;
                background-size: cover;
                background-position: bottom;
            }
            
            .crd-ho:hover{
                background-color:#f7f7f7;
            }
        </style>
    </head>
    <body style="background-color:#f7f7f7">
        <%@include file="all_components/navbar.jsp"%>
        
        
        <div class="container-fluid back-img">
            <h2 class="text-center text-danger">Book Management System</h2>
        </div>
        
        
        <% Connection conn=DBConnect.getConn();
        out.println(conn);
        %>

<!--START RECENT BOOKS        -->

        <div class="container">
            <h3 class="text-center">Recent Book</h3>
            <div class="row">
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-plus"></i>Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
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
                              <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-cart-plus"></i>Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
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
                              <a href="" class="btn btn-danger btn-sm ml-1">Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
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
                              <a href="" class="btn btn-danger btn-sm ml-1">Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
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
<!--END RECENT BOOK-->

<hr>

<!--START NEW BOOKS -->

        <div class="container">
            <h3 class="text-center">New Book</h3>
            <div class="row">
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
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
                              <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
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
                              <a href="" class="btn btn-danger btn-sm ml-2"><i class="fa-solid fa-cart-plus"></i>Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
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
                              <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
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
<!--END NEW BOOK-->

<hr>

<!--START OLD BOOKS-->

        <div class="container">
            <h3 class="text-center">Old Book</h3>
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
