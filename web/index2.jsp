<%-- 
    Document   : index2
    Created on : Apr 26, 2024, 1:09:00 AM
    Author     : DELL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
  <script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<style>
     .c-item {
  height:550px;
}

.c-img {
  height: 100%;
  object-fit: cover;
  filter: brightness(0.6);
}

.btn-primary {
  background-color: white;
  color: black;
  border: 2px solid black;
  box-shadow: 0 0 5px rgba(0, 0, 0, 0.5);
  border-radius: 20px;
}


.boximage1 img,
    .boximage2 img {
      max-height: 280px; 
      width: auto;
      max-width: 100%;
    }

    

.box12 {
 
  display: flex;
}

.box1 {
  width:100%;
  height: 450px;
  background-color: black;
  color : white ;
  margin: 6px;
  text-align: center;
  
}

.text-container1 {
  margin-top: 16px; 
}

.button-container1 {
  margin-top: 45px; 
}

.b1 {
  border-radius: 15px; 
  padding-left: 10px;
  padding-right: 10px;
}

.b2 {
  border-radius: 15px; 
  padding-left: 10px;
  padding-right: 10px;
  padding-top: 5px;
  background-color: black;
  color: white;
  border-color: white;
}

.btn-primary {
      background-color:white;
      color:black;
    }
  
    .btn-primary:hover,
    .btn-primary:hover {
      background-color: rgb(11, 0, 114) !important;
      border-color: black !important;
    }
    .btn-primary:hover b,
    .btn-primary:hover b {
      color: white !important;
    }

    .btn-success {
      background-color:black;
      color:white;
      border-radius: 20px;
      border-color: white;
    }

    .btn-success:hover {
      background-color:rgb(0, 2, 109);
      color:white;
    }

    .button-container2 .btn-success:hover,
    .button-container1 .btn-success:hover {
      background-color: rgb(11, 0, 114) !important;
      border-color: black !important;
    }
    .button-container2 .btn-success:hover b,
    .button-container1 .btn-success:hover b {
      color: white !important;
    }

.box2 {
  width:100%;
  height: 450px;
  background-color: rgb(238, 238, 238);
  color : black ;
  text-align: center;
  margin: 6px;
 
}

.text-container2 {
  margin-top: 16px; 
}

.button-container2 {
  margin: 20px;
}

.box34 {
  margin: 10px;
  display: flex;
}

.bestsellers {
  margin-top: 50px;
  padding: 10px;
}

.rowbs {
margin-bottom: 30px;
}

.card:hover{
  box-shadow: -2px -1px 25px -4px rgba(0,0,0,75);
  -webkit-box-shadow: -2px -1px 25px -4px rgba(0,0,0,75);
  -moz-box-shadow: -2px -1px 25px -4px rgba(0,0,0,75);

}

.b2:hover,
    .b2:hover {
      background-color: rgb(11, 0, 114) !important;
      border-color: black !important;
    }
    .b2:hover b,
    .b2:hover b {
      color: white !important;
    }

</style>
  

  <title>Bootstrap 5 Carousel Slider</title>
