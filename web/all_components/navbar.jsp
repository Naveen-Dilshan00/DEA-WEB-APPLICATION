<%-- 
    Document   : navbar
    Created on : 05-Apr-2024, 20:23:19
    Author     : Naveen Dilshan
--%>

<div class="container-fluid" style="height:10px;background-color:#303f9f"></div>

<div class="container-fluid p-3">
    <div class="row">
        <div class="col-md-3 text-success">
            <h3><i class="fa-solid fa-book-open"></i>Ebooks</h3>
        </div>
        <div class="col-md-6">
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="search">
                <button class="btn btn-primary my-2 my-sm-0 " type="submit">Search</button>
            </form>
        </div>
        
        <div class="col-md-3">
            <a href="login.jsp" class="btn btn-success">Login</a>
            <a href="register.jsp" class="btn btn-primary text-white">Register</a>
        </div>
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
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-solid fa-book-open"></i>Recent Book</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-solid fa-book-open"></i>New Book</a>
      </li>
      <li class="nav-item active">
        <a class="nav-link" href="#"><i class="fa-solid fa-book-open"></i>Old Book</a>
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
      <li class="nav-item">
        <a class="nav-link disabled" href="#">Disabled</a>
      </li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
      <button class="btn btn-light my-2 my-sm-0 " type="submit"><i class="fa-solid fa-screwdriver-wrench"></i>Settings</button>
      <button class="btn btn-light my-2 my-sm-0 ml-1" type="submit"><i class="fa-regular fa-address-book"></i>Contact Us</button>
    </form>
  </div>
</nav>
 