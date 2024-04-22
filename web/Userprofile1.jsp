<%-- 
    Document   : Userprofile1
    Created on : 21-Apr-2024, 23:34:21
    Author     : HP
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>APPLE-Index</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        .navbar {
            background-color: #333;
            color: #fff;
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 10px 20px;
        }

        .navbar-logo img {
            height: 30px;
        }

        .navbar-nav {
            display: flex;
            align-items: center;
        }

        .navbar-nav a {
            color: #fff;
            text-decoration: none;
            padding: 0 20px;
        }

        .navbar-nav a:hover {
            color: #ccc;
        }

        .sidebar {
            background-color: #f4f4f4;
            width: 250px;
            height: calc(100vh - 5cm); /* Adjusted height */
            position: fixed;
            top: 5cm; /* Moved down by 5cm */
            left: 0;
        }

        .sidebar ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
        }

        .sidebar ul li {
            padding: 10px 0;
            border-bottom: 1px solid #ccc;
            position: relative;
            display: flex;
            align-items: center;
        }

        .sidebar ul li a {
            text-decoration: none;
            color: #333;
        }

        .sidebar ul li a:hover {
            color: #666;
        }

        .sidebar ul li.account a {
            background-color: #ccc;
            border-radius: 5px;
            padding: 10px 20px;
        }

        .sidebar ul li:not(.account) a {
            padding: 10px 20px;
        }

        .sidebar ul li::after {
            content: ">";
            font-size: 20px;
            color: #ccc;
            margin-left: auto;
        }

        /* Apply spacing only between My Account and My Orders */
        .sidebar ul li:nth-child(2) {
            padding-top: 3cm;
        }

        /* Remove spacing and greater than mark between My Orders and Security */
        .sidebar ul li:nth-child(3) {
            padding-top: 0;
        }

        .sidebar ul li:nth-child(3)::after {
            content: none;
        }

        /* Remove spacing and greater than mark between Security and Location */
        .sidebar ul li:nth-child(4) {
            padding-top: 0;
        }

        .sidebar ul li:nth-child(4)::after {
            content: none;
        }

        /* Apply greater than mark after Security and Location */
        .sidebar ul li:nth-child(n+3)::after {
            content: ">";
            font-size: 20px;
            color: #ccc;
            margin-left: auto;
        }

        .content {
            margin-left: 250px;
            padding: 20px;
        }

        .user-profile {
            display: flex;
            flex-direction: column; /* Align items vertically */
            align-items: flex-start; /* Align items to the start */
        }

        .user-info {
            display: flex;
            align-items: center; /* Align items vertically to the center */
            margin-top: 10px;
             border-bottom: 1px solid #ccc;
             padding-bottom: 10px;/* Adjust margin as needed */
        }

        .user-image img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            margin-right: 10px; /* Adjust margin as needed */
        }

        .user-name {
            font-size: 18px;
            font-weight: bold;
            margin-top: 0; /* Reset margin top */
        }
        .membership-info {
            font-size: 14px;
            color: #666; /* Gray color */
            margin-top: 3px; /* Adjust margin as needed */
        }
         .country-info {
            font-size: 10px;
            color: #666; /* Gray color */
            margin-top: 3px; /* Adjust margin as needed */
        }
 

.prsonalinformation-form {
      display: flex;
      flex-direction: column;
      width: 400px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ddd;
    }
    
    .form-group {
      margin-bottom: 15px;
      display: flex;
      justify-content: space-between;
    }
    
    .form-group label {
      width: 100px;
      text-align: right;
    }
    
    .form-group input[type="text"] {
      width: 200px;
      padding: 5px;
      border: 1px solid #ccc;
    }
    .form-group1 {
      margin-bottom: 15px;
      display: flex;
      justify-content: space-between;
    }
    
    .form-group1 label {
      width: 100px;
      text-align:left;
    }
    
    .form-group1 input[type="text"] {
      width: 600px;
      padding: 5px;
      border: 1px solid #ccc;
    }
    .form-group2 {
      margin-bottom: 15px;
      display: flex;
      justify-content: space-between;
    }
    
    .form-group2 label {
      width: 100px;
      text-align: right;
    }
    
    .form-group2 input[type="text"] {
      width: 200px;
      padding: 5px;
      border: 1px solid #ccc;
    }
    
    </style>
</head>
<body>
<div class="navbar">
    <div class="navbar-logo">
        <img src="apple_phone_image.png" alt="Apple Phone">
    </div>
    <div class="navbar-nav">
        <a href="#">iPhone</a>
        <a href="#">Mac</a>
        <a href="#">AirPods</a>
        <a href="#">iPads</a>
        <a href="#">Support</a>
    </div>
</div>
<div class="sidebar">
    <ul>
        <li class="account"><a href="#">My Account</a></li>
        <li><a href="#">My Orders</a></li>
        <li><a href="#">Security</a></li>
        <li><a href="#">Location</a></li>
    </ul>
</div>
<div class="content">
    <div class="user-profile">
        <h2>User Profile</h2>
        <div class="user-info">
            <div class="user-image">
                <img src="download.jpg" alt="User Image">
            </div>
            <div class="user-details">
                <div class="user-name">Hande Ercel</div>
                 <div class="membership-info">Member since Aug 24</div>
                 <div class="country-info">Eastern European Time (EET), Cairo UTC +3</div>
                 
                 <hr>
                
  
           <form class="personalinformation-form" action="userprofile.jsp" method="post">
    <div class="form-group">
      <label for="firstName">First Name:</label>
      <input type="text" id="firstName" name="firstName" placeholder="eg. Alaa">
      <label for="lastName">Last Name:</label>
      <input type="text" id="lastName" name="lastName" placeholder="eg. Mohamed">
    </div>
    <div class="form-group1">
      <label for="username">Username:</label>
      <input type="text" id="username" name="username" placeholder="eg. alaa.mohamed">
    </div>
               <hr>
               
    <div class="form-group2">
      <label for="email">Email Address:</label>
      <input type="text" id="email" name="email" placeholder="Enter your email">
      <label for="phone">Phone Number:</label>
      <input type="text" id="phone" name="phone" placeholder="Enter phone number">
    </div>
   
  </form>
                 
                
                
                <!-- Add any additional user details here -->
            </div>
            </div>
    </div>
    <!-- Your user profile content goes here -->
</div>
</body>
</html>

      
        
