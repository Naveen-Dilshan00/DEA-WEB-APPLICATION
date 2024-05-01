<%@page import="com.entity.user"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel = "stylesheet" href = "all_components/owl.carousel.css">
<link rel = "stylesheet" href = "all_components/owl.theme.default.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<script src="https://kit.fontawesome.com/aa7454d09f.js" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<link rel="stylesheet" href="all_components/carouselstyle.css">

<style>
  @import url('https://fonts.googleapis.com/css2?family=Roboto+Serif:opsz,wght@8..144,400;8..144,500;8..144,600;8..144,700&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500&display=swap');

/*4 boxes */

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

/*best sellers*/



.product-item{
    border: 1px solid rgb(219, 219, 219);
}
.product-img{
    position: relative;
    overflow: hidden;
}
.btns{
    position: absolute;
    left: 0;
    bottom: -100%;
    font-size: 15px;
    font-weight:bolder;
    transition: all 0.3s ease-in-out;
}
.btns button{
    width:100%;
    height:35px;
    font-weight: bold;
    color: #fff;
    transition: all 0.3s ease-in-out;
    background-color: hsl(0, 0%, 0%)
}

.product-img:hover .btns{
    bottom: 0;
}


.product-name{
    transition: all 0.3s ease-in-out;
    color:black;
    font-size: 25px;
    font-weight: bolder;
}
.product-name:hover{
    color: #00095e!important;
}
.product-price{
    color:  #00095e;
    font-size: 20px;
    font-weight:500;
}
.product-item{
    width: 300px;
    height: 300px;
}

/*about us*/

        .about-us-section .h1,h2,h3,h4{
            font-weight: 900;
        }
        
        .about-us-section .h5,h6,a,p {
            font-weight: 300;
        }
        .center-vertical {
            display: flex;
            width: 100%;
            min-height: 100vh;
            align-items: center;
        }
        .about-us-section {
            width: 100%;
            padding: calc(5% + 30px) 0px;
        }

        .about-us-section .img-head {
            position: relative;
            overflow: hidden;
            margin: 10px;
            
        }
        .about-us-section .img-head img{
          width:100%;
          transition: transform .3s;  
        }
       
        .about-us-section .img-head::after {
            content:"";
            width: 100%;
            height: 100%;
            position:absolute;
            left: 0;
            top: 0;
            opacity: .5;
            
        }

        .about-us-section .a-head {
            font-size: 28px;
            color: black;
        
        }
        .about-us-section .break-small {
            width :80px;
            height : 3px;
            background-color: black;
        }

        .about-us-section .atext-para{
<<<<<<< Updated upstream
            font-size: 22px;
=======
            font-size: 20px;
>>>>>>> Stashed changes
        }
        
        .about-us-section .box {
            background-color: black;
            color: white;
            text-align: center;
            padding: 20px 0px;
            position: relative;
            overflow: hidden;
            height:190px;
            margin:5px;

        }

        .about-us-section .box i {
            font-size:42px;
        }

        .about-us-section .box h4 {
            font-size:14px;
        }

        .about-us-section .box p {
            font-size:22px;
        }
        .about-us-section .box::after,
        .about-us-section .box::before {
          
            content:"";
            position:absolute;
            width:100px;
            height: 100px;
            background-color: rgba(255, 255, 255, 0.5);
            border-radius: 50%;
            transition: transform .3s;
        }

        .about-us-section .box::after {
            left:-50px;
            top: -50px;

        }

        .about-us-section .box::before {
            right:-50px;
            bottom: -50px;
        }

        .about-us-section .box:hover:after,
        .about-us-section .box:hover:before {

        transform: scale(1.2);

        }
 




    /*contact form*/


.contacted{
    display: flex;
    flex-direction: column;
    text-align: center;
    width: 90%;
    max-width: 550px;
    margin: auto;
   
}

.sectionHeader{
    text-transform: capitalize;
    font-weight: bold;
    font-size: 2.5rem;
   
    margin-bottom: .5em;
}

.heading,.sub-heading{
    margin-bottom: .5em;
    font-weight: bold;
}

.heading{
    font-size: 1.5rem;
}

.sub-heading{
    text-align: left;
    font-size: 1.5rem;
}

.contactForm{
    display: grid;
    gap: 3em;
}

form{
    width: 100%;
    margin-top: 3em;
}

.para{
    color: var(--paraColor);
    font-size: 1.1rem;
    line-height: 1.5em;
    margin-bottom: 1em;
}

.para2{
    text-align: left;
}

