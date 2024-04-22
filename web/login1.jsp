<%-- 
    Document   : login1
    Created on : Apr 10, 2024, 10:33:07 PM
    Author     : Senur
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In</title>
        <%@include file="all_components/allCSS.jsp"%>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style type="text/css">
            .bg-holder {
                background-image: url("image/main.jpg");
                position: absolute;
                width: 100%;
                height: 97vh; /* Adjusted to occupy full height of the viewport */
                border-radius: 0% 3% 3% 0%;
                top: 0;
                left: 0;
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
            }

            .heading{
                color:white; position: absolute; top: 12%; width: 100%;text-align: center; font-size: 3rem; font-weight: 800; 
            }
            
            .font{
                color: black;
            }

            .para{
                color: white; position: absolute; top:25%; text-align:center;width: 100%;font-size: 0.8rem;

            }

            body {
                font-family: sans-serif;
                background-color: #fff;
                margin: 0;
                padding: 0;
            }

            .right {
                margin-top: 40%;

            }
            

            .btn {
                font-size: 0.8rem;
                font-weight: 650;
                
            }

            a {
                text-decoration: underline;
            }

            a:hover {
                text-decoration: underline;
            }

            h1 {
                font-family: Arial, sans-serif; /* Change font family */
                font-size: 2.5rem; /* Adjusted font size for "Sign In" */
                font-weight: bold;
                margin-bottom: 10px;
                color:#303f9f
            }

            .text-secondary {
                font-size: 0.8rem;
                font-family: Arial, sans-serif;
                font-weight: 400;
                /* Reduced font size for the accompanying text */
            }

            .social-logos {
                margin-top: 20px;
            }

            .social-logos img {
                width: 40px;
                margin-right: 10px;
                margin-bottom: 10px;
                border: 1px solid transparent; /* Add border */
                padding: 5px; /* Add padding */
                background-color: white; /* White background */
            }

            .social-logos .row {
                justify-content: center; /* Center align the row */
            }


            /* Adjustments for smaller screens */
            @media screen and (min-width: 900px) {
                .bg-holder .right {
                    flex-direction: row;
                    height: 97.5vh; /* Maintain full height on smaller screens */
                }
            }

            /* Adjust placeholder font size */
            ::placeholder {
                font-size: 0.9rem;
            }
            .sbtn{
                width: 40px;
                margin-right: 10px;
                margin-bottom: 10px;
                border: 1px solid transparent; /* Add border */
                padding: 5px; /* Add padding */
                background-color: white;
                
                
            }
        </style>
    </head>
    <body>
        <div class="row vh-100 g-0">
            <!--left Side (Image)-->

            <div class="col-lg-7 position-relative d-none d-lg-block">
                <div class="bg-holder"></div>
                <h2 class="heading"> WELCOME <span class="font">BACK </span></h2>
                <p class="para"> Sign in to explore the latest Apple products, manage<br> your orders,and enjoy personalized<br> recommendations tailored just for you.</p>
            </div>
            <!--right Side-->
            <div class="col-lg-5">
                <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0">
                    <div class="col col-sm-6 col-lg-7 col-xl-6">
                        <!--Sign in Form -->
                        <form action="#" class="right">
                            <div class="header">
                                <h1>Sign in</h1>
                                <p class="text-secondary">Please enter your login details to sign in</p>
                            </div>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control form-control-lg fs-6" placeholder="Email Address">
                            </div>
                            <div class="input-group mb-3">
                                <input type="password" class="form-control form-control-lg fs-6" placeholder="Password">
                            </div>
                            <div class="input-group mb-3">
                                <input type="checkbox" class="form-check-input" id="formCheck">
                                <label for="formCheck" class="form-check-label text-secondary"><small>Keep me logged in </small></label>
                            </div>
                            <!--admin and user login buttons -->
                            <div class="row mb-3">
                                <div class="col">
                                    <button class="btn btn-primary btn-lg w-100" type="submit">Admin Login</button>
                                </div>
                                <div class="col">
                                    <button class="btn btn-primary btn-lg w-100" type="submit">User Login</button>
                                </div>
                            </div>
                            <div class="text-center mb-3">
                                <small>Don't have an account? <a href="#" class="fw-bold">Sign Up</a></small>
                            </div>

                            <div class="position-relative mb-3">
                                <hr class="text-secondary divider">
                                <div class="divider-content-center text-center"><small>Or continue with</small></div>
                            </div>

                            <div class="social-logos">
                                <div class="row">
                                    <div class="col">
                                       <button class="sbtn"><img src="image/google.jpg" alt="Google"></button>
                                    </div>
                                    <div class="col">
                                        <button class="sbtn"><img src="image/facebook.jpg" alt="Facebook"></button>
                                    </div>
                                    <div class="col">
                                        <button class="sbtn"><img src="image/apple.jpg" alt="Apple"></button>
                                    </div>
                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>