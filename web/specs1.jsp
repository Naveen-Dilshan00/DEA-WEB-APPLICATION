<%-- 
    Document   : specs
    Created on : Apr 21, 2024, 4:31:35 PM
    Author     : THARINDU DISSANAYAKE
--%>

<%@page import="com.entity.user"%>
<%@page import="com.DAO.itemDAOImpl"%>
<%@page import="com.entity.itemDetailes"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" crossorigin="anonymous" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN">

<!DOCTYPE html>
<html lang="en">
    <head>

        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Apple Product Details</title>
        <style>

            /******globals****/
            body {
                font-family: 'open sans';
                overflow-x: hidden; }

            img {
                max-width: 100%; }

            .preview {
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                -webkit-flex-direction: column;
                -ms-flex-direction: column;
                flex-direction: column; }
            body {
                font-family: Arial, sans-serif;
                background-color: #f8f9fa;
                margin: 0;
            }
            .additional-info-container {
                display: grid;
                grid-template-columns: auto 1fr; /* Left column auto-sized, right column takes remaining space */
                grid-gap: 1px; /* Gap between rows */
                justify-content: center; /* Center the grid horizontally */
                padding: 10px;
                max-width: 90%; /* Limit maximum width of the container */
                margin: 0 auto; /* Center the container horizontally */
            }
            .info-heading {
                padding: 10px;
                background-color: #fff;
                text-align: left; /* Align heading text to left */
                font-size: 16px; /* Reduce heading font size */
                font-weight: 580; /* Make heading text bold */
            }
            .info-description {
                padding: 10px;
                background-color: #fff;
                text-align: right; /* Align description text to left */
                font-size: 14px; /* Reduce description font size */
                line-height: 1.3; /* Reduce line spacing */
                color: gray;
            }
            .spec-heading {
                text-align: center; /* Center the subheading */
                margin-top: 50px;
                bottom: 10px;/* Add space below the subheading */
            }
            .accordion-body{
                color: gray;
            }
            @media screen and (max-width: 996px) {
                .preview {
                    margin-bottom: 20px; } }

            .preview-pic {
                -webkit-box-flex: 1;
                -webkit-flex-grow: 1;
                -ms-flex-positive: 1;
                flex-grow: 1; }

            .preview-thumbnail.nav-tabs {
                border: none;
                margin-top: 15px; }
            .preview-thumbnail.nav-tabs li {
                width: 18%;
                margin-right: 2.5%; }
            .preview-thumbnail.nav-tabs li img {
                max-width: 100%;
                display: block; }
            .preview-thumbnail.nav-tabs li a {
                padding: 0;
                margin: 0; }
            .preview-thumbnail.nav-tabs li:last-of-type {
                margin-right: 0; }

            .tab-content {
                overflow: hidden; }
            .tab-content img {
                width: 100%;
                -webkit-animation-name: opacity;
                animation-name: opacity;
                -webkit-animation-duration: .3s;
                animation-duration: .3s; }

            .card {
                margin-top: 50px;
                background: #fdfdfd;
                padding: 3em;
                line-height: 1.5em; }
            .color-option {
                display: inline-block;
                width: 30px;
                height: 30px;
                border-radius: 50%;
                margin-right: 10px;
                cursor: pointer;
            }

            input[type="radio"]:checked + .color-option {
                border: 2px solid #4C4C4C; /* Add border for selected color */
            }

            .blue {
                background: #A3C1DC; }

            .black {
                background: #000 }

            .white {
                background: #EEEEEE; }

            .green {
                background: #17411E; }

            .rose {
                background: #ffb3d9; }

            /* Hide radio buttons */
            .color-options input[type="radio"] {
                display: none;
            }
            .quantity {
                margin-bottom: 20px;


            }
            .quantity input[type="number"] {
                width: 40px;
                text-align: center;
            }

            @media screen and (min-width: 997px) {
                .wrapper {
                    display: -webkit-box;
                    display: -webkit-flex;
                    display: -ms-flexbox;
                    display: flex; } }

            .details {
                display: -webkit-box;
                display: -webkit-flex;
                display: -ms-flexbox;
                display: flex;
                -webkit-box-orient: vertical;
                -webkit-box-direction: normal;
                -webkit-flex-direction: column;
                -ms-flex-direction: column;
                flex-direction: column; }


            .product-title, .price, .sizes, .colors {
                text-transform: UPPERCASE;
                font-weight: bold; }


            .checked, .price span {
                color: #ff9f1a; }

            .product-title, .rating, .product-description, .price, .vote, .sizes {
                margin-bottom: 5px; }

            .product-title {
                margin-top: 0; }

            .color {
                display: inline-block;
                vertical-align: middle;
                margin-right: 10px;
                height: 2em;
                width: 2em;
                border-radius: 15px; }
            .color:first-of-type {
                margin-left: 6px; }

            .add-to-cart, .like {
                background: #ff9f1a;
                padding: 1.2em 1.5em;
                border: none;
                text-transform: UPPERCASE;
                font-weight: bold;
                color: #fff;
                -webkit-transition: background .3s ease;
                transition: background .3s ease; }
            .add-to-cart:hover, .like:hover {
                background: #b36800;
                color: #fff; }

            .not-available {
                text-align: center;
                line-height: 2em; }
            .not-available:before {
                font-family: fontawesome;
                content: "\f00d";
                color: #fff; }


            .tooltip-inner {
                padding: 1.3em; }

            .review-no{
                color: gray;
                background-color: #D2D4E7;
                padding: 3px 8px 3px 8px;
            }
            .review-no1 , .review-no1 a{
                color: gray;
                background-color: #D2D4E7;
                padding: 4px;
                width: 50%;
                margin-bottom: 6px;

            }

            .hed{
                color: black;
            }

            .rating{
                margin-top: 0px;
                margin-bottom: 8px;

            }

            .colo{
                color: gray;    
            }


            .storage-options {
                margin-top: 5px;
            }
            .storage-options label {
                margin-right: 15px;
            }
            .btn2, .btn3{
                color: white;
                background-color: black;
                padding: 4px 10px 4px 10px;
                border: none;
                border-radius: 30px;
                margin-left: 5px

            }

            a{
                color: black; 
                padding: 0 1vh;

            }
            a:hover{
                color: black;
                text-decoration: none;
            }
            @-webkit-keyframes opacity {
                0% {
                    opacity: 0;
                    -webkit-transform: scale(3);
                    transform: scale(3); }
                100% {
                    opacity: 1;
                    -webkit-transform: scale(1);
                    transform: scale(1); } }

            @keyframes opacity {
                0% {
                    opacity: 0;
                    -webkit-transform: scale(3);
                    transform: scale(3); }
                100% {
                    opacity: 1;
                    -webkit-transform: scale(1);
                    transform: scale(1); } }

            /*# sourceMappingURL=style.css.map */
        </style>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,700" rel="stylesheet">
        
    </head>

    <body>
        <%@include file="all_components/navbar1.jsp" %>
        <%
            user u =(user)session.getAttribute("userobj");
        %>
        
         <%
        int id = Integer.parseInt(request.getParameter("Iid"));
        itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
        itemDetailes b = dao.getItemsById(id);
    
        %>
        
 
        <div class="container">
            <div class="card">
                <div class="container-fliud">
                    <div class="wrapper row">
                        <div class="preview col-md-6">

                            <div class="preview-pic tab-content">
                                <div class="tab-pane active" id="pic-1"><img src="admin_img/<%=b.getPhotoName()%>" /></div>
                                <div class="tab-pane" id="pic-2"><img src="Items_img/rose<%=b.getPhotoName()%>" /></div>
                                <div class="tab-pane" id="pic-3"><img src="Items_img/black<%=b.getPhotoName()%>" /></div>
                                <div class="tab-pane" id="pic-4"><img src="Items_img/white<%=b.getPhotoName()%>" /></div>
                                <div class="tab-pane" id="pic-5"><img src="Items_img/blue<%=b.getPhotoName()%>" /></div>
                            </div>
                            <ul class="preview-thumbnail nav nav-tabs">
                                <li class="active"><a data-target="#pic-1" data-toggle="tab" onclick="changeMainImage('pic-1', 'green', this)"><img src="admin_img/<%=b.getPhotoName()%>" /></a></li>
                                <li><a data-target="#pic-2" data-toggle="tab" onclick="changeMainImage('pic-2', 'rose', this)"><img src="Items_img/rose<%=b.getPhotoName()%>" /></a></li>
                                <li><a data-target="#pic-3" data-toggle="tab" onclick="changeMainImage('pic-3', 'black', this)"><img src="Items_img/black<%=b.getPhotoName()%>" /></a></li>
                                <li><a data-target="#pic-4" data-toggle="tab" onclick="changeMainImage('pic-4', 'white', this)"><img src="Items_img/white<%=b.getPhotoName()%>" /></a></li>
                                <li><a data-target="#pic-5" data-toggle="tab" onclick="changeMainImage('pic-5', 'blue', this)"><img src="Items_img/blue<%=b.getPhotoName()%>" /></a></li>
                            </ul>

                        </div>
                        <div class="details col-md-6">
                            <span class="review-no1"><a href="#">Home ></a><a href="#">iPhone</a>><span class="hed"> <%=b.getItemName()%></span></span>
                            <h3 class="product-title"><%=b.getItemName()%></h3>
                            <div class="rating">
                                <span class="review-no"><%=b.getStatus()%></span>
                            </div>
                            <h4 class="price"><%=b.getPrice()%></h4>
                            <p class="pdrop"> <s><%=b.getPrice()-100.0%></s></p>
                            <br><br>
                            <div class="colors">
                                <div class=""><p class="colo">Choose a Color</p></div>
                                <!-- Inside the color-options div, add onclick event to each color-option -->
                                <div class="color-options">
                                    <input type="radio" id="color_blue" name="phone_color" value="blue" onclick="selectColorFromOptions('blue')">
                                    <label for="color_blue" class="color-option blue"></label>

                                    <input type="radio" id="color_black" name="phone_color" value="black" onclick="selectColorFromOptions('black')">
                                    <label for="color_black" class="color-option black"></label>

                                    <input type="radio" id="color_white" name="phone_color" value="white" onclick="selectColorFromOptions('white')">
                                    <label for="color_white" class="color-option white"></label>

                                    <input type="radio" id="color_green" name="phone_color" value="green" onclick="selectColorFromOptions('green')">
                                    <label for="color_green" class="color-option green"></label>

                                    <input type="radio" id="color_rose" name="phone_color" value="rose" onclick="selectColorFromOptions('rose')">
                                    <label for="color_rose" class="color-option rose"></label>
                                </div>
                            </div>
                            <br>
                            <div class="storage">
                                <p class="colo">Choose a Storage</p>
                                <div class="storage-options">
                                    <label><input type="radio" name="storage" value="128GB"> 128GB</label>
                                    <label><input type="radio" name="storage" value="256GB"> 256GB</label>
                                    <label><input type="radio" name="storage" value="512GB"> 512GB</label>
                                </div>
                            </div>
                            <br>
                            <div class="action">
                                
                                <div class="col">
                                    <div><br></div>
                                    <div> 
                                         
                                        <a href="CartServlet?Iid=<%=b.getItemId()%>&&Uid=<%=u.getId()%>" class="btn2">Add To Cart</a>
                                        <a href="DirplaceOrder.jsp?Iid=<%=b.getItemId()%>" class="btn3">Buy Now</a>
                                      
                                    </div>
                                </div>
                            </div></div>

                    </div>
                </div>
            </div>
            <h1 class="spec-heading">Specifications</h1>
            <div class="additional-info-container">
                <div class="info-heading">Brand</div>
                <div class="info-description">
                    <p>Apple</p>
                </div>

                <div class="info-heading">Warranty</div>
                <div class="info-description">
                    <p>USA Region LL/A(E-SIM), Apple Care Warranty, Genxt Warranty</p>
                </div>

                <div class="info-heading">Storage</div>
                <div class="info-description">
                    <p>128GB,256GB,512GB,1TB</p>
                </div>

                <div class="info-heading">Camera</div>
                <div class="info-description">
                    <p>12MP Front / 48MP Back</p>
                </div>

                <div class="info-heading">Color</div>
                <div class="info-description">
                    <p>Deep Purple,Gold,Silver,Light Blue,Green</p>
                </div>

                <div class="info-heading">Operating System</div>
                <div class="info-description">
                    <p>iOS 16</p>
                </div>
            </div>
            <div class="container rounded h-75 w-77">
                <div style="margin: 50px auto 10px"><h1 class="text-center" >FAQs</h1></div>
                <div class="accordion" id="accordionExample">
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseOne" aria-expanded="true"
                                    aria-controls="collapseOne">
                                How to buy Apple products?
                            </button>
                        </h2>
                        <div id="collapseOne" class="accordion-collapse collapse show"
                             data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                Place your order by adding items to the cart and go to the checkout page to make the payment.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed" type="button"
                                    data-bs-toggle="collapse" data-bs-target="#collapseTwo"
                                    aria-expanded="false" aria-controls="collapseTwo">
                                What payment methods are accepted?
                            </button>
                        </h2>
                        <div id="collapseTwo" class="accordion-collapse collapse"
                             data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                Credit card/Debit card payments and Paypal payments are Accepted.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseThree" aria-expanded="false"
                                    aria-controls="collapseThree">
                                Are there any warranties?
                            </button>
                        </h2>
                        <div id="collapseThree" class="accordion-collapse collapse"
                             data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                Yes, you will receive 1 year Apple Care Warranty.
                            </div>
                        </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header">
                            <button class="accordion-button collapsed"
                                    type="button" data-bs-toggle="collapse"
                                    data-bs-target="#collapseFour" aria-expanded="false"
                                    aria-controls="collapseFour">
                                Can I track my order?
                            </button>
                        </h2>
                        <div id="collapseFour" class="accordion-collapse collapse"
                             data-bs-parent="#accordionExample">
                            <div class="accordion-body">
                                No You can not track your order.
                            </div>
                        </div>
                    </div>
                </div>
            </div>






        </div>
                                      
        <!-- JavaScript -->
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
                crossorigin="anonymous">
        </script>
        
        <script>
                                        function increaseQuantity() {
                                            var quantityInput = document.getElementById("quantity");
                                            quantityInput.value = parseInt(quantityInput.value) + 1;
                                        }

                                        function decreaseQuantity() {
                                            var quantityInput = document.getElementById("quantity");
                                            if (parseInt(quantityInput.value) > 1) {
                                                quantityInput.value = parseInt(quantityInput.value) - 1;
                                            }
                                        }

                                        function changeMainImage(imageId, color, element) {
                                            $('.preview-pic .tab-pane').removeClass('active');
                                            $('.preview-thumbnail .nav-tabs li').removeClass('active');
                                            $('.preview-thumbnail .nav-tabs li a').removeClass('glow'); // Remove glow from all circles

                                            $('#' + imageId).addClass('active');
                                            $('.preview-thumbnail .nav-tabs a[data-target="#' + imageId + '"]').parent().addClass('active');
                                            $(element).addClass('glow'); // Add glow to selected circle

                                            // Auto-select color radio button
                                            $('input[name="phone_color"]').prop('checked', false); // Uncheck all radio buttons
                                            $('input[name="phone_color"][value="' + color + '"]').prop('checked', true);

                                            // Auto-select image based on color
                                            var imageIndex = parseInt(imageId.split('-')[1]) - 1; // Extract image index from imageId
                                            $('ul.preview-thumbnail li:eq(' + imageIndex + ') a').click(); // Trigger click event on corresponding thumbnail
                                        }
                                        function selectColorFromOptions(color) {
                                            // Determine the image ID corresponding to the selected color
                                            var imageId;
                                            switch (color) {
                                                case 'blue':
                                                    imageId = 'pic-5';
                                                    break;
                                                case 'black':
                                                    imageId = 'pic-3';
                                                    break;
                                                case 'white':
                                                    imageId = 'pic-4';
                                                    break;
                                                case 'green':
                                                    imageId = 'pic-1';
                                                    break;
                                                case 'rose':
                                                    imageId = 'pic-2';
                                                    break;
                                                default:
                                                    return;
                                            }

                                            // Call the changeMainImage function to update the main image and color selection
                                            changeMainImage(imageId, color, document.querySelector('.preview-thumbnail a[data-target="#' + imageId + '"]'));
                                        }

        </script>
        <%@include file="all_components/footer.jsp"%>  
    </body>
</html>
