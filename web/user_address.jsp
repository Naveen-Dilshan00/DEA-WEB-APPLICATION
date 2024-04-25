<%-- 
    Document   : user_address
    Created on : 12-Apr-2024, 09:27:43
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="all_components/allCSS.jsp"%>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6 offset-md-4">
                    <div class="card">
                        <div class="card-body">
                            <h3 class="text-center">Add Address</h3>
                            <form action="">
                                                         <div class="form-row">
                               <div class="form-group col-md-6">
                                 <label for="inputEmail4">Address</label>
                                 <input type="text" class="form-control" id="inputEmail4" placeholder="Email">
                               </div>
                               <div class="form-group col-md-6">
                                 <label for="inputPassword4">LandMark</label>
                                 <input type="text" class="form-control" id="inputPassword4" placeholder="Password">
                               </div>
                             </div>
                                                       <div class="form-row">
                               <div class="form-group col-md-4">
                                 <label for="inputEmail4">Address</label>
                                 <input type="text" class="form-control" id="inputEmail4" placeholder="Email">
                               </div>
                               <div class="form-group col-md-4">
                                 <label for="inputPassword4">LandMark</label>
                                 <input type="text" class="form-control" id="inputPassword4" placeholder="Password">
                               </div>
                                                           
                                 <div class="form-group col-md-4">
                                 <label for="inputPassword4">LandMark</label>
                                 <input type="text" class="form-control" id="inputPassword4" placeholder="Password">
                               </div>
                             </div>
                                <div class="text-center">
                                    <button class="btn btn-warning text-white">ADD Address</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