.input{
    width: 95%;
    max-width: 700px;
    border: none;
    font-size: .9rem;
    padding: 1em;
    outline: none;
    background-color: var(--formBg);
    color: var(--paraColor);
    border-radius: 10px;
    border: 1px solid rgb(53, 53, 53);
    margin-bottom: 1em;

}
.input-submit{
  background-color: black;
  color: white;
  border-radius: 30px;
  padding: 5px;
}

.input-submit:hover{
  background-color: rgb(37, 0, 101);
  color: white;
  
}

.input:focus{
    border: 1px solid 
}

.input::placeholder{
    text-transform: capitalize;
}

.submit{
    background-color: black;
    color: var(--textColor);
    font-weight: bold;
    cursor: pointer;
    width: 100%;
}

.map-container{
    position: relative;
    width: 100%;
    height: 500px;
}

.mapBg{
    position: absolute;
    background-color:white ;
    top: 0;
    right: 0;
    width: 200px;
    height: 90%;
    border-radius: 20px;
}

.map{
    position: absolute;
    bottom: 0;
    left: 0;
    width: 90%;
    height: 90%;
}

.map iframe{
    width: 100%;
    height: 100%;
}

.contactMethod{
    display: flex;
    flex-direction: column;
    margin-top: 2em;
    text-align: left;
}

.method{
    display: flex;
    align-items: center;
}

.contactIcon{
    font-size: 2rem;
    color: black;
    width: 70px;
    padding: 5px;
    margin: 5px;
}

@media screen and (min-width:800px) {
    .contacted{
        max-width: 1100px;
    }
    .contactForm{
        grid-template-columns: 1fr 1fr;
    }   

    .contactMethod{
        flex-direction: row;
        justify-content: space-between;
    }
}

 

</style>
  

  <title>Home Page</title>
</head>
<body>
    
<!--       check user already loged in-->
        <%
            user u =(user)session.getAttribute("userobj");
        %>
          
        
        
        
    <!-- Carousel -->


  <div class="carousel">
      <!-- list item -->
      <div class="list">
          <div class="item">
              <img src="image/carousel1.jpg">
              <div class="content">
                  <div class="author">APPLE</div>
                  <div class="title">WHO WE ARE</div>
                  <div class="topic">Think DIfferent</div>
                  <div class="des1">
                      Be aware of scams involving Apple Gift Cards, App Store & iTunes Gift Cards, and Apple Store Gift Cards.
                      
                  </div>
                  <div class="buttons">
                      <button>About US</button>
                  </div>
              </div>
          </div>
          <div class="item">
              <img src="image/carousel2.png">
              <div class="content">
                  <div class="author">APPLE</div>
                  <div class="title">Titanium. So Strong. So smart</div>
                  <div class="topic">iPhone 15 Pro</div>
                  <div class="des2">
                      The No. 01 Smart phone in the world right now with all the new features.
                  </div>
                  <div class="buttons">
                      <button>BUY NOW</button>
                     
                  </div>
              </div>
          </div>
          <div class="item">
              <img src="image/carousel3.png">
              <div class="content">
                  <div class="author">APPLE</div>
                  <div class="title">The Ultimate Theatre.</div>
                  <div class="topic">VISION PRO</div>
                  <div class="des1">
                      Experience the all world infront of your Eyes with Apple Vision Pro
                  </div>
                  <div class="buttons">
                      <button>BUY NOW</button>  
                  </div>
              </div>
          </div>
         
      </div>
      <!-- list thumnail -->
      <div class="thumbnail">
          <div class="item">
              <img src="image/carousel1.jpg">
              <div class="content">
                  <div class="title">
                      Who We Are
                  </div>
                  <div class="description">
                      About Us
                  </div>
              </div>
          </div>
          <div class="item">
              <img src="image/carousel2.png">
              <div class="content">
                  <div class="title">
                      iPhone 15 Pro
                  </div>
                  <div class="description">
                      Buy Now
                  </div>
              </div>
          </div>
          <div class="item">
              <img src="image/carousel3.png">
              <div class="content">
                  <div class="title">
                  Vision Pro
                  </div>
                  <div class="description">
                      Buy Now
                  </div>
              </div>
          </div>
          
      </div>
      <!-- next prev -->

      <div class="arrows">
          <button id="prev"><</button>
          <button id="next">></button>
      </div>
      <!-- time running -->
      <div class="time"></div>
  </div>

  <script>
//step 1: get DOM
let nextDom = document.getElementById('next');
let prevDom = document.getElementById('prev');

