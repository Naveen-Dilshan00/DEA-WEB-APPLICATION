
<%@page import="com.DAO.itemDAOImpl"%>
<%@page import="com.entity.itemDetailes"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%-- 
        Document   : shop
        Created on : Apr 11, 2024, 9:56:35 AM
        Author     : ASUS TUF
    --%>

    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>iPhone</title>

            <style>

.main{
    background: url(image/Wallpaper.jpg)no-repeat;
    background-size: cover;
    height: 75vh;
    background-position: 50% 50%;
    width: 100%;
   
}
    .dis{
        font-weight: bold;
    }

     .card-deck {
     margin-top:40px; /* Adjust the value to increase or decrease the row gap */

    }

    .card-deck .card {
        margin-bottom: 20px; /* Add margin between the cards */
        border: none;

    }

    /* Add padding to the container */
    .container {
        padding-right: 15px;
        padding-left: 15px;
    }

    .card-img-top {
        max-width: 100%; /* Adjust the maximum width of the image */
        height: auto;
    }

    .price {
        color: black; /* Adjust the color as needed */
        font-weight: bold;
         /* Adjust the margin as needed */
        padding-right: 0px
    }


    .btn1{
       margin-top: 80px;
    }

    /* card button */
    .card-button {
        width: 100%;
        height: 35px;
        border: none;
        outline: none;
        background-color: black;
        color: white;
        font-weight: 700;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s, color 0.3s;
    }
 

    .card-button:hover {
        background-color: #0056b3;
    }

    .image-item {
        position: relative;
    }

    .image-text {
        position: absolute;
        top: 50%;
        left: 55%;
        transform: translate(-50%, -50%);
        background-color: transparent;
        padding: 5px;
        border-radius: 5px;
        white-space: nowrap;
        margin-left: 33px;
        font-size: 20px;
        font-weight: bold;
    }

    .smaller-image {
        max-width: 50px; /* Adjust the maximum width of the images */
        height: auto;
        margin-right: 10px; /* Add some margin to separate the text from the image */
    }


    .main{
         margin-bottom: 50px;
    }

    .text-group {
                margin-bottom: 20px; /* Adjust margin as needed */
                margin-top: 100px;
                text-align: left;  
     }

     .textsec{
        margin-top: 100px;
        padding-top: 150px;
    }

    .more{
        padding-left: 40px;
        margin-top: 20px;
        padding-top: 40px;

    }
    .sec1{
        margin-bottom: 0px;
    }

    .faq{
        margin-bottom: 50px;
        margin-top: 0px;
    }

    .faqlast{
        margin-top: 50px;
    }

    .lastbtn{
        border-color: black;
        color: black;
        background-color: white;
        width: 20px;
        height: auto
    }

    .end{
         background: url(image/Wallpaper.jpg)no-repeat;
        background-size: cover;
        height: 75vh;
        background-position: 50% 50%;
        width: 100%;
        margin-top: 80px;
        align-content: center;
        align-items: center;;
        
    }
    .text_groupend{
        align-content: center;
        align-items: center;
    }
    
    .image_1{
        width: 100%;
        float: right;
        text-align: right;
}
.buy{
   color: white; 
   text-decoration: none;
   
}

.buy:hover {
    color: white; /* Change text color to white on hover */
}