</head>
<body>
  <div id="hero-carousel" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">

    <div class="carousel-indicators">
      <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
      <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="1" aria-label="Slide 2"></button>
      <button type="button" data-bs-target="#hero-carousel" data-bs-slide-to="2" aria-label="Slide 3"></button>
      
    </div>

    <div class="carousel-inner">
      <div class="carousel-item active c-item">
        <img src= "image/indivar-kaushik-gcA0W3OOOts-unsplash.jpg" class="d-block w-100 c-img" alt="Slide 1">
        <div class="carousel-caption top-0 mt-4">
          <p class="mt-5 fs-3 text-uppercase">Think Different</p>
          <h1 class="display-1 fw-bolder text-capitalize">Who We Are</h1>
          <button class="btn btn-primary px-4 py-2 fs-5 mt-5">About us</button>
        </div>
      </div>
      <div class="carousel-item c-item">
        <img src="image/mobile-phone-different-perspectives_52683-51648.jpg" class="d-block w-100 c-img" alt="Slide 2">
        <div class="carousel-caption top-0 mt-4">
          <p class="text-uppercase fs-3 mt-5">Titanium. So Strong. So light</p>
          <p class="display-1 fw-bolder text-capitalize">iPhone 15 Pro Max</p>
          <button class="btn btn-primary px-4 py-2 fs-5 mt-5" data-bs-toggle="modal"
            data-bs-target="#booking-modal">Buy Now</button>
        </div>
      </div>
      <div class="carousel-item c-item">
        <img src="image/56ad99dd-4c57-45b3-9c77-aaae7959939b_1920x1080.jpg" class="d-block w-100 c-img" alt="Slide 3">
        <div class="carousel-caption top-0 mt-4">
          <p class="text-uppercase fs-3 mt-5">The Ultimate Theatre. Wherever You Are.</p>
          <p class="display-1 fw-bolder text-capitalize">Apple Vision Pro</p>
          <button class="btn btn-primary px-4 py-2 fs-5 mt-5" data-bs-toggle="modal"
            data-bs-target="#booking-modal">Buy Now</button>
        </div>
      </div>
    </div>
  
  </div>

  <!-- 4 boxes -->

  <div class="container-fluid">
    <div class="row align-items-start">
    <div class="row">
      <div class="col-md-6">
        <div class="box1">
          <div class="boximage1">
            <img src="image/wwdc24-p1-og.png" class="img-fluid" alt="Apple Worldwide Developers Conference">
          </div>
          <div class="text-container1">
            <h4>Apple Worldwide Developers Conference</h4>
            <h4>Join Us Online June 10 - 14</h4>
            <div class="button-container1">
              <a href="#" class="btn btn-primary"><b>Join Now</b></a>
            </div>
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="box2">
          <div class="text-container2">
            <h1><b>MacBooks</b></h1>
            <h4>Lean. Mean. Stylish</h4>
            <div class="button-container2">
              <a href="#" class="btn btn-primary"><b>Learn More</b></a>
              <a href="#" class="btn btn-success"><b>Buy Now</b></a>
            </div>
          </div>
          <div class="boximage2">
            <img src="image/macbookair-og-202402-removebg-preview.png" class="img-fluid" alt="MacBooks">
          </div>
        </div>
      </div>
    </div>

    <div class="row">
      <div class="col-md-6">
        <div class="box2">
          <div class="text-container2">
            <h1><b>iPhone 15 PRO</b></h1>
            <h4>New Camera. New Design. Newphoria</h4>
            <div class="button-container2">
              <a href="#" class="btn btn-primary"><b>Learn More</b></a>
              <a href="#" class="btn btn-success"><b>Buy Now</b></a>
            </div>
          </div>
          <div class="boximage2">
            <img src="image/image-for-representation-removebg-preview.png" class="img-fluid" alt="iPhone 15 PRO">
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="box1">
          <div class="text-container2">
            <h1><b>iWATCHES</b></h1>
            <h4>Smarter. Brighter. Mightier</h4>
            <div class="button-container2">
              <a href="#" class="btn btn-success"><b>Learn More</b></a>
              <a href="#" class="btn btn-primary"><b>Buy Now</b></a>
            </div>
          </div>
          <div class="boximage2">
            <img src="image/v4_34.png" class="img-fluid" alt="iWATCHES">
          </div>
        </div>
      </div>
    </div>
  </div>

  <!-- Bootstrap JS and any additional scripts here -->
  <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.3/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

 <!-- Best Sellers -->
 <section class="bestsellers">
  <div class = "conatinerbs">
    <div class = "rowbs">
      <div class="col-lg-5 m-auto text-center">
        <h1><b> The Best Sellers </b></h1>

      </div>
    </div>
    <div class ="row">
      <div class = "col-lg-3 text-center mb-3">
      <div class ="card border-0 bg-light mb2">
        <div class ="card-body">
          <img src = "image/macbook_pro_1634580340025_1696138183858-removebg-preview.png" class ="img-fluid" alt ="">
        </div>
      </div>
      <h3> MacBook Air</h3>
      <h5>From $ 999</h5>
      <div class = "button-bs">
        <a href=""><button class="b2"><h6><b>Buy Now</b></h6></button></a>
      </div>
      </div>
      <div class = "col-lg-3 text-center mb-3">
        <div class ="card border-0 bg-light mb2">
          <div class ="card-body">
            <img src = "image/iphone-15-pro-finish-select-202309-6-1inch-removebg-preview.png" class ="img-fluid" alt ="">
          </div>
        </div>
        <h3> iPhone 15 Pro</h3>
        <h5>From $ 999</h5>
        <div class = "button-bs">
          <a href=""><button class="b2"><h6><b>Buy Now</b></h6></button></a>
        </div>
        </div>
        <div class = "col-lg-3 text-center mb-3">
          <div class ="card border-0 bg-light mb2">
            <div class ="card-body">
              <img src = "image/se-case-unselect-gallery-1-202403_FMT_WHH-removebg-preview (1).png" class ="img-fluid" alt ="">
            </div>
          </div>
          <h3> Apple Watch SE</h3>
          <h5>From $ 249</h5>
          <div class = "button-bs">
            <a href=""><button class="b2"><h6><b>Buy Now</b></h6></button></a>
          </div>
          </div>
          <div class = "col-lg-3 text-center mb-3">
            <div class ="card border-0 bg-light mb2">
              <div class ="card-body">
                <img src = "image/AirPods-Max-silver-removebg-preview.png" class ="img-fluid" alt ="">
              </div>
            </div>
            <h3> Air Pods MAx</h3>
            <h5>From $ 549</h5>
            <div class = "button-bs">
              <a href=""><button class="b2"><h6><b>Buy Now</b></h6></button></a>
            </div>
            </div>
    </div>
  </div>
  </section>
  

 
</body>
</html>
