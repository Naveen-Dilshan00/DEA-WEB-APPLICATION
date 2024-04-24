<%-- 
    Document   : placeOrder1
    Created on : Apr 18, 2024, 12:15:45 PM
    Author     : duleesha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <%@include file="all_components/allCSS.jsp" %>
        <style type="text/css">
            *{
/*                padding: 0;
                margin: 0;*/
                font-family: sans-serif;
                box-sizing: border-box;
                
             }
             body
             {
               height: 80vh; 
             }
             .full-body{
                 display: flex;
                 margin: 20px 80px;
             }
             .container1
             {
                 max-width: 650px;
                 padding: 28px;
                 margin: 0 28px;
                 border-radius: 10px;
                 overflow: hidden;
                 box-shadow: 0 15px 20px white;
                     
             }
             
             h5
             {
                 font-size: 26px;
                 font-weight: bold;
                 text-align: left;
                 color: black;
                 padding-bottom: 8px;
                 border-bottom: 1px solid silver;
             }
             .content
             {
                 display: flex;
                 flex-wrap: wrap;
                 justify-content: space-between;
                 padding: 20px 0;
             }
             .input-box
             {
                 display: flex;
                 flex-wrap: wrap;
                 width: 50%;
                 padding-bottom: 15px;
                 border-radius: 10px
             }
             .input-box:nth-child(2n)
             {
                 justify-content: end;
             }
             .input-box input
             {
                 height: 40px;
                 width: 95%;
                 padding: 0 10px;
                 border-radius: 5px;
                 border: 1px solid black;
                 outline: none;
             }
             .button-container
             {
                 margin: 15px 0;
                 width: 100%;
             }
             .button-container button
             {
                 width:100%;
                 margin-top: 10px;
                 padding: 10px;
                 display: block;
                 font-size: 20px;
                 color: white;
                 border: none;
                 border-radius: 5px;
                 background-image:linear-gradient(to right,green,yellowgreen);
                 
                 
                 
             }
             .button-container button:hover
             {
                 background-image: linear-gradient(to right,green,yellowgreen);
             }
             textarea
             {
                 width:100%;
                 margin-top: 6px;
                 margin-bottom: 16px;
                 border: 1px solid gray;
                 border-radius: 5px;
                 border: 1px solid black;
                 outline-color: black;
             }
            .container1
            {
                max-width: 100%;
                margin: 0 auto;
            }
            .container1>h5
            {
                padding: 20px;
            }
            .cart
            {
                display: flex;
                width: 100%;
            }
            .products
            {
                flex: 0.75;
            }
            .product
            {
                display: flex;
                width: 100%;
                height: 200px;
                overflow: hidden;
                border: 1px solid silver;
                margin-bottom: 20px;
            }
            .product:hover
            {
                border: none;
                box-shadow: 2px 2px 4px rgba;
                transform: scale(1.01);
            }
            .product>img
            {
                width: 300px;
                height: 200px;
                object-fit: cover;
            }
            .product>img:hover
            {
                transform: scale(1.04);
            }
            .product-info
            {
                padding: 20px;
                width: 100%;
                position: relative;
            }
            .product-del,.product-date,.product-price
            {
                margin-bottom: 20px;
            }
            .product-chnage
            {
                
               
                padding: 10px 25px;
                background-color: green;
                color: white;
                cursor: pointer;
                border-radius: 5px;
            }
            .product-chnage:hover
            {
                background-color: white;
                color: green;
                font-weight: 600;
                border: 1px solid green;
            }
           .product-total
           {
               
               flex: 0.25;
               padding: 20px;
               height: 150px;
               width: 100%;
               border: 1px solid silver;
               border-radius: 5px;
               
              
           }
           .product-total p{
               display: flex;
               justify-content: space-between;
               margin-bottom: 30px;
               font-size: 15px;
           }
           .product-total a
           {
               display: block;
               text-align: center;
               height: 40px;
               line-height: 40px;
               background-color: tomato;
               color: white;
               text-decoration: none;
               
           }
           .product-total a:hover
           {
               background-color: red;
           }
           @media screen and (max-width:700px)
           {
               .Change
               {
                   display: none;
               }
               .product
               {
                   height: 150px;
               }
               .product>img
               {
                   height: 150px;
                   width: 200px;
               }
               .product-del,.product-date,.product-price
               {
                   margin-bottom: 10px;
               }
           }
           @media screen and (max-width:900px)
           {
               .cart
               {
                   flex-direction: column;
               }
               .product-total
               {
                   margin-left: 0;
                   margin-bottom: 20px;
                  
               }
           }
           @media screen and (max-width:1220px)
           {
               .container1
               {
                   max-width: 100%;
               }
           }
           .order-summary h5
           {
               display: flex;
               justify-content: space-between;
               margin-bottom: 5px;
               font-size: 15px;
               padding: 15px;
           }
        </style>
        
           
    </head>
    <body>
        
           <%@include file="all_components/navbar.jsp" %> 
           
           <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"></c:redirect>
            </c:if>


            <c:if test="${ not empty OfailedMsg}">
                <div class="alert alert-danger" role="alert">
                 ${OfailedMsg}
                </div>
                 <c:remove var="OfailedMsg" scope="session"/>
            </c:if>
           
            
           <div class="full-body">
               
            
