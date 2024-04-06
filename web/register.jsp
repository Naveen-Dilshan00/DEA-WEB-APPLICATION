 <%-- 
    Document   : register.jsp
    Created on : 06-Apr-2024, 07:25:02
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EBook:Register</title>
        <%@include file="all_components/allCSS.jsp"%>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_components/navbar.jsp"%>
        
        <div class="container p-2">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card" style="border-radius: 30px;">
                        <div class="card-body">
                            <h4 class="text-center">Registration Page</h4>
                            
                            <form method="POST" action="registerServlet">
                                
                                <div class="form-group">
                                        <label for="exampleInputPassword1">Name</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Enter Your Name" name="fname">
                                </div>
                                <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                        <label for="exampleInputPassword1">Phone Number</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Phone number" name="phno">
                                </div>
                                <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password">
                                </div>
                                
                                <div class="form-check">
                                        <input type="checkbox" class="form-check-input" id="exampleCheck1" name="check">
                                        <label class="form-check-label" for="exampleCheck1">Agree to the terms and conditions</label>
                                </div>
                                    <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <%@include file="all_components/footer.jsp"%>
    </body>
</html>
