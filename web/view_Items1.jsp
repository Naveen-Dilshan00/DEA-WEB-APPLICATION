<%-- 
    Document   : specs
    Created on : Apr 21, 2024, 4:31:35 PM
    Author     : THARINDU DISSANAYAKE
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!------ Include the above in your HEAD tag ---------->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


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

<<<<<<< Updated upstream
.blue {
  background: #A3C1DC; }

.gold {
  background: #FFEF99; }

.white {
  background: #FFFFFF; }

.green {
  background: #17411E; }

.purple {
  background: #8E5A95; }

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
.review-no1{
    color: gray;
    background-color: #D2D4E7;
    padding: 3px 8px 3px 8px;
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
  
  <div class="container">
    <div class="card">
      <div class="container-fliud">
        <div class="wrapper row">
          <div class="preview col-md-6">
            
            <div class="preview-pic tab-content">
              <div class="tab-pane active" id="pic-1"><img src="images/14green.jpg" /></div>
              <div class="tab-pane" id="pic-2"><img src="images/14purple.jpg" /></div>
              <div class="tab-pane" id="pic-3"><img src="images/14gold.jpg" /></div>
              <div class="tab-pane" id="pic-4"><img src="images/14white.jpg" /></div>
              <div class="tab-pane" id="pic-5"><img src="images/14blue.jpg" /></div>
            </div>
            <ul class="preview-thumbnail nav nav-tabs">
              <li class="active"><a data-target="#pic-1" data-toggle="tab"><img src="Items_img/14green.jpg" /></a></li>
              <li><a data-target="#pic-2" data-toggle="tab"><img src="Items_img/14purple.jpg" /></a></li>
              <li><a data-target="#pic-3" data-toggle="tab"><img src="Items_img/14gold.jpg" /></a></li>
              <li><a data-target="#pic-4" data-toggle="tab"><img src="Items_img/14white.jpg" /></a></li>
              <li><a data-target="#pic-5" data-toggle="tab"><img src="Items_img/14blue.jpg" /></a></li>
            </ul>
            
          </div>
          <div class="details col-md-6">
                                            <span class="review-no1">Home > iPhone > <span class="hed">iPhone 15 Pro Max</span></span>
            <h3 class="product-title">iPhone 14 Pro</h3>
            <div class="rating">
              <span class="review-no">In stock</span>
            </div>
            <h4 class="price">$799</h4>
                                                <p class="pdrop"> <s>$869</s></p>
                                                <br><br><br><br>
                                                <div class="colors">
                                                <div class=""><p class="colo">Choose a Color</p></div>
                                                    <div class="color-options">
  <input type="radio" id="color_blue" name="phone_color" value="blue">
  <label for="color_blue" class="color-option blue"></label>

  <input type="radio" id="color_gold" name="phone_color" value="gold">
  <label for="color_gold" class="color-option gold"></label>

  <input type="radio" id="color_white" name="phone_color" value="white">
  <label for="color_white" class="color-option white"></label>

  <input type="radio" id="color_green" name="phone_color" value="green">
  <label for="color_green" class="color-option green"></label>
  
  <input type="radio" id="color_purple" name="phone_color" value="purple">
  <label for="color_purple" class="color-option purple"></label>
</div>
                                                </div>
                                                
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
            <div class="quantity">
        <p>Qty:</p>
      

            <input type="number" id="quantity" name="quantity" min="1" value="1">
        </div>
                                                <div class="col">
                                                    <div><br></div>
                                                    <div> 
                                                    <button class="btn2">Add To Cart</button>
                                                    <button class="btn3">Buy Now</button>
                                                    </div>
                                                </div>
          </div></div>
                                                
        </div>
      </div>
    </div>
  </div>
      
      <script>
       function increaseQuantity() {
            var quantityInput = document.getElementById("quantity");
            quantityInput.value = parseInt(quantityInput.value) + 1;
        }

        function decreaseQuantity() {
            var quantityInput = document.getElementById("quantity");
            if (parseInt(quantityInput.value) > 1) {
                quantityInput.value = parseInt(quantityInput.value) - 1;
=======
            .card {
                margin-top: 50px;
                background: #eee;
                padding: 3em;
                line-height: 1.5em; }
            .color-option {
                display: inline-block;
                width: 30px;
                height: 30px;
                border-radius: 50%;
                margin-right: 10px;
                cursor: pointer;
>>>>>>> Stashed changes
            }

            input[type="radio"]:checked + .color-option {
                border: 1px solid #4C4C4C; /* Add border for selected color */
            }

            .blue {
                background: #A3C1DC; }

            .gold {
                background: #FFEF99; }

            .white {
                background: #FFFFFF; }

            .green {
                background: #17411E; }

            .purple {
                background: #8E5A95; }

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

        <div class="container">
            <div class="card">
                <div class="container-fliud">
                    <div class="wrapper row">
                        <div class="preview col-md-6">

                            <div class="preview-pic tab-content">
                                <div class="tab-pane active" id="pic-1"><img src="Items_img/14green.jpg" /></div>
                                <div class="tab-pane" id="pic-2"><img src="Items_img/14purple.jpg" /></div>
                                <div class="tab-pane" id="pic-3"><img src="Items_img/14gold.jpg" /></div>
                                <div class="tab-pane" id="pic-4"><img src="Items_img/14white.jpg" /></div>
                                <div class="tab-pane" id="pic-5"><img src="Items_img/14blue.jpg" /></div>
                            </div>
                            <ul class="preview-thumbnail nav nav-tabs">
                                <li class="active"><a data-target="#pic-1" data-toggle="tab" onclick="changeMainImage('pic-1', 'green', this)"><img src="Items_img/14green.jpg" /></a></li>
                                <li><a data-target="#pic-2" data-toggle="tab" onclick="changeMainImage('pic-2', 'purple', this)"><img src="Items_img/14purple.jpg" /></a></li>
                                <li><a data-target="#pic-3" data-toggle="tab" onclick="changeMainImage('pic-3', 'gold', this)"><img src="Items_img/14gold.jpg" /></a></li>
                                <li><a data-target="#pic-4" data-toggle="tab" onclick="changeMainImage('pic-4', 'white', this)"><img src="Items_img/14white.jpg" /></a></li>
                                <li><a data-target="#pic-5" data-toggle="tab" onclick="changeMainImage('pic-5', 'blue', this)"><img src="Items_img/14blue.jpg" /></a></li>
                            </ul>

                        </div>
                        <div class="details col-md-6">
                            <span class="review-no1"><a href="#">Home ></a><a href="#">iPhone</a>><span class="hed"> iPhone 15 Pro Max</span></span>
                            <h3 class="product-title">iPhone 14 Pro</h3>
                            <div class="rating">
                                <span class="review-no">In stock</span>
                            </div>
                            <h4 class="price">$799</h4>
                            <p class="pdrop"> <s>$869</s></p>
                            <br><br>
                            <div class="colors">
                                <div class=""><p class="colo">Choose a Color</p></div>
                                <!-- Inside the color-options div, add onclick event to each color-option -->
                                <div class="color-options">
                                    <input type="radio" id="color_blue" name="phone_color" value="blue" onclick="selectColorFromOptions('blue')">
                                    <label for="color_blue" class="color-option blue"></label>

                                    <input type="radio" id="color_gold" name="phone_color" value="gold" onclick="selectColorFromOptions('gold')">
                                    <label for="color_gold" class="color-option gold"></label>

                                    <input type="radio" id="color_white" name="phone_color" value="white" onclick="selectColorFromOptions('white')">
                                    <label for="color_white" class="color-option white"></label>

                                    <input type="radio" id="color_green" name="phone_color" value="green" onclick="selectColorFromOptions('green')">
                                    <label for="color_green" class="color-option green"></label>

                                    <input type="radio" id="color_purple" name="phone_color" value="purple" onclick="selectColorFromOptions('purple')">
                                    <label for="color_purple" class="color-option purple"></label>
                                </div>
                            </div>

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
                                <div class="quantity">
                                    <p>Qty:</p>


                                    <input type="number" id="quantity" name="quantity" min="1" value="1">
                                </div>
                                <div class="col">
                                    <div><br></div>
                                    <div> 
                                        <button class="btn2">Add To Cart</button>
                                        <button class="btn3">Buy Now</button>
                                    </div>
                                </div>
                            </div></div>

                    </div>
                </div>
            </div>
        </div>
        <!-- JavaScript -->
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
        <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
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
                                                case 'gold':
                                                    imageId = 'pic-3';
                                                    break;
                                                case 'white':
                                                    imageId = 'pic-4';
                                                    break;
                                                case 'green':
                                                    imageId = 'pic-1';
                                                    break;
                                                case 'purple':
                                                    imageId = 'pic-2';
                                                    break;
                                                default:
                                                    return;
                                            }

                                            // Call the changeMainImage function to update the main image and color selection
                                            changeMainImage(imageId, color, document.querySelector('.preview-thumbnail a[data-target="#' + imageId + '"]'));
                                        }

        </script>
        </body>
        </html>