<!--               <div class="container col-md-7">-->
<!--                <form action="" method="post">
                  <h5>Add Shipping Address</h5>
                  <div class="content">
                      <div class="input-box">
                          
                          <input type="text" name="name" placeholder="Name"required>
                      </div>
                      <div class="input-box">
                          
                          <input type="tel" name="phone" placeholder="Phone Number"required>
                      </div>
                      <div class="input-box">
                          
                          <input type="text" name="pincode" placeholder="Pin code"required>
                      </div>
                      <div class="input-box">
                          
                          <input type="text" name="email" placeholder="Email"required>
                      </div>
                      
                      
                      <div class="input-box">
                          
                          <input type="text" name="state" placeholder="State"required>
                      
                      </div>
                      <div class="input-box">
                          <input type="text" name="city" placeholder="City/District/Town"required>
                      
                      </div>
                      <div class="input-box" >
                          
                          <textarea  name="address" id="add" cols="30" rows="10" placeholder="Address(Area and Street)"required></textarea>
                      </div>
                      <div>
                          <p> <input type="checkbox"> Same as Billing Address
                              
                            <a href="#">  Add Billing Address</a></p>
                      </div>
                      <div class="button-container">
                          <center><button type="submit">Save & Deliver here </button></center> 
                      </div>
                      
                  </div>
                  </div>
                </form>-->
                <div class="container1 col-md-5">
                    <form action="" method="post">
                        <h2>Order Summary</h2>
                        <hr>
                        <div class="order-summary">
                            <h5>
                                        <span>Order Total</span>
                                        <span>$${(total>0)?dcf.format(total):0.00}</span>
                            </h5>
                            <h5>
                                      <span>Standard Delivery</span>
                                      
                                      <span class="Change product-chnage">Change</span>
                                            
                                              
                                      
                            </h5>
                             
                            <h5>
                                        <span>Delivery Charges </span>
                                        <span>$25.99</span>
                            </h5>
                        </div>
                        <div class="cart">
                            <div class="products">
                                <div class="product" style="overflow-x:auto">
                                    <%
                                     if(cart_list != null){
                                        
                                        for(cart c: cartProducts){ %>
                                        <img class="img-fluid ml-2" src="Items_img/<%=c.getcPhoto()%>">
                                    <%}
                                        }%>
                                    
                                    </div>
                                <div class="product-total" >
                                    <p>
                                        <span>Total Price</span>
                                        <span>$${(total>0)?dcf.format(total+25.99):0.00}</span>
                                    </p>
                                    <a href="checkout1.jsp">Back to Cart</a>
                                </div>
                            </div>
                            
                        </div>
                        
                    </form>
                  </div>


                     
               
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h5>Your Detailes</h5>
                            <form action="OrderServlet">
                                <input type="hidden" name="id" value="${userobj.id}">
                                <div class="form-row">
                                  <div class="form-group col-md-6">
                                    <label name="name"for="inputEmail4">Name</label>
                                    <input type="text" class="form-control" id="inputEmail4" placeholder="Email" value="${userobj.name}" name="username">
                                  </div>
                                 
                                </div>
                                
                              <div class="form-row">
                               <div class="form-group col-md-6">
                                 <label for="inputEmail4">Email</label>
                                 <input type="email" class="form-control" id="inputEmail4" placeholder="Email" value="${userobj.email}" name="email">
                               </div>
                               <div class="form-group col-md-6">
                                 <label for="inputPassword4">Phone Number</label>
                                 <input type="number" class="form-control" id="inputPassword4" placeholder="Password" value="${userobj.phno}" name="phno">
                               </div>
                             </div>
                                                            <div class="form-row">
                               <div class="form-group col-md-6">
                                 <label for="inputEmail4">Address</label>
                                 <input type="text" class="form-control" id="inputEmail4" placeholder="Email" name="address" value="${userobj.email}">
                               </div>
                               <div class="form-group col-md-6">
                                 <label for="inputPassword4">LandMark</label>
                                 <input type="text" class="form-control" id="inputPassword4" placeholder="Password" name="landmark" value="${userobj.email}">
                               </div>
                             </div>
                              <div class="form-row">
                               <div class="form-group col-md-6">
                                   
                                 <label for="inputEmail4">City</label>
                                 <input type="text" class="form-control" id="inputEmail4" placeholder="Email" name="city"  value="${userobj.email}">
                               </div>
                               <div class="form-group col-md-6">
                                 <label for="inputPassword4">Zip</label>
                                 <input type="text" class="form-control" id="inputPassword4" placeholder="Password" name="zip"  value="${userobj.email}">
                               </div>
                                  <div class="form-group">
                                      <label>Payment Mode</label>
                                      <select name="payment">
                                          <option value="nonselect">-Select-</option>
                                          <option value="c">Cash on dilivary</option>
                                      </select>
                                  </div>
                                  <br>
                                  
                             </div>
                                <div class="button-container">
                          <center><button type="submit">Place Order</button></center> 
                                </div>
                                  
                            </form>
                        </div>
                    </div>
                </div>


                    
           </div>
            
                    
                
                    
        
        
        
        
    
       
    </body> 
</html>
