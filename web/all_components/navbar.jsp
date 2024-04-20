<%-- 
    Document   : navbar
    Created on : 05-Apr-2024, 20:23:19
    Author     : Naveen Dilshan
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.cartDAOImpl"%>
<%@page import="com.entity.cart"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.user"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>



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
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>


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

                 <a href="checkout.jsp"><span class="badge badge-danger">${cart_list.size()}</span><i class="fa-solid fa-cart-shopping text-success"></i></a>
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


<!--change color navbar background-->
<nav class="navbar navbar-expand-lg navbar-dark bg-custom"> 
  <a class="navbar-brand" href="#"><i class="fa-solid fa-house-chimney-user"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

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
      <a href="settings.jsp" class="btn btn-light my-2 my-sm-0 " type="submit"><i class="fa-solid fa-screwdriver-wrench"></i>Settings</a>
      <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fa-regular fa-address-book"></i>Contact Us</button>
    </form>
  </div>
</nav>
 