<%-- 
    Document   : edit_items
    Created on : 09-Apr-2024, 07:33:06
    Author     : Naveen Dilshan
--%>

<%@page import="com.entity.itemDetailes"%>
<%@page import="com.DAO.itemDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <%@include file="adminCSS.jsp"%>
    </head>
    <body style='background-color:#f0f2f2'>
        <%@include file="adminNavbar.jsp"%>
        <div class="container">
            <div class="row">
                <div class='col-md-4 offset-md-4'>
                    <div class='card'>
                        <div class='card-body'>
                            <h4 class='text-center'>Edit Item</h4>
                            
                            
<!--                            parameter pass for edit items already added-->
                            <%
                                int id = Integer.parseInt(request.getParameter("id"));
                                itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
                                itemDetailes b=dao.getItemsById(id);
                            %>
                            
                            
                            <form action="../editItemsServlet" method="POST">
                                
                                <div class="form-group">
                                    <input type="hidden" name="id" value="<%=b.getItemId()%>">
                                </div>
                                    <div class="form-group">
                                      <label for="exampleInputEmail1">Item Name</label>
                                      <input name="iName" type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter Item Name" value="<%=b.getItemName()%>">
                                      <small id="emailHelp" class="form-text text-muted"></small>
                                    </div>
                                    
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Year </label>
                                      <input name="year" type="text" class="form-control" id="exampleInputPassword1" placeholder="Password" value="<%=b.getM_year()%>">
                                    </div>
                                    
                                    <div class="form-group">
                                      <label for="exampleInputPassword1">Price </label>
                                      <input name = "price" type="number" class="form-control" id="exampleInputPassword1" value="<%=b.getPrice()%>">
                                    </div>
                                    
                                    
                                    <div class="form-group">
                                        <label for="exampleFormControlSelect1">Item Status</label>
                                        <select name = "iStat"class="form-control" id="exampleFormControlSelect1">
                                          <%
                                              if("Active".equals(b.getStatus())){
                                          %>
                                                  <option value = "Inactive">Inactive</option>
                                                  <option value = "Active">Active</option>
                                                  
                                          <%    }
                                               else{
                                          %>  
                                                  <option value = "Active">Active</option>
                                                  <option value = "Inactive">Inactive</option>
                                          <%
                                                  }
                                          %>
                                          
                                          
                                        </select>
                                     </div>
                                    
                                    
                                       
                                
                                    <button type="submit" class="btn btn-primary">Update</button>
                                </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>

