<%-- 
    Document   : index
    Created on : 05-Apr-2024, 20:22:06
    Author     : Naveen Dilshan
--%>

<%@page import="com.entity.user"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.itemDetailes"%>
<%@page import="com.DAO.itemDAOImpl"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>APPLE-Index</title>
        <%@include file="all_components/allCSS.jsp"%>
        
        <style type="text/css">
            .back-img{
                background:url("image/Clock.jpg");
                height:50vh;
                width:100%;
                background-size: cover;
                background-position: center;
            }
            
<<<<<<< Updated upstream
            .crd-ho:hover{
                background-color:#f7f7f7;
            }
        </style>
    </head>
    <body style="background-color:#f7f7f7">
  
<!--        check user already loged in-->
=======
        }
        .about-us-section .img-head img{
          width:100%;
          transition: transform .3s;  
        }
       
        .about-us-section .img-head::after {
            content:"";
            width: 100%;
            height: 100%;
            position:absolute;
            left: 0;
            top: 0;
            opacity: .5;
            
        }

        .about-us-section .a-head {
            font-size: 28px;
            color: black;
        
        }
        .about-us-section .break-small {
            width :80px;
            height : 3px;
            background-color: black;
        }

        .about-us-section .atext-para{
            font-size: 17px;
        }
        
        .about-us-section .box {
            background-color: black;
            color: white;
            text-align: center;
            padding: 20px 0px;
            position: relative;
            overflow: hidden;
            height:190px;
            margin:5px;

        }

        .about-us-section .box i {
            font-size:42px;
        }

        .about-us-section .box h4 {
            font-size:14px;
        }

        .about-us-section .box p {
            font-size:22px;
        }
        .about-us-section .box::after,
        .about-us-section .box::before {
          
            content:"";
            position:absolute;
            width:100px;
            height: 100px;
            background-color: rgba(255, 255, 255, 0.5);
            border-radius: 50%;
            transition: transform .3s;
        }

        .about-us-section .box::after {
            left:-50px;
            top: -50px;

        }

        .about-us-section .box::before {
            right:-50px;
            bottom: -50px;
        }

        .about-us-section .box:hover:after,
        .about-us-section .box:hover:before {

        transform: scale(1.2);

        }
 




    /*contact form*/


.contacted{
    display: flex;
    flex-direction: column;
    text-align: center;
    width: 90%;
    max-width: 550px;
    margin: auto;
   
}

.sectionHeader{
    text-transform: capitalize;
    font-weight: bold;
    font-size: 2.5rem;
   
    margin-bottom: .5em;
}

.heading,.sub-heading{
    margin-bottom: .5em;
    font-weight: bold;
}

.heading{
    font-size: 1.5rem;
}

.sub-heading{
    text-align: left;
    font-size: 1.5rem;
}

.contactForm{
    display: grid;
    gap: 3em;
}

form{
    width: 100%;
    margin-top: 3em;
}

.para{
    color: var(--paraColor);
    font-size: 1.1rem;
    line-height: 1.5em;
    margin-bottom: 1em;
}

.para2{
    text-align: left;
}

.input{
    width: 95%;
    max-width: 700px;
    border: none;
    font-size: .9rem;
    padding: 1em;
    outline: none;
    background-color: var(--formBg);
    color: var(--paraColor);
    border-radius: 10px;
    border: 1px solid rgb(53, 53, 53);
    margin-bottom: 1em;

}
.input-submit{
  background-color: black;
  color: white;
  border-radius: 30px;
  padding: 5px;
}

.input-submit:hover{
  background-color: rgb(37, 0, 101);
  color: white;
  
}

.input:focus{
    border: 1px solid 
}

.input::placeholder{
    text-transform: capitalize;
}

.submit{
    background-color: black;
    color: var(--textColor);
    font-weight: bold;
    cursor: pointer;
    width: 100%;
}

.map-container{
    position: relative;
    width: 100%;
    height: 500px;
}

.mapBg{
    position: absolute;
    background-color:white ;
    top: 0;
    right: 0;
    width: 200px;
    height: 90%;
    border-radius: 20px;
}

.map{
    position: absolute;
    bottom: 0;
    left: 0;
    width: 90%;
    height: 90%;
}

.map iframe{
    width: 100%;
    height: 100%;
}

.contactMethod{
    display: flex;
    flex-direction: column;
    margin-top: 2em;
    text-align: left;
}

.method{
    display: flex;
    align-items: center;
}

.contactIcon{
    font-size: 2rem;
    color: black;
    width: 70px;
    padding: 5px;
    margin: 5px;
}

@media screen and (min-width:800px) {
    .contacted{
        max-width: 1100px;
    }
    .contactForm{
        grid-template-columns: 1fr 1fr;
    }   

    .contactMethod{
        flex-direction: row;
        justify-content: space-between;
    }
}

 

