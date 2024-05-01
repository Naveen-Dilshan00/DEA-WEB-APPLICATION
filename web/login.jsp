<%-- 
    Document   : login
    Created on : 06-Apr-2024, 07:53:35
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored ="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>EBook : Login</title>
        <%@include file="all_components/allCSS.jsp"%>
    </head>
    <body style="background-color: #f0f1f2">
        <%@include file="all_components/navbar1.jsp"%>
        
        <c:if test="${ not empty succMsg}">
            <div class="alert alert-success" role="alert">
             This is a success alert—check it out!
            </div>
             <c:remove var="succMsg" scope="session"/>
         </c:if>
        
        <c:if test="${ not empty failedMsg}">
            <div class="alert alert-danger" role="alert">
             ${failedMsg}
            </div>
             <c:remove var="failedMsg" scope="session"/>
        </c:if>
        
        <div class="container">
            <div class="row">
                <div class="cal-md-4 offset-md-4">
                    <div class="card mt-5" style="border-radius:30px">
                        <div class="card-body">
                            <h3 class="text-center">Login</h3>
                            <form method="POST" action="LoginServlet">
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">User Name</label>
                                      <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" require1d="required"name="uname">
                                      <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                    </div>
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Password</label>
                                      <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" required="required"name ="password">
                                    </div>
                                    <div class="form-check">
                                      <input type="checkbox" class="form-check-input" id="exampleCheck1">
                                      <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                    </div>
                                    <div class="text-center">
                                        <button type="submit" class="btn btn-primary">Login</button><br>
                                    <a href="register.jsp">Create account</a>
                                    </div>
                             </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
