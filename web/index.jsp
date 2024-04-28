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
            
            .crd-ho:hover{
                background-color:#f7f7f7;
            }
        </style>
    </head>
    <body style="background-color:#f7f7f7">
  
<!--        check user already loged in-->
        <%
            user u =(user)session.getAttribute("userobj");
        %>
        
<<<<<<< Updated upstream
        <%@include file="all_components/navbar.jsp"%>
        
        
        <div class="container-fluid back-img">
            <h2 class="text-center text-danger">WATCH STROE</h2>
=======
          
        
        
        
    <!-- Carousel -->


  <div class="carousel">
      <!-- list item -->
      <div class="list">
          <div class="item">
              <img src="image/carousel1.jpg">
              <div class="content">
                  <div class="author">APPLE</div>
                  <div class="title">WHO WE ARE</div>
                  <div class="topic">Think DIfferent</div>
                  <div class="des1">
                      Be aware of scams involving Apple Gift Cards, App Store & iTunes Gift Cards, and Apple Store Gift Cards.
                      
                  </div>
                  <div class="buttons">
                      <button>About US</button>
                  </div>
              </div>
          </div>
          <div class="item">
              <img src="image/carousel2.png">
              <div class="content">
                  <div class="author">APPLE</div>
                  <div class="title">Titanium. So Strong. So smart</div>
                  <div class="topic">iPhone 15 Pro</div>
                  <div class="des2">
                      The No. 01 Smart phone in the world right now with all the new features.
                  </div>
                  <div class="buttons">
                      <button>BUY NOW</button>
                     
                  </div>
              </div>
          </div>
          <div class="item">
              <img src="image/carousel3.png">
              <div class="content">
                  <div class="author">APPLE</div>
                  <div class="title">The Ultimate Theatre.</div>
                  <div class="topic">VISION PRO</div>
                  <div class="des1">
                      Experience the all world infront of your Eyes with Apple Vision Pro
                  </div>
                  <div class="buttons">
                      <button>BUY NOW</button>  
                  </div>
              </div>
          </div>
         
      </div>
      <!-- list thumnail -->
      <div class="thumbnail">
          <div class="item">
              <img src="image/carousel1.jpg">
              <div class="content">
                  <div class="title">
                      Who We Are
                  </div>
                  <div class="description">
                      About Us
                  </div>
              </div>
          </div>
          <div class="item">
              <img src="image/carousel2.png">
              <div class="content">
                  <div class="title">
                      iPhone 15 Pro
                  </div>
                  <div class="description">
                      Buy Now
                  </div>
              </div>
          </div>
          <div class="item">
              <img src="image/carousel3.png">
              <div class="content">
                  <div class="title">
                  Vision Pro
                  </div>
                  <div class="description">
                      Buy Now
                  </div>
              </div>
          </div>
          
      </div>
      <!-- next prev -->

      <div class="arrows">
          <button id="prev"><</button>
          <button id="next">></button>
      </div>
      <!-- time running -->
      <div class="time"></div>
  </div>

  <script>
//step 1: get DOM
let nextDom = document.getElementById('next');
let prevDom = document.getElementById('prev');

let carouselDom = document.querySelector('.carousel');
let SliderDom = carouselDom.querySelector('.carousel .list');
let thumbnailBorderDom = document.querySelector('.carousel .thumbnail');
let thumbnailItemsDom = thumbnailBorderDom.querySelectorAll('.item');
let timeDom = document.querySelector('.carousel .time');

thumbnailBorderDom.appendChild(thumbnailItemsDom[0]);
let timeRunning = 3000;
let timeAutoNext = 5000;

nextDom.onclick = function(){
  showSlider('next');    
}

prevDom.onclick = function(){
  showSlider('prev');    
}
let runTimeOut;
let runNextAuto = setTimeout(() => {
  next.click();
}, timeAutoNext)
function showSlider(type){
  let  SliderItemsDom = SliderDom.querySelectorAll('.carousel .list .item');
  let thumbnailItemsDom = document.querySelectorAll('.carousel .thumbnail .item');
  
  if(type === 'next'){
      SliderDom.appendChild(SliderItemsDom[0]);
      thumbnailBorderDom.appendChild(thumbnailItemsDom[0]);
      carouselDom.classList.add('next');
  }else{
      SliderDom.prepend(SliderItemsDom[SliderItemsDom.length - 1]);
      thumbnailBorderDom.prepend(thumbnailItemsDom[thumbnailItemsDom.length - 1]);
      carouselDom.classList.add('prev');
  }
  clearTimeout(runTimeOut);
  runTimeOut = setTimeout(() => {
      carouselDom.classList.remove('next');
      carouselDom.classList.remove('prev');
  }, timeRunning);

  clearTimeout(runNextAuto);
  runNextAuto = setTimeout(() => {
      next.click();
  }, timeAutoNext)
}

  </script>

  <!-- 4 boxes -->

  <div class="container-fluid">
    <div class="row align-items-start">
    <div class="row">
      <div class="col-md-6">
        <div class="box1">
          <div class="boximage1">
            <img src="image/box1.png" class="img-fluid" alt="Apple Worldwide Developers Conference">
          </div>
          <div class="text-container1">
            <h4>Apple Worldwide Developers Conference</h4>
            <h4>Join Us Online June 10 - 14</h4>
            <div class="button-container1">
              <a href="#" class="btn btn-primary"><b>Join Now</b></a>
            </div>
          </div>
>>>>>>> Stashed changes
        </div>
        
        
        <% Connection conn=DBConnect.getConn();
        out.println(conn);
        %>

<!--START RECENT BOOKS        -->

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
                                        <a href="login1.jsp" class="btn btn-danger btn-sm ml-2">Add cart</a>
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
