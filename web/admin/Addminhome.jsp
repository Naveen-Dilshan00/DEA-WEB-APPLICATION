<%-- 
    Document   : Addminhome
    Created on : Apr 12, 2024, 9:35:22 AM
    Author     : damik
--%>

<%@page import="com.DAO.userDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

        <link  href="sidebarcss.css" rel="stylesheet" type="text/css">
        <link  href="admincss.css" rel="stylesheet" type="text/css">


        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <script type="text/javascript">
            google.charts.load("current", {packages: ["corechart"]});
            google.charts.setOnLoadCallback(drawChart);
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Month', 'In come per month'],
                    ['January', 750],
                    ['February', 600],
                    ['March', 800],
                    ['April', 1500],
                    ['May', 1750]
                ]);

                var options = {
                    title: 'Monthly Sales(LKR)',
                    is3D: true,
                };

                var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
                chart.draw(data, options);
            }
        </script>


    </head>
    <body>
        <%
            userDAOImpl count = new userDAOImpl(DBConnect.getConn());
            int i = count.getUserCount();
            userDAOImpl count2 = new userDAOImpl(DBConnect.getConn());
            int b = count2.getProductCount();
        %>
        <%@include file="sidebar.jsp" %>
        <section id="content">

            <main>
                <div class="head-title">
                    <h1>Dashboard</h1>
                </div>
                
                    <ul class="box-info">
                        <li>
                            <i class='bx bxs-cart'></i>
                            <span class="text">    
                                <p>Total Orders</p>
                                <h1>1999</h1>
                            </span>
                        </li>
                        <li>
                            <i class='bx bx-user-pin' ></i>
                            <span class="text">
                                <p>Total Customers</p>
                                <h1><%=i%></h1>
                            </span>
                        </li>
                        <li>
                            <i class='bx bxs-shopping-bags bx-rotate-270' ></i>
                            <span class="text">
                                <p>Total Products</p>
                                <h1><%=b%></h1>
                            </span>
                        </li>
                    </ul>

                    <div class="charts">

                        <div id="piechart_3d" style="width: 500px; height: 300px; "></div> 

                        <div class="items-area">
                            <h1>Most Sold Items</h1>
                            <div class="items">
                                <div class="items-title">iPhone 15 Pro Max</div>
                                <div class="items-bar">
                                    <div class="items-per" per="70%" style="max-width:70%">
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="items-title">MacBook Air 13</div>
                                <div class="items-bar">
                                    <div class="items-per" per="40%" style="max-width:40%">
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="items-title">Apple Watch Series 9</div>
                                <div class="items-bar">
                                    <div class="items-per" per="60%" style="max-width:60%">
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="items-title">iPhone 15 Pro</div>
                                <div class="items-bar">
                                    <div class="items-per" per="80%" style="max-width:80%">
                                    </div>
                                </div>
                            </div>
                            <div class="items">
                                <div class="items-title">Others</div>
                                <div class="items-bar">
                                    <div class="items-per" per="20%" style="max-width:20%">
                                    </div>
                                </div>
                            </div>
                        </div>


                    </div>
                    <div class="table-data">
                        <div class="order">
                            <h3>Latest Orders</h3>
                            <table>
                                <thead>
                                    <tr>
                                        <th>Products</th>
                                        <th>Order ID</th>
                                        <th>Date</th>
                                        <th>Customer name</th>
                                        <th>Status</th>
                                        <th>Amount</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>iphone 15 Pro</td>
                                        <td>#11232</td>
                                        <td>April 02.2024</td>
                                        <td>jacob</td>
                                        <td>Delivered</td>
                                        <td>120,000LKR</td>
                                        <td>....</td>
                                    </tr>
                                    <tr>
                                        <td>iphone 15 Pro</td>
                                        <td>#11232</td>
                                        <td>April 02.2024</td>
                                        <td>jacob</td>
                                        <td>Delivered</td>
                                        <td>120,000LKR</td>
                                        <td>....</td>
                                    </tr>
                                    <tr>
                                        <td>iphone 15 Pro</td>
                                        <td>#11232</td>
                                        <td>April 02.2024</td>
                                        <td>jacob</td>
                                        <td>Delivered</td>
                                        <td>120,000LKR</td>
                                        <td>....</td>
                                    </tr>
                                    <tr>
                                        <td>iphone 15 Pro</td>
                                        <td>#11232</td>
                                        <td>April 02.2024</td>
                                        <td>jacob</td>
                                        <td>Delivered</td>
                                        <td>120,000LKR</td>
                                        <td>....</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </main>
        </section>



    </body>
</html>