let carouselDom= document.querySelector('.carousel');
let SliderDom = carouselDom.querySelector('.carousel .list');
let thumbnailBorderDom = document.querySelector('.carousel .thumbnail');
let thumbnailItemsDom = thumbnailBorderDom.querySelectorAll('.item');
let timeDom = document.querySelector('.carousel .time');

thumbnailBorderDom.appendChild(thumbnailItemsDom[0]);
let timeRunning = 3000;
let timeAutoNext = 5000;

nextDom.onclick = function(){
  showSlider('next');    
}

prevDom.onclick = function(){
  showSlider('prev');    
}
let runTimeOut;
let runNextAuto = setTimeout(() => {
  next.click();
}, timeAutoNext)
function showSlider(type){
  let  SliderItemsDom = SliderDom.querySelectorAll('.carousel .list .item');
  let thumbnailItemsDom = document.querySelectorAll('.carousel .thumbnail .item');
  
  if(type === 'next'){
      SliderDom.appendChild(SliderItemsDom[0]);
      thumbnailBorderDom.appendChild(thumbnailItemsDom[0]);
      carouselDom.classList.add('next');
  }else{
      SliderDom.prepend(SliderItemsDom[SliderItemsDom.length - 1]);
      thumbnailBorderDom.prepend(thumbnailItemsDom[thumbnailItemsDom.length - 1]);
      carouselDom.classList.add('prev');
  }
  clearTimeout(runTimeOut);
  runTimeOut = setTimeout(() => {
      carouselDom.classList.remove('next');
      carouselDom.classList.remove('prev');
  }, timeRunning);

  clearTimeout(runNextAuto);
  runNextAuto = setTimeout(() => {
      next.click();
  }, timeAutoNext)
}

  </script>

     

  <!-- 4 boxes -->

  <div class="container-fluid">
    <div class="row align-items-start">
    <div class="row">
      <div class="col-md-6">
        <div class="box1">
          <div class="boximage1">
            <img src="image/box1.png" class="img-fluid" alt="Apple Worldwide Developers Conference">
          </div>
          <div class="text-container1">
            <h4>Apple Worldwide Developers Conference</h4>
            <h4>Join Us Online June 10 - 14</h4>
            <div class="button-container1">
              <a href="ipadh.jsp" class="btn btn-primary"><b>Join Now</b></a>
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
             
              <a href="mach.jsp" class="btn btn-success"><b>Explore</b></a>
            </div>
          </div>
          <div class="boximage2">
            <img src="image/box2.png" class="img-fluid" alt="MacBooks">
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
             
              <a href="iphoneh.jsp" class="btn btn-success"><b>Explore</b></a>
            </div>
          </div>
          <div class="boximage2">
            <img src="image/box3.png" class="img-fluid" alt="iPhone 15 PRO">
          </div>
        </div>
      </div>

      <div class="col-md-6">
        <div class="box1">
          <div class="text-container2">
            <h1><b>iWATCHES</b></h1>
            <h4>Smarter. Brighter. Mightier</h4>
            <div class="button-container2">
             
              <a href="watchh.jsp" class="btn btn-primary"><b>Explore</b></a>
            </div>
          </div>
          <div class="boximage2">
            <img src="image/box4.png" class="img-fluid" alt="iWATCHES">
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
 
 <div class = "container">
  <div class = "row my-5">
      <h1 class = "text-center">Best Sellers</h1>
      <h5 class = "fw-light w-75 mx-auto text-center">These are the items that are loved most by our beloved customers</h5>
  </div>

  <div class = "row g-4 my-5 mx-auto owl-carousel owl-theme">
      <div class = "col product-item mx-auto">
          <div class = "product-img">
              <img src = "image/bs1.png" alt = "" class = "img-fluid d-block mx-auto">
              <span class = "heart-icon">
              </span>
              <div class = "row btns w-100 mx-auto text-center">
                  <button type = "button" class = "col-6 py-2">
                      BUY NOW
                  </button>
              </div>
          </div>

          <div class = "product-info p-3">
              <span class = "product-type"></span>
              <a href = "#" class = "d-block text-dark text-decoration-none py-2 product-name">MacBook Pro</a>
              <span class = "product-price">From $ 999</span>
              <p>Click the product to purchase </p>
          </div>
      </div>

      <div class = "col product-item mx-auto">
          <div class = "product-img">
              <img src = "image/bs2.png" alt = "" class = "img-fluid d-block mx-auto">
              <span class = "heart-icon">
              </span>
              <div class = "row btns w-100 mx-auto text-center">
                  <button type = "button" class = "col-6 py-2">
                      BUY NOW
                  </button>
              </div>
          </div>

          <div class = "product-info p-3">
              <span class = "product-type"></span>
              <a href = "#" class = "d-block text-dark text-decoration-none py-2 product-name">Apple Watch SE</a>
              <span class = "product-price">From $ 249</span>
              <p>Click the product to purchase </p>
          </div>
      </div>

      <div class = "col product-item mx-auto">
          <div class = "product-img">
              <img src = "image/bs3.png" alt = "" class = "img-fluid d-block mx-auto">
              <span class = "heart-icon">
              </span>
              <div class = "row btns w-100 mx-auto text-center">
                  <button type = "button" class = "col-6 py-2">
                      BUY NOW
                  </button>
              </div>
          </div>

          <div class = "product-info p-3">
              <span class = "product-type"></span>
              <a href = "#" class = "d-block text-dark text-decoration-none py-2 product-name">AirPods Max</a>
              <span class = "product-price">From $ 459</span>
              <p>Click the product to purchase </p>
          </div>
      </div>

      <div class = "col product-item mx-auto">
          <div class = "product-img">
              <img src = "image/bs4.png" alt = "" class = "img-fluid d-block mx-auto">
              <span class = "heart-icon">
              </span>
              <div class = "row btns w-100 mx-auto text-center">
                  <button type = "button" class = "col-6 py-2">
                      BUY NOW
                  </button>
              </div>
          </div>

          <div class = "product-info p-3">
              <span class = "product-type"></span>
              <a href = "#" class = "d-block text-dark text-decoration-none py-2 product-name">iPhone 15 Pro</a>
              <span class = "product-price">From $ 999</span>
              <p>Click the product to purchase </p>
          </div>
      </div>

     <div class = "col product-item mx-auto">
          <div class = "product-img">
              <img src = "image/bs1.png" alt = "" class = "img-fluid d-block mx-auto">
              <span class = "heart-icon">
              </span>
              <div class = "row btns w-100 mx-auto text-center">
                  <button type = "button" class = "col-6 py-2">
                      BUY NOW
                  </button>
              </div>
          </div>

          <div class = "product-info p-3">
              <span class = "product-type"></span>
              <a href = "#" class = "d-block text-dark text-decoration-none py-2 product-name">MacBook Pro</a>
              <span class = "product-price">From $ 999</span>
              <p>Click the product to purchase </p>
          </div>
      </div>

      <div class = "col product-item mx-auto">
          <div class = "product-img">
              <img src = "image/bs2.png" alt = "" class = "img-fluid d-block mx-auto">
              <span class = "heart-icon">
              </span>
              <div class = "row btns w-100 mx-auto text-center">
                  <button type = "button" class = "col-6 py-2">
                      BUY NOW
                  </button>
              </div>
          </div>

          <div class = "product-info p-3">
              <span class = "product-type"></span>
              <a href = "#" class = "d-block text-dark text-decoration-none py-2 product-name">Apple Watch SE</a>
              <span class = "product-price">From $ 249</span>
              <p>Click the product to purchase </p>
          </div>
      </div>

      <div class = "col product-item mx-auto">
          <div class = "product-img">
              <img src = "image/bs3.png" alt = "" class = "img-fluid d-block mx-auto">
              <span class = "heart-icon">
              </span>
              <div class = "row btns w-100 mx-auto text-center">
                  <button type = "button" class = "col-6 py-2">
                      BUY NOW
                  </button>
              </div>
          </div>

          <div class = "product-info p-3">
              <span class = "product-type"></span>
              <a href = "#" class = "d-block text-dark text-decoration-none py-2 product-name">AirPods Max</a>
              <span class = "product-price">From $ 459</span>
              <p>Click the product to purchase </p>
          </div>
      </div>

      <div class = "col product-item mx-auto">
          <div class = "product-img">
              <img src = "image/bs4.png" alt = "" class = "img-fluid d-block mx-auto">
              <span class = "heart-icon">
              </span>
              <div class = "row btns w-100 mx-auto text-center">
                  <button type = "button" class = "col-6 py-2">
                      BUY NOW
                  </button>
              </div>
          </div>

          <div class = "product-info p-3">
              <span class = "product-type"></span>
              <a href = "#" class = "d-block text-dark text-decoration-none py-2 product-name">iPhone 15 Pro</a>
              <span class = "product-price">From $ 999</span>
              <p>Click the product to purchase </p>
          </div>
      </div>
     
  

     
      
  </div>
