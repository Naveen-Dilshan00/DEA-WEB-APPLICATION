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
        
        <style type="text/css">
            *{
                padding: 0;
                margin: 0;
                font-family: sans-serif;
                box-sizing: border-box;
                
             }
             body
             {
                 display: flex;
                 
                height: 100vh;
                
             }
             .container,.container1
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
                position: absolute;
                bottom: 20px;
                right: 20px;
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
           .order-summary p
           {
               display: flex;
               justify-content: space-between;
               margin-bottom: 5px;
               font-size: 15px;
               padding: 15px;
           }
           .add
           {
               width: 100%;
           }
          
           .cart1
           {
               border-left: 1px solid silver;
               padding:6px;
           }
        </style>
    </head>
    <body>
        
            
     
           
            <div class="container">
                <form action="" method="post">
                  <h5>Add Shipping Address</h5>
                 <section class="checkout">
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
                          
                          <textarea  class="add" name="address" id="add" cols="30" rows="5" placeholder="Address(Area and Street)"required></textarea>
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
                </form>
</section>
                 <section class="cart1">
                    <div class="cart-item-box">
                        <div class="order-summary">
                            
                            <p><center>Cart------Delivery------Payment</center></p>
                        
                            <div>
                            <h2>Order Summary</h2>
                        </div>
                            <p>
                                        <span>Order Total</span>
                                        <span>$499.99</span>
                            </p><br>
                            <p>
                                        <span>Delivery Charges </span>
                                        <span>$25.99</span>
                                    </p>
                        </div>
                        <div>
                            <h2>Delivery Summary</h2>
                        </div>
                         <div class="cart">
                            <div class="products">
                                <div class="product">
                                    <img src="Watch1.jpg">
                                    <div class="product-info">
                                        <h3 class="product-del">Standard Delivery</h3>
                                        <h4 class="product-date">Expected on 21 May 2024</h4>
                                        <h4 class="product-price">$499.99</h4>
                                        <p class="product-chnage">
                                            <span class="Change">Change</span>
                                        </p>
                                    </div>
                                    </div>
                                <div class="product-total" >
                                    <p>
                                        <span>Total Price</span>
                                        <span>$525.20</span>
                                    </p>
                                    <a href="#">Place Order</a>
                                </div>
                            </div>
                            
                        
                    
                    </div>
                </section>

            </div>
                    
                
                    
        
        
        
        
    
       
    </body> 
</html>
