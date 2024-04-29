<%-- 
    Document   : all_items
    Created on : 07-Apr-2024, 07:45:42
    Author     : Naveen Dilshan
--%>

<%@page import="java.util.List"%>
<%@page import="com.entity.itemDetailes"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.itemDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin:All items</title>
        <%@include file="adminCSS.jsp"%>
    </head>
    
    <style>
       
        .table {
            width: 100%;
            border-collapse: collapse;
            border-spacing: 0;
            margin-top: 20px;
        }
        .table th,
        .table td {
            padding: 8px;
            text-align: center; 
            border-bottom: 1px solid #ddd;
            font-weight: 500;
        }
        
        h2{
            color: #007bff;
            font-weight: 700;
        }
        .table th {
            background-color: #0C0C1E; 
            color: white;
            font-weight: 700;
        }
        .table tbody tr:nth-child(even) {
            background-color: #f2f2f2;
        }
        .table tbody tr:hover {
            background-color: #ddd;
        }
    </style>
    <body>
        <%@include file="adminNavbar.jsp"%>
        <h2 class="text-center">Hello Admin</h2>
        
        
        <table class="table">
            <thead>
                <tr>
                  <th scope="col">ID</th>
                  <th scope="col">Image</th>
                  <th scope="col">Item Name</th>
                  <th scope="col">Year</th>
                  <th scope="col">Price</th>
                  <th scope="col">Categories</th>
                  <th scope="col">Status</th>
                  <th scope="col">Action</th>
                </tr>
              </thead>
              <tbody>
              <%itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
              List<itemDetailes> list = dao.getAllItems();
              for(itemDetailes b : list){
              %>   
               <tr>
                  <td><%=b.getItemId()%></td>
                  <td><img src="../Items_img/<%=b.getPhotoName()%>" style="width:100px;height:100px;"></td>
                  <td><%=b.getItemName()%></td>
                  <td><%=b.getM_year()%></td>
                  <td><%=b.getPrice()%></td>
                  <td><%=b.getCatergory()%></td>
                  <td><%=b.getStatus()%></td>
                  <td>
                      <a href='edit_items.jsp?id=<%=b.getItemId()%>' class="btn btn-sm btn-primary">Edit</a>
                      <a href='../itemDeleteServlet?id=<%=b.getItemId()%>' class="btn btn-sm btn-danger">Delete</a>
                  </td>
                </tr>
                
                <%
                 }
                %>
              
              
              
              
              
              </tbody>
         </table>
    </body>
</html>