</div>


<!-- jquery -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" integrity="sha512-894YE6QWD5I59HgZOGReFYm4dnWc1Qt5NtvYSaNcOP+u1T9qYdvdihz0PPSiiqn/+/3e7Jo4EaG7TubfWGUrMQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<!-- owl carousel -->
<script src = "all_components/owl.carousel.js"></script>
<script>
  $('.owl-carousel').owlCarousel({
loop: true,
margin: 0,
responsiveClass: true,
responsive: {
  0:{
      items: 1,
  },
  768:{
      items: 2,
  },
  1100:{
      items: 3,
  },
  1400:{
      items: 4,
      loop: false,
  }
}
});
</script>

<!-- About Us -->

<div class = "center-vertical">
  <div class = "about-us-section ">
      <div class ="containeraboutus">
          <div class ="row">
              <div class ="col-12 col-lg-6 mb-4 mb-lg-0">
                  <div class ="img-head">
                      <img src = "image/appleaboutus.jpg">
                  </div>
              </div>
              <div class="col-12 col-lg-6">
                  <h2 class="a-head">
                      MORE ABOUT US
                  </h2>
                  <div class ="break-small mb-2"></div>
                  <p class="atext-para">
                      At Apple, we're dedicated to bringing the magic of Apple products closer to you. With a passion for innovation and a commitment to excellence, we strive to provide an unmatched shopping experience. Our curated selection of iPhones, MacBooks, iPads, and accessories ensures that you have access to the latest and greatest Apple has to offer. Backed by expert advice and personalized service, we're here to guide you every step of the way, ensuring that your journey with Apple is nothing short of extraordinary.
                  </p>
                  <div class="row">
                      <div class="col-12 col-md-4 mb-2 mb-md-0">
                          <div class ="box">
                              <i class ="fa fa-users mb-3"></i>
                              <h4 class="mb-0">TOTAL CLIENTS</h4>
                              <p class ="mb-0">1289</p>
                          </div>
                      </div>
                      <div class="col-12 col-md-4 mb-2 mb-md-0">
                          <div class ="box">
                              <i class ="fa fa-wrench mb-3"></i>
                              <h4 class="mb-0">ORDERS</h4>
                              <p class ="mb-0">5433</p>
                          </div>
                      </div>
                      <div class="col-12 col-md-4 mb-2 mb-md-0">
                          <div class ="box">
                              <i class ="fa fa-paper-plane mb-3"></i>
                              <h4 class="mb-0">Countries</h4>
                              <p class ="mb-0">245</p>
                          </div>
                      </div>
                  </div>
              </div>
          </div>

      </div>
  </div>
