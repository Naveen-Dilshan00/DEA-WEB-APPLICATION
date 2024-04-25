<%-- 
    Document   : footer
    Created on : 06-Apr-2024, 07:01:39
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
   <!-- <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
   -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>footer</title>
    <style>
        footer {
            background: #c7cfd4;
            padding: 50px 0px;
        }
        .icon-and-text {
            display: flex;
            align-items: center; 
            justify-content: center;
        }
        .icon-and-text i {
            font-size: 3em;
            margin-right: 10px; 
        }
        .socials i {
            margin-top: 0.5rem;
            margin-bottom: 0.8rem;
            font-size: 3em; 
        }
        ul {
            margin-top: 20px; 
            padding-left: 0; 
        }
        li {
            margin-bottom: 10px; 
            list-style: none; 
        }
        li a {
            color: gray;
        }
        .btn {
            width: 100%;
            background: black;
            color: white;
            border-radius: 25px;
            border-color: transparent;
            font-size: 1.5rem;
            margin-top: 1rem;
        }
        .input-group {
            margin-bottom: 1rem;
        }
        .copyright {
            color: gray;
        }
        .abc {
            margin-top: -0.7rem;
            color: black; 
            text-align: center;
        }
    </style>
</head>
<body>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-6">
                    <div class="single-box">
                        <div class="icon-and-text">
                            <i class='bx bxl-apple'></i>
                            <h2><b>Apple</b></h2>
                        </div>
                        <p style="color: black; margin-top: 1rem;"><i>At Apple, we're dedicated to bringing the magic of Apple products closer to you. With a passion for innovation and a commitment to excellence, we strive to provide an unmatched shopping experience.</i></p>
                        <div class="socials">
                            <i class='bx bxl-facebook' ></i>
                            <i class='bx bxl-github'></i>
                            <i class='bx bxs-circle' ></i>
                        </div>
                        <div class="copyright">
                            2024-AppleSL.All Right Reserved.
                        </div>    
                    </div>
                </div>
                <div class="col-lg-2 col-md-6">
                    <div class="single-box">
                        <h2><b>Site Map</b></h2>
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#">iPhone</a></li>
                            <li><a href="#">Mac</a></li>
                            <li><a href="#">AirPods</a></li>
                            <li><a href="#">Watch</a></li>
                            <li><a href="#">iPads</a></li>
                            <li><a href="#">Support</a></li>
                        </ul>
                    </div>                    
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="single-box">
                        <h2><center><b>Subscribe</b></center></h2>
                        <p style="color: black; margin-top: 1rem; text-align: center;"><i>Stay informed with our latest news & Updates</i></p>
                        <div class="input-group mb-3">
                            <form style="text-align: center;">
                                <input type="email" name="" class="email form-control" placeholder="Enter your email" style="height: 50px; width: 300px;">
                                <button type="submit" class="btn btn-primary btn-lg col-md-3 col-xl-6 mb-3 ">Join</button>
                            </form>
                        </div>
                        <p class="abc"><i>By subscribing you agree to our Privacy & to receive Updates</i></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>