</style>
  

  <title>Home Page</title>
</head>
<body>
    
    <%@include file="all_components/navbar1.jsp" %>
    
<!--       check user already loged in-->
>>>>>>> Stashed changes
        <%
            user u =(user)session.getAttribute("userobj");
        %>
        
        <%@include file="all_components/navbar.jsp"%>
        
        
        <div class="container-fluid back-img">
            <h2 class="text-center text-danger">WATCH STROE</h2>
        </div>
        
<<<<<<< Updated upstream
        
        <% Connection conn=DBConnect.getConn();
        out.println(conn);
        %>

<!--START RECENT BOOKS        -->
=======
    <!-- Carousel -->
  
>>>>>>> Stashed changes

<div class="container">
            <h3 class="text-center">Laps</h3>
            <div class="row">
                
                   <%
                    itemDAOImpl dao = new itemDAOImpl(DBConnect.getConn());
                    List<itemDetailes> list2 = dao.getLaps();
                    for(itemDetailes b : list2){
                    %>
                    
                    <div class="col-md-3">   
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Items_img/<%=b.getPhotoName()%>" style="width:150px; height:200px" class="img-thumblin">
                          <p><%=b.getItemName()%></p>
                          <p><%=b.getM_year()%></p>
                          
                          <%
                              if(b.getStatus().equals("Active")){
                          %>
                          <p><%=b.getStatus()%></p>
                          
                          <div class="row">
                             
<!--                              check user already loged in-->
                              <%
                                  if(u==null){
                              %>       
                                        <a href="login.jsp" class="btn btn-danger btn-sm ml-2">Add cart</a>
                              <%
                                  } else{
                              %>
                              <a href="CartServlet?Iid=<%=b.getItemId()%>&&Uid=<%=u.getId()%>" class="btn btn-danger btn-sm ml-2">Add cart</a>
                              <%
                                  }
                              %>          
                              
                              <a href="view_Items.jsp?Iid=<%=b.getItemId()%>" class="btn btn-success btn-sm ml-1">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                          </div>
                          
                          <%} 
                              else{
                           %>
                           <div class="row">
                              <button class="btn btn-success btn-sm ml-1" disabled>OUT Of stock</button>
                              <a href="view_Items.jsp?Iid=<%=b.getItemId()%>" class="btn btn-success btn-sm ml-1">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                           </div>
                            <% }%>
                          
                        </div>
                    </div>
                </div>  
                    <%   
                    }
                    %>
<!--END RECENT BOOK-->

<hr>

<!--START NEW BOOKS -->

        <div class="container">
            <h3 class="text-center">Phones</h3>
            <div class="row">
                
                   <%
                    itemDAOImpl dao2 = new itemDAOImpl(DBConnect.getConn());
                    List<itemDetailes> list = dao2.getPhones();
                    for(itemDetailes b : list){
                    %>
                    
                    <div class="col-md-3">   
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Items_img/<%=b.getPhotoName()%>" style="width:150px; height:200px" class="img-thumblin">
                          <p><%=b.getItemName()%></p>
                          <p><%=b.getM_year()%></p>
                          
                          <%
                              if(b.getStatus().equals("Active")){
                          %>
                          <p><%=b.getStatus()%></p>
                          <div class="row">
                              <a href="" class="btn btn-danger btn-sm ml-2">Add cart</a>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                          </div>
                          
                          <%} 
                              else{
                           %>
                           <div class="row">
                              <button class="btn btn-success btn-sm ml-1" disabled>OUT Of stock</button>
                              <a href="" class="btn btn-success btn-sm ml-1">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1"><%=b.getPrice()%></a>
                           </div>
                            <% }%>
                          
                        </div>
                    </div>
                </div>  
                    <%   
                    }
                    %>
     
              
<!--END NEW BOOK-->

<hr>

<!--START OLD BOOKS-->

        <div class="container">
            <h3 class="text-center">Laptops</h3>
            <div class="row">
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-success btn-sm ml-5">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                          </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-success btn-sm ml-5">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                          </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-success btn-sm ml-5">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                          </div>
                        </div>
                    </div>
                </div>
                
                <div class="col-md-3">
                    <div class="card crd-ho">
                        <div class="card-body text-center">
                            <img alt="" src="Books/Java.jpg" style="width:150px; height:200px" class="img-thumblin">
                          <p>Java Programming</p>
                          <p>Balguruswamy</p>
                          <p>catergories : New</p>
                          <div class="row">
                              <a href="" class="btn btn-success btn-sm ml-5">View Detailes</a>
                              <a href="" class="btn btn-danger btn-sm ml-1">299</a>
                          </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="text-center mt-1">
                <a href="" class="btn btn-danger btn-sm text-white">View All</a>
            </div>
        </div>
<!--END Old BOOK-->

<%@include file="all_components/footer.jsp"%>
    </body>
</html>
