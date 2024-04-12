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
        
    </head>
    <body>
            <!-- header section start -->
            <header class="header">
                     <a href="#" class="logo">
                          <img src="Web Pages\image\apple_logo.jpg" alt="apple-logo" alt="logo-pict">
                     </a>
                  <!--navbar start-->
                  <nav class="navbar">
                    <ul>
                          <li><a href="#iPhone.jsp">iPhone</a></li>
                          <li><a href="#Watch.jsp">Watch</a></li>
                          <li><a href="#Mac.jsp">Mac</a></li>
                          <li><a href="#Airpods.jsp">Airpods</a></li>
                          <li><a href="#iPads.jsp">iPads</a></li>
                          <li><a href="#Support.jsp">Support</a></li>
                    </ul>
                  <!--end navbar-->
                  </nav>
                  <div class="box">
                           <input type="text" placeholder="Search...">
                           <a href="#search-bar">
                                <i class="fa-solid fa-magnifying-glass"></i>
                           </a>
                           <a href="#cart.jsp">
                                <i class="fa-solid fa-cart-shopping"></i>
                           </a>
                           <a href="#login-page">
                                <i class="fa-solid fa-user"></i>
                           </a>
                  </div>
                      
            <!--header section end-->
            </header>
    </body>
</html>
