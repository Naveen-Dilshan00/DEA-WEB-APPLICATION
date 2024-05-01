<%-- 
    Document   : carttest.jsp
    Created on : Apr 18, 2024, 12:17:27 PM
    Author     : ASUS TUF
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page import="com.DAO.cartDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.entity.cart"%>
<%@page import="com.entity.user"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>


<%
    user u = (user)session.getAttribute("userobj");
    
    ArrayList<cart> cart_list =(ArrayList<cart>) session.getAttribute("cart-list");
    List<cart> cartProducts = null;
    if(cart_list !=null){
        cartDAOImpl Dao = new cartDAOImpl(DBConnect.getConn());
        cartProducts = Dao.getCartProducts(cart_list);
        Double Total = Dao.getTotalCartPrice(cart_list);
        request.setAttribute("cart_list", cart_list);
        request.setAttribute("total",Total);
    }
    
    DecimalFormat dcf = new DecimalFormat("#.##");
    request.setAttribute("dcf",dcf);
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>cart</title>
        <style> 
        
       body{
    background: #ddd;
    min-height: 100vh;
    vertical-align: middle;
    display: flex;
    font-family: sans-serif;
    font-size: 0.8rem;
    font-weight: bold;
}
.title{
    margin-bottom: 5vh;
}
.card{
    margin: auto;
    max-width: 950px;
    width: 90%;
    box-shadow: 0 6px 20px 0 rgba(0, 0, 0, 0.19);
    border-radius: 1rem;
    border: transparent;
}
@media(max-width:767px){
    .card{
        margin: 3vh auto;
    }
}
.cart{
    background-color: #fff;
    padding: 4vh 5vh;
    border-bottom-left-radius: 1rem;
    border-top-left-radius: 1rem;
}
@media(max-width:767px){
    .cart{
        padding: 4vh;
        border-bottom-left-radius: unset;
        border-top-right-radius: 1rem;
    }
}
.summary{
    background-color: #ddd;
    border-top-right-radius: 1rem;
    border-bottom-right-radius: 1rem;
    padding: 4vh;
    color: rgb(65, 65, 65);
}
@media(max-width:767px){
    .summary{
    border-top-right-radius: unset;
    border-bottom-left-radius: 1rem;
    }
}
.summary .col-2{
    padding: 0;
}
.summary .col-10
{
    padding: 0;
}.row{
    margin: 0;
}
.title b{
    font-size: 1.5rem;
}
.main{
    margin: 0;
    padding: 2vh 0;
    width: 100%;
}
.col-2, .col{
    padding: 0 1vh;
}
a{
    padding: 0 1vh;
}
.close{
    margin-left: auto;
    font-size: 0.7rem;
}
img{
    width: 3.5rem;
}
.back-to-shop{
    margin-top: 4.5rem;
}
h5{
    margin-top: 4vh;
}
hr{
    margin-top: 1.25rem;
}
form{
    padding: 2vh 0;
}
select{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1.5vh 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input{
    border: 1px solid rgba(0, 0, 0, 0.137);
    padding: 1vh;
    margin-bottom: 4vh;
    outline: none;
    width: 100%;
    background-color: rgb(247, 247, 247);
}
input:focus::-webkit-input-placeholder
{
      color:transparent;
}
.btn{
    background-color: #000;
    border-color: #000;
    color: white;
    width: 100%;
    font-size: 0.7rem;
    margin-top: 4vh;
    padding: 1vh;
    border-radius: 0;
}
.btn:focus{
    box-shadow: none;
    outline: none;
    box-shadow: none;
    color: white;
    -webkit-box-shadow: none;
    -webkit-user-select: none;
    transition: none; 
}
.btn:hover{
    color: white;
}
a{
    color: black; 
}
a:hover{
    color: black;
    text-decoration: none;
}

.code{
    margin-top: 10px;
}

.applybtn{
    color: white;
    background-color: red;
    margin-top: 7px;
    border: none;
    font-size: 12px;
    padding: 8px 20px 8px 20px;
}
            
            
        </style>
        
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
     
    </head>
    <body>
        <%@include file="all_components/navbar1.jsp" %>
        
        
        <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
        
        
        <div class="card">
             <div class="row">
                 <div class="col-md-8 cart">
                     <div class="title">
                        <div class="row">
                            <div class="col"><h4><b>Shopping Cart</b></h4></div>
                            <div class="col align-self-center text-right text-muted">${cart_list.size()} Items</div>
                        </div>
                    </div>    
            
             <c:if test="${ not empty RemoveSuccMsg}">
               <div class="alert alert-success" role="alert">
                    ${RemoveSuccMsg}
               </div>
               <c:remove var="RemoveSuccMsg" scope="session"/>
            </c:if>
        
            <c:if test="${ not empty OfailedMsg}">
                <div class="alert alert-danger" role="alert">
                    ${OfailedMsg}
                </div>
                <c:remove var="OfailedMsg" scope="session"/>
            </c:if>
           <c:if test="${ not empty EmptyfailedMsg}">
                <div class="alert alert-danger" role="alert">
                    ${EmptyfailedMsg}
                </div>
                <c:remove var="EmptyfailedMsg" scope="session"/>
            </c:if>
                
                    
                    <div class="row border-top border-bottom">
                        <div class="row main align-items-center">
                            
                                <table class="table " >
<!--                                            <thead>
                                              <tr>
                                                <th scope="col">#</th>
                                                <th scope="col">First</th>
                                                <th scope="col">Last</th>
                                                <th scope="col">Handle</th>
                                              </tr>
                                            </thead>-->
                                            <tbody>
                                                <%

                                   
                                    if(cart_list != null){
                                        
                                        for(cart c: cartProducts){ %>
                                             
                                        <tr style="display:flex;align-items: center;justify-content: space-around ; border:none; border-bottom: 2px black solid"> 
                                            <td style="border:none"><img class="img-fluid ml-2" src="Items_img/<%=c.getcPhoto()%>"></td>
                                            
                                            <td style="border:none"><div class="row "><%=c.getItemName()%></div></td>
                                            
                                            <td style="border:none">
                                            <form action="" method="">
                                                    <input type="hidden" name="id" value="<%=c.getIid()%>" class="form-input">
                                                    <div class="form-group d-flex justify-content-space-arround align-items-center">
                                                        <a href="QuantityIncDecServlet?action=dec&Iid=<%=c.getIid()%>" ><i class="fa-solid fa-square-minus text-danger"></i></a>
                                                        <input type="text" name="quantity"  class="form-control text-center" value="<%=c.getcQuantity()%>" readonly style="width:70px">
                                                        <a href="QuantityIncDecServlet?action=inc&Iid=<%=c.getIid()%>"><i class="fa-solid fa-square-plus text-success"></i></a>
                                                    </div>
                                                </form>
                                        </td>
                                        <td style="border:none">
                                            <div class="row ">  $<%= dcf.format(c.getPricee()) %></div>
                                               
                                        </td>
                                        <td style="border:none"> <a href="RemoveItemCart?Iid=<%=c.getIid()%>&&Cid=<%=c.getCid()%>"><span class="close">&#10005;</span></a></td>
                                       </tr>      
                                              <%
                                              }
                                                }
                                              %>
                                             
                                            </tbody>
                                          </table>
                            
<!--                            <div class="col-2"><img class="img-fluid" src="img/img7.jpg"></div>
                            <div class="col">
                                <div class="row text-muted">Shirt</div>
                                <div class="row">iPhone 15</div>
                            </div>
                            <div class="col">
                                <a href="#">-</a><a href="#" class="border">1</a><a href="#">+</a>
                            </div>
                            <div class="col">$220 <span class="close">&#10005;</span></div>
                        </div>-->
                    </div>
                    
                </div>
                                              <div class="back-to-shop"><a href="index.jsp"> &leftarrow;<span class="text-muted">Continue Shopping</span></a></div>
                </div>
                <div class="col-md-4 summary">
                    <div><h5><b>Order Summary</b></h5></div>
                    <hr>
                    <form>
                        <p>SHIPPING</p>
                        <select><option class="text-muted">Standard-Delivery- $2.00</option></select>
                        <div class="code">
                            <p class="gcode">GIVE CODE</p>
                        <input id="code" placeholder="Enter your code">
                
                        <button class="applybtn">APPLY</button>
                        </div>
                        
                    </form>
                    <div class="row" style="border-top: 1px solid rgba(0,0,0,.1); padding: 2vh 0;">
                        <div class="col">TOTAL COST</div>
                        <div class="col text-right">$${(total>0)?dcf.format(total):0.00}</div>
                    </div>
                    
                    
<!--                        if(cart_list.size()<0){
                            session.setAttribute("failedMsg", "There is no items in the cart");
                            response.sendRedirect("checkout1,jsp");
                        }  
                            else{-->
                    
                     <a href="validateServlet" class="btn">CHECKOUT</a
                    
                </div>
            </div>
            
        </div>
    </div>
    </body>
</html>
