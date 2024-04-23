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
            background-color: #f4f4f4;
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
    height: calc(100vh - 3cm); /* Adjusted height */
    position: fixed;
    top: 3cm; /* Moved down by 7cm */
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
            padding: 10px 60px;
            bottom: 15cm;
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
            padding-top: 1cm;
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
       .sign-out-button {
    margin-top: 2.5cm; /* Adjust margin as needed */
    background-color: #333; /* Background color for the button */
    color: #fff; /* Text color */
    padding: 10px 20px; /* Padding */
    border: none; /* Remove border */
    cursor: pointer; /* Change cursor to pointer on hover */
}

.sign-out-button:hover {
    background-color: #555; /* Darker background color on hover */
}


.sign-out-button:hover {
    background-color: #555; /* Darker background color on hover */
}


.sign-out-button:hover {
    background-color: #555; /* Darker background color on hover */
}


        .content {
            margin-left: 250px;
            padding: 20px;
            background-color: #f4f4f4;
        }

        .user-profile {
            display: flex;
            flex-direction: column; /* Align items vertically */
            align-items: flex-start; 
            border-bottom: 3px solid #333;
            padding-bottom: 5px;
           
        }

   .user-info {
    display: flex;
    align-items: center;
    margin-top: 10px;
    border-bottom: 1px solid #ccc;
    padding-bottom: 10px;
    /* Adjust margin and padding as needed */
}



.user-name {
    font-size: 18px;
    font-weight: bold;
    margin-top: 0;
    display: flex; /* Add this line */
    align-items: center; /* Add this line */
}

.user-name img {
    width: 100px; /* Adjust as needed */
    height: 100px; /* Adjust as needed */
    border-radius: 50%;
    margin-right: 10px;
    padding-bottom: 0;
}




.membership-info {
    font-size: 14px;
    color: #666;
    margin-top: 0px;
    margin-left: 100px;
    
   
   
}

.country-info{
     font-size: 10px;
    color: #666;
    margin-top: 0px;/* Adjust margin as needed */
    margin-left: 100px;
    
    
    
}

       
        .form-buttons1 {
    display: flex;
    justify-content: flex-end; /* Align buttons to the right */
    margin-top: 0px;
    margin-right: 10cm;/* Adjust margin as needed */
}
.Uploadnewphoto-button {
    position: absolute;
    top: 170px;
    right: 300px;
    padding: 10px 20px;
    background-color: #ff0000;
    color: #fff;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
.delete-button{position: absolute;
    top: 170px;
    right: 100px;
    padding: 10px 20px;
    background-color: #fff;
    color: #333;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}

.Delete-button {
    background-color: #fff;
    color: #333;
    margin-right: 10px; /* Add some space between buttons */
}

.Uploadnewphoto-button {
    background-color: #333;
    color: #fff;
    margin-right: 10px
}

       
        
 

.prsonalinformation-form {
    background-color: #ddd;
      display: flex;
      flex-direction: column;
      width: 100px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ddd;
    }
    
    .form-group {
      margin-bottom: 15px;
      display: flex;
      justify-content: space-between;
      margin-bottom: 0.5cm;
      margin-top: 0.5cm;
    }
    
    .form-group label {
      width: 150px;
      text-align: center;
      
    }
    
    .form-group input[type="text"] {
      width: 410px;
      padding: 10px;
      border: 1px solid #ccc;
    }
    .form-group1 {
      margin-bottom: 15px;
      display: flex;
      justify-content: space-between;
      margin-bottom: 0.5cm;
      margin-top: 1cm;
    }
    
    .form-group1 label {
      width: 150px;
      text-align:center;
    }
    
    .form-group1 input[type="text"] {
      width: 1020px;
      padding: 10px;
      border: 1px solid #ccc;
    }
    .form-group2 {
      margin-bottom: 15px;
      display: flex;
      justify-content: space-between;
      margin-bottom: 0.5cm;
      margin-top: 1cm;
    }
    
    .form-group2 label {
      width: 150px;
      text-align: center;
    }
    
    .form-group2 input[type="text"] {
      width: 410px;
      padding: 10px;
      border: 1px solid #ccc;
    }
    
    .form-buttons {
    display: flex;
    justify-content: flex-end; /* Align buttons to the right */
    margin-top: 20px; /* Adjust margin as needed */
}

.cancel-button,
.save-button {
    padding: 10px 20px;
    margin-left: 10px; /* Add some space between buttons */
    border: none;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 0.5cm;
    margin-bottom: 1cm;
}

.cancel-button {
    background-color: #ccc;
    color: #333;
}

.save-button {
    background-color: #333;
    color: #fff;
}


    .still-have-questions {
            position: relative;
            bottom: 20px; /* Adjust bottom spacing as needed */
            left: 20px;
            font-size: 20px; /* Adjust font size as needed */
            color: #666; 
            margin-bottom: 0.2cm;
}
.contact-support-team{
     position: relative;
    bottom: 20px;
    left: 20px;
    font-size: 18px;
    color: #666;
    margin-top: 0.2cm;
    
}
.get-support-button {
              
            margin-top: 0.2cm;/* Adjust top margin as needed */
            left:20px;
            padding: 0;
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            width: 120px;
         
            text-align: center; /* Center the button text */
            
           



.get-support-button {
    background-color: #333;
    color: #fff;
    font-size: 14px;
    font-weight: bold;
       
      
    
    
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
    <button class="sign-out-button">Sign Out</button>
    <ul>
               

        
    </ul>
    
     
                 
</div>
<div class="content">
    <div class="user-profile">
        <h2>User Profile</h2>
       <div class="user-info">
    
    <div class="user-details">
        <div class="user-name">
            <img src="download.jpg" alt="User Image"> <!-- Add this line -->
            Hande Ercel
        </div>
        <div class="membership-info">Member since Aug 24</div>
        <div class="country-info">Eastern European Time (EET), Cairo UTC +3</div>
        <div class="form-buttons1">
            <button type="submit" class="Uploadnewphoto-button">Upload New Photo</button>
            <button type="button" class="delete-button">Delete</button>
        </div>
     

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
               <hr>
               
       <div class="form-buttons">
            <button type="button" class="cancel-button">Cancel</button>
            <button type="submit" class="save-button">Save Changes</button>
        </div>
              
   
  </form>
                 <div class="still-have-questions">
                     Still have questions? </div>
                 <div class=" contact-support-team">
                     
                     <a href="#">Contact our supporting team further assistance</a>
</div>
                 <div class="get-support-button">
            <button type="button" class="get-support-button">Get Support</button>
                 </div>

                
                 
                
                
                <!-- Add any additional user details here -->
            </div>
            </div>
    </div>
    <!-- Your user profile content goes here -->
</div>
</body>
</html>

      
        
