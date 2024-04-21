<%-- 
    Document   : edit_profile
    Created on : 12-Apr-2024, 05:25:13
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@page isELIgnored ="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_components/allCSS.jsp" %>
    </head>
    <body>
        <%@include file="all_components/navbar.jsp" %>
        <div class="container">
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="text-center">edit profile</h4>
                            <form method="POST" action="UpdateProfileServlet">
                                
                                     <c:if test="${ not empty SuccMsg}">
                                         <h5 class="text-success text-center">${SuccMsg}</h5>
                                         <c:remove var="SuccMsg" scope="session"/>
                                     </c:if>

                                    <c:if test="${ not empty failedMsg}">
                                         <h5 class="text-danger text-center">${failedMsg}</h5>
                                         <c:remove var="failedMsg" scope="session"/>
                                    </c:if>
                                <input type="hidden" value="${userobj.id}" name="id">
                                <div class="form-group">
                                        <label for="exampleInputPassword1">Name</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1" name="fname" value="${userobj.name}">
                                </div>
                                <div class="form-group">
                                        <label for="exampleInputEmail1">Email address</label>
                                        <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email" name="email" value="${userobj.email}">
                                        <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
                                </div>
                                <div class="form-group">
                                        <label for="exampleInputPassword1">Phone Number</label>
                                        <input type="text" class="form-control" id="exampleInputPassword1" placeholder="Phone number" name="phno" value="${userobj.phno}">
                                </div>
                                <div class="form-group">
                                        <label for="exampleInputPassword1">Password</label>
                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password" >
                                </div>
                                
                              
                                    <button type="submit" class="btn btn-primary">Submit</button>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
