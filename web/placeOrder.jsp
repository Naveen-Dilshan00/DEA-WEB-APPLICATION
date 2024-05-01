<%-- 
    Document   : placeOrder
    Created on : 18-Apr-2024, 10:29:59
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
        
         <c:if test="${empty userobj}">
            <c:redirect url="login.jsp"></c:redirect>
        </c:if>
        
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
          <div class="col-md-6">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center text-success">Your Detailes</h3>>
                            <form action="OrderServlet">
                                <input type="hidden" name="id" value="${userobj.id}">
                                <input type="hiden" name="Iid" value="">
                                <div class="form-row">
                                  <div class="form-group col-md-6">
                                    <label name="name"for="inputEmail4">Name</label>
                                    <input type="text" class="form-control" id="inputEmail4" placeholder="Name" value="${userobj.name}" name="username" required>
                                  </div>
                                 
                                </div>
                                
                              <div class="form-row">
                               <div class="form-group col-md-6">
                                 <label for="inputEmail4">Email</label>
                                 <input type="email" class="form-control" id="inputEmail4" placeholder="Email" value="${userobj.email}" name="email" required>
                               </div>
                               <div class="form-group col-md-6">
                                 <label for="inputPassword4">Phone Number</label>
                                 <input type="text" class="form-control" id="inputPassword4" placeholder="Phone_number" value="${userobj.phno}" name="phno"required>
                               </div>
                             </div>
                                                            <div class="form-row">
                               <div class="form-group col-md-6">
                                 <label for="inputEmail4">Address</label>
                                 <input type="text" class="form-control" id="inputEmail4" placeholder="Email" name="address">
                               </div>
                               <div class="form-group col-md-6">
                                 <label for="inputPassword4">LandMark</label>
                                 <input type="text" class="form-control" id="inputPassword4" placeholder="Password" name="landmark">
                               </div>
                             </div>
                              <div class="form-row">
                               <div class="form-group col-md-6">
                                 <label for="inputEmail4">City</label>
                                 <input type="text" class="form-control" id="inputEmail4" placeholder="Email" name="city">
                               </div>
                               <div class="form-group col-md-6">
                                 <label for="inputPassword4">Zip</label>
                                 <input type="text" class="form-control" id="inputPassword4" placeholder="Password" name="zip">
                               </div>
                                  <div class="form-group">
                                      <label>Payment Mode</label>
                                      <select name="payment">
                                          <option value="nonselect">-Select-</option>
                                          <option value="c">Cash on dilivary</option>
                                      </select>
                                  </div>
                                  <br>
                                  
                             </div>
                                <button class="btn btn-warning">Order Now</button>
                                  <a href="index.jsp" class="btn btn-success">Continue</a>
                            </form>
                        </div>
                    </div>
                </div>
    </body>
</html>