</div>

   <!-- Contact Form -->

   <section class="contact-form">
    <div class = "contacted">
    <h1 class="sectionHeader">contact us</h1>
    <h3 class="heading">Get In Touch!</h3>
    <p class="para">We are happy to help you 24 x 7 for your better experience.</p>
    
    <div class="contactForm">
        <form action="#">
         <h1 class="sub-heading">Need Support !</h1>
         <p class="para para2">Contact us. We are happy to help you.</p>
         <input type="text" class="input" placeholder="your name">
         <input type="text" class="input" placeholder="your email">
         <input type="text" class="input" placeholder="your Subject">
         <textarea class="input" cols="30" rows="5" placeholder="Your message..."></textarea>
         <input type="submit" class="input-submit" value="Send Message">
        </form>

        <div class="map-container">
            <div class="mapBg"></div>
            <div class="map">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d63389.390851899916!2d79.89510953610319!3d6.789688842325403!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae24f91d281cc5d%3A0xea4b2fcd3ce0e74e!2sPiliyandala!5e0!3m2!1sen!2slk!4v1714107302817!5m2!1sen!2slk" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
    </div>

    <div class="contactMethod">
        <div class="method">
            <i class="fa-solid fa-location-dot contactIcon"></i>
            <article class="text">
                <h1 class="sub-heading">Location</h1>
                <p class="para">No 15/2C , Samagi Mawatha , Piliyandala</p>
            </article>
        </div>

        <div class="method">
            <i class="fa-solid fa-envelope contactIcon"></i>
            <article class="text">
                <h1 class="sub-heading">Email</h1>
                <p class="para">tharusharasath@gmail.com </p>
            </article>
        </div>

        <div class="method">
            <i class="fa-solid fa-phone contactIcon"></i>
            <article class="text">
                <h1 class="sub-heading">Phone</h1>
                <p class="para">+ 94-76 39 466 18</p>
            </article>
        </div>
    </div>
  </div>
   </section>

 
</body>
</html>