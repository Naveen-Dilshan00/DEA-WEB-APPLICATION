<%-- 
    Document   : navbar01
    Created on : Apr 12, 2024, 8:42:26 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
        <!-- css file link-->
           <link rel="stylesheet" href="style.css">
        <!--font-awesome link-->
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
           <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        

    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <!--font-awesome link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

  </head>
  <body>
    <nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen' ></i>
            <span class="logo navLogo"><a href="#home"><img src="image/apple_logo.jpg" alt="apple-logo" alt="logo-pict"></a></span>

            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a href="#home"><img src="image/apple_logo.jpg" alt="apple-logo" alt="logo-pict"></a></span>
                    <i class='bx bx-x siderbarClose'></i>
                </div>

                <ul class="nav-links">
                    <li><a href="#iphone">iPhone</a></li>
                    <li><a href="#watch">Watch</a></li>
                    <li><a href="#mac">Mac</a></li>
                    <li><a href="#airpods">Airpods</a></li>
                    <li><a href="#ipads">iPads</a></li>
                 <li><a href="#support">Support</a></li>
                 <li class="toggle"><input type="text" placeholder="Search...">
                    <a href="#search-bar">
                         <i class="fa-solid fa-magnifying-glass"></i>
                    </a>
                </li>
                <li class="toggle"><a href="#cart.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li> 
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

    // js code to toggle sidebar
    sidebarOpen.addEventListener("click" , () =>
            {
              nav.classList.add("active"); 
            }
                                );

    body.addEventListener("click" , e =>
            {
               let clickedElm = e.target;

               if(!clickedElm.classList.contains("sidebarOpen") && !clickedElm.classList.contains("menu"))
               {
                nav.classList.remove("active");
               }
            }
                         );

  </script>
  </body>
</html>
