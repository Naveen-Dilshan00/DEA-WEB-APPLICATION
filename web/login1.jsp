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
                height: 100vh; 
                border-radius: 0% 10% 10% 0%;
                top: 0;
                left: 0;
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
            }

            body {
                font-family: sans-serif;
                background-color: #fff;
                margin: 0;
                padding: 0;
            }

            .right {
                margin-top: 10%;
                padding: 0 20px;
            }

            .btn {
                font-size: 0.8rem;
                font-weight: 700;
            }

            .input-group-append button {
                border-top-left-radius: 0;
                border-bottom-left-radius: 0;
            }


            a {
                text-decoration: none;
            }

            a:hover {
                text-decoration: underline;
            }

            h1 {
                font-family: Arial, sans-serif; 
                font-size: 2.5rem; 
                font-weight: bold;
                margin-bottom: 10px;
            }

            .text-secondary {
                font-size: 0.8rem; 
            }

            .social-logos {
                margin-top: 20px;
            }

            .social-logos img {
                width: 40px;
                margin-right: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc; 
                padding: 3px;
                background-color: white; 
            }

            .social-logos .row {
                justify-content: center; 
            }
            
            @media (max-width: 991px) {
                .bg-holder {
                    height: 100vh; 
                }
            }

            
            ::placeholder {
                font-size: 0.8rem;
            }
        </style>
    </head>
    <body>
        <div class="row vh-100 g-0">
            <!--left side-->
            <div class="col-lg-6 position-relative d-none d-lg-block">
                <div class="bg-holder"></div>
            </div>
            <!--right side-->
            <div class="col-lg-6">
                <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0">
                    <div class="col col-sm-6 col-lg-7 col-xl-6">
                        <!--form Content-->
                        <form action="#" class="right">
                            <div class="header">
                                <h1>Sign in</h1>
                                <p class="text-secondary">Please enter your login details to sign in</p>
                            </div>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control form-control-lg fs-6" placeholder="Email Address">
                            </div>
                            <div class="input-group mb-3">
                                <input type="password" class="form-control form-control-lg fs-6" id="password" placeholder="Password">
                               
                            </div>

                            <div class="input-group mb-3 d-flex justify-content-between">
                                <input type="checkbox" class="form-check-input" id="formCheck">
                                <label for="formCheck" class="form-check-label text-secondary"><small>Keep me logged in </small></label>
                                <small><a href="" class="fw-bold">Forgot password ?</a></small>
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
                            <!--Sign up button-->
                            <div class="text-center mb-3">
                                <small>Don't have an account? <a href="#" class="fw-bold">Sign Up</a></small>
                            </div>

                            <div class="position-relative mb-3">
                                <hr class="text-secondary divider">
                                <div class="divider-content-center text-center"><small>Or continue with</small></div>
                            </div>
                            
                            <!--Social-Logos-->
                            <div class="social-logos">
                                <div class="row">
                                    <div class="col">
                                        <img src="image/google.png" alt="Google">
                                    </div>
                                    <div class="col">
                                        <img src="image/facebook.png" alt="Facebook">
                                    </div>
                                    <div class="col">
                                        <a href=""><img src="image/apple.png" alt="Apple"></a>
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
