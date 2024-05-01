<%-- 
    Document   : navbar01
    Created on : Apr 12, 2024, 8:42:26 PM
    Author     : admin
--%>

<%@page import="com.DAO.cartDAOImpl"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.cart"%>
<%@page import="java.util.ArrayList"%>
<%
ArrayList<cart> cart_list =(ArrayList<cart>) session.getAttribute("cart-list");
    List<cart> cartProducts = null;
    if(cart_list !=null){
        cartDAOImpl Dao = new cartDAOImpl(DBConnect.getConn());
        cartProducts = Dao.getCartProducts(cart_list);
        Double Total = Dao.getTotalCartPrice(cart_list);
        request.setAttribute("cart_list", cart_list);
        request.setAttribute("total",Total);
    }
    
    DecimalFormat dcf = new DecimalFormat("#.##");
    request.setAttribute("dcf",dcf);
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <!head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width,initial-scale=1.0">
   
           <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
           <script src="https://kit.fontawesome.com/a076d05399.js"></script>
        

    <!-- Boxicons CSS -->
    <link href='https://unpkg.com/boxicons@2.1.1/css/boxicons.min.css' rel='stylesheet'>
    
    <!--font-awesome link-->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" />
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>

    <style>


#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {
    from { 
        bottom: 0;
        opacity: 0;
    }
    to {
        bottom: 30px;
        opacity: 1;
    }
}

@keyframes fadeOut {
    from { 
        bottom: 30px;
        opacity: 1;
    }
    to {
        bottom: 0;
        opacity: 0;
    }
}





/*Navbar css part*/


.logo img
  {
    width: 60px;
    height: 60px;
    margin-top: 10px;
  }

nav
{
    position: fixed;
    top: 0;
    left: 0;
    height: 70px;
    width: 100%;
    background-color:#000;
    z-index: 101;
   
   
}


nav .nav-bar
{
    position: relative;
    height: 100%;
    max-width: 1000px;
    width: 100%;
    background-color:#000;
    margin: 0 auto;
    padding: 0 30px;
    display: flex;
    align-items: center;
    justify-content: space-between;
    
  
}

nav .nav-bar .sidebarOpen
{
    color: #fff;
    font-size: 25px;
    padding: 5px;
    cursor: pointer;
    display: none;
}

nav .nav-bar .logo a
{
    font-size: 25px;
    font-weight: 500;
    color:#000;
    text-decoration: none;
}

.menu .logo-toggle
{
    display: none;
}

.nav-bar .nav-links{
    display: flex;
    align-items: center;
}

.nav-bar .nav-links li
{
    margin: 0 5px;
    list-style: none;
}

.nav-links li a
{
    position: relative;
    font-size: 17px;
    font-weight: 400;
    color:#fff;
    text-decoration: none;
    padding: 10px;
}
.nav-links li a:hover
{
    background-color: white;
    color:#000;
    border-radius:15px;
}

.nav-links li a::before
{
    
    position: absolute;
    left: 50%;
    bottom: 0;
    transform: translateX(-50%);
    height: 6px;
    width: 6px;
    border-radius: 50%;
    background-color:#fff;
    opacity: 0;
    transition: all 0.3s ease;
}

.nav-links li:hover a::before
{
    opacity: 1;
}





@media (max-width: 790px) 

{
    nav .nav-bar .sidebarOpen
    {
        display: block;
    }

    .menu
    {
        position: fixed;
        height: 100%;
        width: 320px;
        left: -100%;
        top: 0;
        padding: 20px;
        background-color:#000;
        z-index: 100;
        transition: all 0.4s ease;
    }

    nav.active .menu
    {
        left: -0%;
    }

    nav.active .nav-bar .navLogo a
    {
        opacity: 0;
        transition: all 0.3s ease;
    }

    .menu .logo-toggle
    {
        display: block;
        width: 100%;
        display: flex;
        align-items: center;
        justify-content: space-between;
    }

    .logo-toggle .siderbarClose
    {
        color:#000;
        font-size: 24px;
        cursor: pointer;
    }

    .nav-bar .nav-links
    {
        
        flex-direction: column;
        padding-top: 30px;
    }

    .nav-links li a
    {
        display: block;
        margin-top: 20px;
    }
   
}
.toggle:hover input
{
    width: 150px;
}
.toggle input
{
    width: 0;
    outline: none;
    border: none;
    font-weight: 500;
    transition: 0.8s;
    background: transparent;
}
.toggle .btn:hover{
    color:blue;
    background-color: white;
}
.cart4{
    margin-right: 150px;
}

    </style>
    
    
  </head>
  <body>
   
  </head>
  <body>
    <nav>
        <div class="nav-bar">
            <i class='bx bx-menu sidebarOpen' ></i>
            <span class="logo navLogo"><a href="index.jsp"><img src="image/apple_logo.jpg" alt="apple-logo" alt="logo-pict"></a></span>

            <div class="menu">
                <div class="logo-toggle">
                    <span class="logo"><a href="index.jsp"><img src="image/apple_logo.jpg" alt="apple-logo" alt="logo-pict"></a></span>
                    <i class='bx bx-x siderbarClose'></i>
                </div>

                <ul class="nav-links">
                    <li><a href="iphoneh.jsp">iPhone</a></li>
                    <li><a href="watchh.jsp">Watch</a></li>
                    <li><a href="mach.jsp">Mac</a></li>
                    <li><a class="cart4" href="ipadh.jsp">iPads</a></li>
                 
                 
                
                <c:if test="${not empty userobj}">
                    
                    <li class="toggle cart4"><span class="badge badge-danger">${cart_list.size()}</span><a href="checkout1.jsp"><i class="fa-solid fa-cart-shopping"></i></a></li> 
                    <li class="toggle"><a href="Userprofie1.jsp"><i class="fa-solid fa-user"></i></a></li>
                    <li class="toggle"><a href="LogoutServlet"  class="btn">Logout</a></li>
                </c:if>
                <c:if test="${empty userobj}">
                     
                 <li class="toggle"> <a href="login1.jsp" class="btn">Login</a></li>
                 <li class="toggle"><a href="register1.jsp" class="btn">Register</a></li>
                      
                </c:if>
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