@media (max-width: 768px) {
            .text-group {
                margin-top: 50px;
                text-align: center;
            }
            .image-text {
                left: 50%;
                transform: translateX(-50%);
                text-align: center;
            }
            .card {
                margin-bottom: 30px;
            }
            .faq h1 {
                text-align: center;
            }
            .faqlast {
                text-align: center;
            }
            .section_3 {
                padding-top: 50px;
                text-align: center;
                padding-left: 0px;
            }
            .uni_text {
                text-align: center;
            }
            ._text {
                text-align: center;
            }
            .more {
                text-align: center;
            }
            .image_1 img {
                max-width: 50%;
                height: auto;
                margin: 0 auto;
                display: block;
            }
        }


    
   

            </style>

            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
            <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
            <link rel="stylesheet" type="text/css" href="shopstyle.css">
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" />
             <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css">
        </head>
        <body>
            <%
            user u =(user)session.getAttribute("userobj");
            %>
            
            <%@include file="all_components/navbar.jsp"%>

            <section class="main">
               <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="text-group">

                        <p class="dis">Discover<p>
                        <h2>Unleash Your Potential</h2>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="text-group">
                        <h5>Explore our wide range of high-quality Apple products. From iPhones to 
                           MacBooks, we have everything you need to stay connected and productive.</h5>
                         <button class="btn btn-outline-dark">Buy Now</button>
                          <button class="btn btn-outline-dark">Learn More</button>


                    </div>
                </div>
            </div>
        </div>
            </section>

            <div class="container">
        <div class="row" style="margin-top:100px;">
            <div class="col-md-4">
                <div class="image-item d-flex align-items-center">
                    <img src="Items_img/img4.png" alt="Image 1" class="img-fluid smaller-image" style="margin-right: 10px;">
                    <p class="image-text">Free next-day<br> shipping</p>

                </div>
            </div>
            <div class="col-md-4">
                <div class="image-item d-flex align-items-center">
                    <img src="Items_img/img5.png" alt="Image 2" class="img-fluid smaller-image">
                    <p class="image-text">ready in one hour</p>
                </div>
            </div>
            <div class="col-md-4">
                <div class="image-item d-flex align-items-center">
                    <img src="Items_img/img6.png" alt="Image 3" class="img-fluid smaller-image">
                    <p class="image-text">Same-day delivery</p>
                </div>
            </div>
        </div>
    </div>





      <!-- newsletter  -->

    <div class="newsletter">
                    <div class="container">
                            <div class="row">
                                    <div class="col-lg-6">
                                            <div class="newsletter_text d-flex flex-column justify-content-center align-items-lg-start align-items-md-center text-center">
                                                    <p class="dis">Discover</p>
                                                    <h2>iPhones</h2>
                                                    <p>Explore the lineup.</p>
                                            </div>
                                    </div>
                                    <div class="col-lg-6">
                                            <form action="post">
                                                    <div class="newsletter_form d-flex flex-md-row flex-column flex-xs-column align-items-center justify-content-lg-end justify-content-center">
                                                            <input id="newsletter_text" type="text" placeholder="search here" required="required" data-error="Valid email is required."style="border-radius:7px;">
                                                            <button id="newsletter_submit" type="submit" class="srch newsletter_submit_btn trans_300" value="Submit">Search</button>
                                                    </div>
                                            </form>
                                    </div>
                            </div>
                    </div>
            </div>


    <!-- Products  -->
     <div class="card-deck"><!-- added  -->
        <div class="row row1">
        <%
                    itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
                    List<itemDetailes> list2 = dao.getAlliphone();
                    for(itemDetailes b : list2){
                    %>
     
      <div class="col-md-3">
       <div class="card card-ho">
           <img class="card-img-top"  src="Items_img/<%=b.getPhotoName()%>" alt="Card image cap">
        <div class="card-body">
            <div class="row">
                <div class="col-md-8"> <h5 class="card-title"><%=b.getItemName()%></h5></div>
                 <div class="col-md-4"> <h5 class="card-title"><span class="price">$<%=b.getPrice()%></span></h5></div>
            </div>
         
          <p class="card-text">512GB</p>
        </div>
            <%
                if(b.getStatus().equals("Active")){
            %>
                      <%
                            if(u == null){
                      %>
                            <div class="card-footer">
                               <button class="card-button"> <a href="login1.jsp" class="buy">Buy Now</a></button>
                            </div>
                      <%
                            } else{
                      %>
                            <div class="card-footer">


                                <button class="card-button"> <a href="specs1.jsp?Iid=<%=b.getItemId()%>" class="buy">Buy Now</a></button>


                            </div>
                      <%
                            }
                      %>
            <%
                } else{
            %>
                <div class="card-footer">


                    <a href="specs1.jsp?Iid=<%=b.getItemId()%> " class="buy" disabled><button class="card-button"> Out Of Stock</button></a>

                </div>
            <%
                }
            %>
      </div>
     </div>
      <%
      }
      %>
   </div>
     </div>
 

                    
                    

                         <div class="section layout_padding sec1" style=" margin-bottom: 0px;">
                <div class="container">
    <div class="section_3">
                      <div class="row">
                         <div class="textsec col-md-6">
                             <p>Discover</p>
                            <h4 class="uni_text">New Arrivals and Seasonal Promotions</h4>
                            <p class="_text">Explore our latest collection of Apple products, featuring the newest arrivals and seasonal promotions. Find the perfect device for your needs and stay up to date with the latest technology</p>

                            <div class="row g-5 pt-2 mb-5">
                                <div class="col-sm-6 wow fadeIn" data-wow-delay="0.3s">

                                    <h5 class="mb-3">New</h5>
                                    <span>Discover the latest Apple products, including iPhones, iPads, MacBooks, and more.</span>
                                </div>
                                <div class="col-sm-6 wow fadeIn" data-wow-delay="0.4s">

                                    <h5 class="mb-3">Sale</h5>
                                    <span>Shop our limited-time offers and enjoy great savings on select Apple products.</span>
                                </div>
                            </div>
                            <div class="read_bt1"><a href="carttest.jsp">Shop</a></div>


                         </div>
                         <div class="col-md-6">
                            <div class="image_1" style="padding-bottom:0px;"><img src="image/download11.jpg"></div>
                         </div>
                      </div>
                   </div>
                    </div>
        </div>

                         <!-- comment -->
                         <div class="container" style=" margin-top: 0px;">
                                 
                           <!-- FAQs  -->

    <div class="col-lg-6 faq">
    <div class=" justify-content-center align-items-lg-start align-items-md-center ">
      <h1>FAQs</h1>
    <p>Find answers to common questions about our products, including specifications, compatibility, and availability</p>
    </div>
    </div>


    <div class="accordion">
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingOne">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                    How to order?
                </button>
            </h2>
            <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Anim pariatur cliche 
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    What are the payment options?
                </button>
            </h2>
            <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Abore wes anderson cred  heard of them accusamus labore sustainable VHS.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingThree">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                    What is the return policy?
                </button>
            </h2>
            <div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                   h 3 wolf  you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingFour">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                    How can I track my order?
                </button>
            </h2>
            <div id="collapseFour" class="accordion-collapse collapse" aria-labelledby="headingFour" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
                </div>
            </div>
        </div>
        <div class="accordion-item">
            <h2 class="accordion-header" id="headingFive">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseFive" aria-expanded="false" aria-controls="collapseFive">
                    Are the products genuine?
                </button>
            </h2>
            <div id="collapseFive" class="accordion-collapse collapse" aria-labelledby="headingFive" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    Quality is key at iSpot Lanka. Each device undergoes rigorous testing to meet high standards. Trust iSpot Lanka for an exceptional experience from day one.
                </div>
            </div>
        </div>
    </div>  





         <div class="col-lg-6 faqlast">
    <div class=" justify-content-center align-items-lg-start align-items-md-center ">
      <h1>Still have questions?</h1>
    <p>Contact our support team for further assistance.</p>
    <button type="button" class="btn btn-outline-dark">Contact</button>
    </div> 
       </div> 
                        
                           <!-- comment -->
                             </div>
                         
                         
                           <center>
                                <div class="end">
        <div class="text_groupend "style="color:white;">
    <h1>Stay Updated with Exclusive Deals</h1>
    <p>Sign up to receive updates on new product releases and exclusive deals.</p>

                       <button class="btn btn-outline-dark" style="color:white;">Sign Up</button>
                         <button class="btn btn-outline-dark"style="color:white;">Learn More</button>

    </div>
        </div>
        </center>
                           

                           
   <script src=
"https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/5.0.0/js/bootstrap.min.js"></script>

        </body>
    </html>
