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
        <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
        <style type="text/css">
            .bg-holder{
                background-image:url("image/apple2.jpg");
                position: absolute;
                width: 100%;
                height: 98vh;
                border-radius: 0% 2% 2% 0%;
                top: 0;
                left: 0%;
                background-size: cover;
                background-position:center;
                background-repeat: no-repeat;
            }
            body{
                font-family: sans-serif;
                background-color: #fff;
                margin: auto;
            }
            .right{
                margin-top: 10%;
                }
            .fw-bold{
                color: #2127a6;
            }
            .ab{
                align-content: center;
                width: 140%;
            }
           
            .btn{
                font-size: o.8rem;
                font-weight: 700;
            }
            a{
                text-decoration: none;
            }
            a:hover{
                text-decoration: underline;
            }
            .social-logos{
                margin-top: 10px;
            }
            .social-logos img{
                width: 40px;
                margin-bottom: 10px;
                border: transparent ;
               
            }
            .social-logos .row{
                justify-content: center;
               
            }
            
        </style>
    </head>
    <body>
        <div class="row vh-100 g-0">
            <!--left-->
            <div class="col-lg-7 position-relative d-none d-lg-block">
                <div class="bg-holder">
                    
                </div>
            </div>
            <!--right-->
            <div class="col-lg-4">
                <div class="row align-items-center justify-content-center h-100 g-0 px-4 px-sm-0"
                    <div class="col col-sm-6 col-lg-7 col-xl-6">
                      
                       <!--form-->
                      
                           <div class="right">
                           <div class="text mb-5">
                               <h1 class="fw-bold"><b>Sign Up</b></h1>
                               <p class="text-secondary"><h6>Please enter your personal details to sign up</h6></p>
                           </div>
                           <div class="ab">    
                            <form action="#">    
                           <div class="input-group mb-4">
                               <input type="text" id="name" class="form-control form-control-lg fs-6" placeholder="Full Name">
                           </div>
                           <div class="input-group mb-4">
                               <input type="text" id="address" class="form-control form-control-lg fs-6" placeholder="Email Address">
                           </div>
                           <div class="input-group mb-4">
                               <input type="password" id="password" class="form-control form-control-lg fs-6" placeholder="Password">
                           </div>
                           <div class="input-group mb-4 d-flex justify-content-between">
                               <input type="checkbox" class="form-check-input" id="formCheck">
                               <label for="formCheck" class="form-check-label text-secondary"><small>I agree to all of the companie's <a href="#" class="fw-bold"><b>Terms & Conditions</b></a></small></label>
                           </div>
                          <div class="text-center">     
                              <button type="button" id="submit" class="btn btn-primary btn-lg col-6 col-md-4 col-xl-8 mb-3 ">Sign Up</button>
                          </div>
                          <div class="text">
                              Already have an account? <a href="#" class="fw-bold"><b>Sign In</b></a>
                          </div><br><br>
                           
                            <!--divider-->
                       <div class="position-relative">
                           <hr class="text-secondary divider">
                           <div class="divider-content-center text-center"><h7>Or continue with</h7></div>
                           
                       </div><br>
                         </form>
                            <!--social login-->
                           
                               <div class="social-logos align-items-center justify-content-center">     
                          <div class="row">
                              <div class="col-auto">
                               <button class="btn ">
                               <img src="image/gl.png" alt="Google"> 
                               </button>
                              </div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <div class="col-auto">
                               <button class="btn ">
                               <img src="image/fl.png" alt="Facebook">
                               </button> 
                           </div> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                           <div class="col-auto">
                               <button class="btn ">
                               <img src="image/al.png" alt="Apple">
                           </button>
                           </div>                        
                        </div>
                        </div>
     
                      </div>        
                     </div>
                       
                       
                    </div>
                    
                </div>
                
            </div>
            
        </div>
        <script>
          $("#submit").click(function(){
             
             var name = $("#name").val(); 
             var address = $("#address").val();
             var password = $("#password").val();
              var formCheck = $("#formCheck").prop("checked");
             
             if(name == '' | address == '' | password == ''){
                 swal({
                       title: "Fields Empty!",
                       text: "Please check the missing field!",
                       icon: "warning",
                       button: "Ok",
                       });
             }
             else if (!formCheck) {
                swal({
                       title: "Terms Not Accepted!",
                       text: "Please accept the Terms & Conditions to sign up!",
                       icon: "warning",
                       button: "Ok",
                       });
             } 
             else{
                 swal({
                       title: "Welcome " + name,
                       text: "Successfully Signed Up",
                       icon: "success",
                       button: "Ok",
                       });
             }
          });  
        </script>
    </body>
</html>
