<%-- 
    Document   : add_item.jsp
    Created on : 07-Apr-2024, 07:37:52
    Author     : Naveen Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Items</title>
        <%@include file="adminCSS.jsp"%>
        <style>

            .container {
                margin-top: 10px;
            }

            .card {
                border-radius: 10px 40px;
                box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            }

            .card-body {
                padding: 30px;
            }

            .form-control {
                border-radius: 20px;
                margin-bottom: 10px;
            }

            .btn-primary {
                background-color: #007bff;
                border: none;
                border-radius: 40px;
                padding: 10px 30px;
                font-size: 15px;
                color: #fff;
                font-weight: 650;
                transition: background-color 0.3s ease;
            }

            .btn-primary:hover {
                background-color: #0056b3;
            }


            label {
                font-weight: 700;
            }

            select.form-control {
                appearance: none;
                background-size: 20px;
                padding-right: 40px;
            }

            option {
                background-color: #f0f2f2;
            }

            .form-text {
                color: #6c757d;
            }

            h3 {
                color: #007bff;
                font-weight: 700;
            }



        </style>
    </head>
    <body style='background-color:#f0f2f2'>
        <%@include file="adminNavbar.jsp"%>
        <div class="container">
            <div class="row">
                <div class='col-md-4 offset-md-4'>
                    <div class='card'>
                        <div class='card-body'>
                            <h3 class='text-center'>Add Items</h3>
                            <form action="../itemsAdd" method="POST" enctype="multipart/form-data">
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Item Name</label>
                                      <input name="iName" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Item Name">
                                      <small id="emailHelp" class="form-text text-muted"></small>
                                    </div>
                                    
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Year </label>
                                      <input name="year" type="text" class="form-control" id="exampleInputPassword1" placeholder="Year">
                                    </div>
                                    
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Price </label>
                                      <input name = "price" type="double" class="form-control" id="exampleInputPassword1">
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Item catergories</label>
                                        <select  name="iCater "class="form-control" id="exampleFormControlSelect1">
                                          <option>--Select--</option>
                                          <option value="IPhone">IPhone</option>
                                          <option value="Laptop">MacBook</option>
                                          <option value="IPad">Ipad</option>
                                          
                                        </select>
                                     </div>
                                    
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Item Status</label>
                                        <select name = "iStat"class="form-control" id="exampleFormControlSelect1">
                                          <option>--Select--</option>
                                          <option value = "Active">Active</option>
                                          <option value="Inactive">Inactive</option>
                                        </select>
                                     </div>
                                    
                                        <div class="form-group">
                                          <label for="exampleFormControlFile1">Upload Photo</label>
                                          <input name="phoName" type="file" class="form-control-file" id="exampleFormControlFile1">
                                        </div>
        
                                
                                    <button type="submit" class="btn btn-primary">ADD</button>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>