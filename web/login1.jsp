<%-- 
    Document   : login1
    Created on : Apr 10, 2024, 10:33:07 PM
    Author     : Senur
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>
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
                height: 97vh; 
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

            .header{
                background-color: #fff;
                display:inherit;
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
                margin-top: 30%;

            }
            

            .form-check {
                margin-top: 5%; 
                font-size: 0.75rem;
            }



            .btn {
                font-size: 0.8rem;
                font-weight: 650;

            }

            a {
                text-decoration: none;
                font-size: 0.9rem;
                color: #303f9f;
            }

            a:hover {
                text-decoration: none;
            }

            h1 {
                font-family: Arial, sans-serif; 
                font-size: 2.5rem; 
                font-weight: bold;
                margin-bottom: 5px;
                color:#303f9f;
                
            }

            .text{
                font-size: 0.8rem;
                font-family: Arial, sans-serif;
                color: black;
                
                
                
                
            }

            .social-logos {
                margin-top: 20px;
            }

            .social-logos img {
                width: 40px;
                margin-right: 10px;
                margin-bottom: 10px;
                border: 1px solid transparent; 
                padding: 5px;
                background-color: white; 
            }

            .social-logos .row {
                justify-content: center; 
            }


            
            @media screen and (min-width: 900px) {
                .bg-holder .right {
                    flex-direction: row;
                    height: 97.5vh; 
                }
            }

            /* Adjust placeholder font size */
            ::placeholder {
                font-size: 0.9rem;
            }
            .sbtn{
                width: 40px;
                margin-right: 5px;
                margin-bottom: 5px;
                border: 1px solid transparent; 
                padding: 5px; 
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
                    <div class="col col-sm-6 col-lg-7 col-xl-7">
                        <!--Sign in Form -->
                        <form action="LoginServlet" method="POST" class="right">
                            
                            
                             <c:if test="${ not empty LogfailedMsg}">
                                        <div class="alert alert-danger" role="alert">
                                         ${LogfailedMsg}
                                        </div>
                                         <c:remove var="LogfailedMsg" scope="session"/>
                                    </c:if>
                            <c:if test="${ not empty LogSuccMsg}">
                                        <div class="alert alert-success" role="alert">
                                         ${LogSuccMsg}
                                        </div>
                                         <c:remove var="LogSuccMsg" scope="session"/>
                                    </c:if>
                                        
                               
                            <div class="header">
                                <h1>Sign in</h1>
                             
                                <p class="text">Please enter your login details to sign in</p>
                                
                            </div>
                            <div class="input-group mb-3">
                                <input type="text" class="form-control form-control-lg fs-6" placeholder="User Name " name="uname">
                            </div>
                            <div class="input-group mb-3">
                                <input type="password" class="form-control form-control-lg fs-6" placeholder="Password" name="password">
                            </div>
                            <div class="row mb-3">
                                <div class="col">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" id="check" name="check" value="">
                                        <label class="form-check-label" for="check">Keep me logged in</label>
                                    </div>
                                    
                                </div>
                                &nbsp; &nbsp;
                                <div class="col">
                                    <a href="#">Forgot password?</a>
                                </div>
                            </div>


                            <!--admin and user login buttons -->
                            <div class="row mb-3 ">
                                <div class="col">
                                    <button class="btn btn-primary btn-lg w-100" type="submit">Admin Login</button>
                                </div>
                                <div class="col">
                                    <button class="btn btn-primary btn-lg w-100" type="submit">User Login</button>
                                </div>
                            </div>
                            <div class="text-center mb-3">
                                <small>Don't have an account? <a href="register1.jsp" class="fw-bold">Sign Up</a></small>
                            </div>

                            <div class="position-relative mb-3">
                                <hr class="text-secondary divider">
                                <div class="divider-content-center text-center"><small>Or continue with</small></div>
                            </div>

                            <div class="social-logos">
                                <div class="row">
                                    <div class="col">
                                        <a href=""><button class="sbtn"><img src="image/google.jpg" alt="Google"></button></a>
                                    </div>
                                    <div class="col">
                                        <a href=""><button class="sbtn"><img src="image/facebook.jpg" alt="Facebook"></button></a>
                                    </div>
                                    <div class="col">
                                        <a href=""><button class="sbtn"><img src="image/apple.jpg" alt="Apple"></button></a>
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