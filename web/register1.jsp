<%-- 
    Document   : register1.jsp
    Created on : Apr 9, 2024, 9:33:13 PM
    Author     : pabasara
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_components/allCSS.jsp"%>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
        <style type="text/css">
            .bg-holder{
                background-image:url("image/apple2.jpg");
                position: absolute;
                width: 100%;
                height: 98vh;
                border-radius: 0% 10% 10% 0%;
                top: 0;
                left: 0;
                background-size: cover;
                background-position: center;
                background-repeat: no-repeat;
            }
            body{
                font-family: sans-serif;
                background-color: #fff;
                margin: auto;
            }
            .right{
                margin-top: 30%;
            }
            .btn{
                font-size: o.8rem;
                font-weight: 700;
            }
            btn i{
                vertical-align: text-top;
            }
            
            a{
                text-decoration: none;
            }
            a:hover{
                text-decoration: underline;
            }
            
        </style>
    </head>
    <body>
        <div class="row vh-100 g-0">
            <!--left-->
            <div class="col-lg-6 position-relative d-none d-lg-block">
                <div class="bg-holder" >
                    
                </div>
            </div>
            <!--right-->
            <div class="col-lg-6">
                <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0"
                    <div class="col col-sm-6 col-lg-7 col-xl-6">
                      
                       <!--form-->
                       <form action="#"><div class="right">
                           <div class="text-center mb-5">
                               <h1 class="fw-bold"><b>Sign Up</b></h1>
                               <p class="text-secondary"><h6>Please enter your personal details to sign up</h6></p>
                           </div>
                           <div class="input-group mb-3">
                               <span class="input-group-text">
                                  <i class='bx bx-user' ></i> 
                               </span>
                               <input type="text" class="form-control form-control-lg fs-6" placeholder="Username">
                           </div> 
                           <div class="input-group mb-3">
                               <span class="input-group-text">
                                 <i class='bx bx-envelope' ></i> 
                               </span>
                               <input type="text" class="form-control form-control-lg fs-6" placeholder="Email Address">
                           </div>
                           <div class="input-group mb-3">
                               <span class="input-group-text">
                                  <i class='bx bx-lock-alt' ></i> 
                               </span>
                               <input type="password" class="form-control form-control-lg fs-6" placeholder="Password">
                           </div>
                           <div class="input-group mb-3 d-flex justify-content-between">
                               <input type="checkbox" class="form-check-input" id="formCheck">
                               <label for="formCheck" class="form-check-label text-secondary"><small>I agree to all of the companie's <a href="#">Terms & Conditions</a></small></label>
                               
                           
                          </div>
                           <button class="btn btn-primary btn-lg w-100 mb-3">Sign Up</button>
                          <div class="text-center">
                           <small>Already have an account? <a href="#" class="fw-bold">Sign In</a></small>
                          </div>
                           
                            <!--divider-->
                       <div class="position-relative">
                           <hr class="text-secondary divider">
                           <div class="divider-content-center text-center"><h7>Or continue with</h7></div>
                           
                       </div><br>
                        
                        <!--social login-->
                       <button class="btn btn-outline-secondary btn-lg w-100 mb-3">
                          <i class='bx bxl-google'></i> Sign up with Google
                       </button>
                       <button class="btn btn-outline-secondary btn-lg w-100 ">
                           <i class='bx bxl-facebook' ></i> Sign up with Facebook
                       </button>
                       </form>
        </div>
                       
                       
                    </div>
                    
                </div>
                
            </div>
            
        </div>
    </body>
</html>
