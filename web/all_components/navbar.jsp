<%-- 
    Document   : navbar01
    Created on : Apr 12, 2024, 8:42:26 PM
    Author     : admin
--%>

<<<<<<< HEAD
<<<<<<< Updated upstream
=======
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>

>>>>>>> b4ff9bdd637508bb57fcffb6c877a6ac83b2b74d
<div class="container-fluid" style="height:10px;background-color:#303f9f"></div>

<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa-brands fa-apple"></i>APPLE_HUB</h3>
        </div>
        <div class="col-md-6">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="search">
                <button class="btn btn-primary my-2 my-sm-0 " type="submit">Search</button>
            </form>
        </div>
        
        <c:if test="${not empty userobj}">
             <div class="col-md-3">
                 <a href="checkout.jsp"><i class="fa-solid fa-cart-shopping"></i></a>
            <a href=" " class="btn btn-success">${userobj.name}</a>
            <a href="LogoutServlet"  class="btn btn-primary text-white">Logout</a>
             </div>
        
        </c:if>
        
        <c:if test="${empty userobj}">
             <div class="col-md-3">
            <a href="login.jsp" class="btn btn-success">Login</a>
            <a href="register.jsp" class="btn btn-primary text-white">Register</a>
             </div>
        </c:if>
    </div>
</div>
=======
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!--CSS link -->
    <link rel="stylesheet" href="style.css">
        
    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <!--font-awesome link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
>>>>>>> Stashed changes

  </head>
  <body>
    <nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen' ></i>
            <span class="logo navLogo"><a href="#home"><img src="apple_logo.jpg" alt="apple-logo" alt="logo-pict"></a></span>

            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a href="#home"><img src="image\apple_logo.jpg" alt="apple-logo" alt="logo-pict"></a></span>
                    <i class='bx bx-x siderbarClose'></i>
                </div>

<<<<<<< Updated upstream
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href=""><i class="fa-solid fa-book-open"></i>Watches</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="all_Phones.jsp"><i class="fa-solid fa-book-open"></i>Phones</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="all_Laps.jsp"><i class="fa-solid fa-book-open"></i>Laptops</a>
      </li>
<!--      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Dropdown
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">Action</a>
          <a class="dropdown-item" href="#">Another action</a>
          <div class="dropdown-divider"></div>
          <a class="dropdown-item" href="#">Something else here</a>
        </div>
      </li>-->
<!--      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>-->
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-light my-2 my-sm-0 " type="submit"><i class="fa-solid fa-screwdriver-wrench"></i>Settings</button>
      <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fa-regular fa-address-book"></i>Contact Us</button>
    </form>
  </div>
</nav>
 
=======
                <ul class="nav-links">
                    <li><a href="#iphone.jsp">iPhone</a></li>
                    <li><a href="#watch.jsp">Watch</a></li>
                    <li><a href="#mac.jsp">Mac</a></li>
                    <li><a href="#airpods.jsp">Airpods</a></li>
                    <li><a href="#ipads.jsp">iPads</a></li>
                 <li><a href="#support.jsp">Support</a></li>
                 <li></li>
                 <li></li>
                 <li class="toggle"><input type="text" placeholder="Search...">
                    <a href="#search-bar">
                         <i class="fa-solid fa-magnifying-glass"></i>
                    </a>
                </li>
                <li class="toggle"><a href="#cart.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li> <!-- Added cart icon -->
                <li class="toggle"><a href="#login.jsp"><i class="fa-solid fa-user"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>

  <script>
     const body = document.querySelector("body"),
     nav = document.querySelector("nav"),
     sidebarOpen = document.querySelector(".sidebarOpen"),
     siderbarClose = document.querySelector(".siderbarClose");

     // javascript code to toggle sidebar
     sidebarOpen.addEventListener("click" , () =>{
     nav.classList.add("active"); 
     });

     body.addEventListener("click" , e =>{
     let clickedElm = e.target;

     if(!clickedElm.classList.contains("sidebarOpen") && !clickedElm.classList.contains("menu")){
     nav.classList.remove("active");
     }
     });

  </script>
  </body>
</html>
>>>>>>> Stashed changes
