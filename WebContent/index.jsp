<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.io.*" %>
    <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.ServletException" %>
    <%@page import="javax.servlet.annotation.WebServlet" %>
    <%@page import="javax.servlet.http.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Azenta Template">
    <meta name="keywords" content="Azenta, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Room On Rent</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<body>

 <!-- Page Preloder -->
    
	
	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
<%

HttpSession ss=request.getSession(false);
String user_name=(String)ss.getAttribute("user_name");
if(user_name==null){
	System.out.println("null;");
	  request.getRequestDispatcher("login.jsp").forward(request, response);
}

%>
	
    <!-- Offcanvas Menu Section Begin -->
    <div class="offcanvas-menu-overlay"></div>
    <div class="canvas-open">
        <i class="icon_menu"></i>
    </div>
    <div class="offcanvas-menu-wrapper">
        <div class="canvas-close">
            <i class="icon_close"></i>
        </div>
        <div class="language-bar">
            <div class="language-option">
                <img src="img/flag.png" alt="">
                <span>Raipur</span>
                <i class="fa fa-angle-down"></i>
                <div class="flag-dropdown">
                    <ul>
                        <li><a href="RaipurControl">Raipur</a></li>
                        <li><a href="DDUControll">DDU</a></li>
                        <li><a href="KotaControll">Kota</a></li>
                    </ul>
                </div>
            </div>
            <div class="property-btn">
                <a href="submit-property.jsp" class="property-sub">Submit Add</a>
            </div>
        </div>
        <nav class="main-menu">
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="allPropertyDisplay.jsp">Room</a></li>
                <li><a href="Agent.jsp">Agents</a></li>
               
                <li><a href="Contect_us.jsp">Contact</a></li>
            </ul>
        </nav>
        <div class="nav-logo-right">
            <ul>
                <li>
                    <i class="icon_phone"></i>
                    <div class="info-text">
                        <span>Phone:</span>
                        <p>(+91) 8839737393</p>
                    </div>
                </li>
                <li>
                    <i class="icon_map"></i>
                    <div class="info-text">
                        <span>Address:</span>
                        <p>352/6 Kota, <span>Raipur</span></p>
                    </div>
                </li>
                <li>
                    <i class="icon_mail"></i>
                    <div class="info-text">
                        <span>Email:</span>
                        <p>info.roomonrent@gmail.com</p>
                    </div>
                </li>
            </ul>
        </div>
    </div>
    <!-- Offcanvas Menu Section End -->
	<!-- Header Section Begin -->
    <header class="header-section">
        <div class="top-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-7">
                        <nav class="main-menu">
                            <ul>
                                <li class="active"><a href="index.jspl">Home</a></li>
								<li><a href="allPropertyDisplay.jsp">Room</a></li>
								<li><a href="Agent.jsp">Agets</a></li>
								
								<li><a href="Contect_us.jsp">Contact</a></li>
                            </ul>
                        </nav>
                    </div>
                    <div class="col-lg-5">
                        <div class="top-right">
                            <div class="language-option">
                                <img src="img/flag.png" alt="">
                                <span>Raipur</span>
                                <i class="fa fa-angle-down"></i>
                                <div class="flag-dropdown">
                                    <ul>
                                        <li><a href="RaipurControl">Raipur</a></li>
                                        <li><a href="DDUControll">DDU</a></li>
                                        <li><a href="KotaControll">Kota</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="submit-property.jsp" class="property-sub">Submit Add</a>
							
                            <a   class="container" color="red" style="color:white;text-align:center;hover:blue;"> <%
                         
                           
                           
                           %>
                           <%=user_name %></a>
                            <a style="color:white;text-align:center;" href="logout.jsp" class="language-option">Logout</a>
							
						</div>
                    </div>
					 
                </div>
            </div>
        </div>
        <div class="nav-logo">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="logo">
                            <a href="./index.html"><img src="img/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="nav-logo-right">
                            <ul>
                                <li>
                                    <i class="icon_phone"></i>
                                    <div class="info-text">
                                        <span>Phone:</span>
										<p>(+91) 8839737393</p>
                                    </div>
                                </li>
                                <li>
                                    <i class="icon_map"></i>
                                    <div class="info-text">
                                          <span>Address:</span>
										  <p>352/6 Kota, <span>Raipur</span></p>
									</div>
                                </li>
                                <li>
                                    <i class="icon_mail"></i>
                                    <div class="info-text">
                                        <span>Email:</span>
										<p>mishraji@gmail.com</p>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!-- Header End --><!-- Hero Section Begin -->
    
    
    
    
    
<%



try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
    PreparedStatement ps = con.prepareStatement("select * from prj_submit_property");
    ResultSet rs = ps.executeQuery();
    %>
 <section class="hero-section">
        <div class="hero-items owl-carousel">
    <% 
    int count=0;
    while ( rs.next()) {
    	
    	int id=rs.getInt(1); %>
    
    
    		 <div class="single-hero-item set-bg" style="height:550px;width: 100%" data-setbg="./DisplayPhotoServlet?id=<%=id%>">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8 offset-lg-2">
                            <div class="hero-text">
                             <p class="room-location"><i class="icon_pin"></i><%=rs.getString("Enviroment")%>, <%=rs.getString("LocalArea") %>.</p>
                                <h2><%= rs.getString(2) %></h2>
                                <div class="room-price">
                                    <span>Start Form:</span>
                                    <p><%=rs.getInt("Price") %></p>
                                </div>
                                <ul class="room-features">
                                    <li>
                                        <i class="fa fa-arrows"></i>
                                        <p><%=rs.getInt("Area") %> sqft</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-bed"></i>
                                        <p><%=rs.getInt("Beds") %> Bed Room</p>
                                    </li>
                                    <% String vhic=rs.getString("Vhicle"); %>
                                     <li>
                                            <% if(vhic.equals("Bike")) {%>
                                                <i class="fa fa-motorcycle"></i>
                                                <p><%=vhic %></p>
                                                <%}
                                            else{ %>
                                             <i class="fa fa-bicycle"></i>
                                                <p><%=vhic %></p>
                                            		
                                            <%} %>
                                            </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
            
    
    
    
    
    
    	 

            
 <%
 count++;
 if(count>=3)
	 	break;
    }
%>

 </div>
        
    </section>

<% 
    con.close();
}
catch(Exception ex) {
	
	%>
	
	Error Occured:::::::<%=ex.getMessage() %>
	
	<% 
}


%>
     
    
    
    
    
    
   
    <!-- Hero Section End -->
	<div class="search-form">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="search-form-text">
                        <div class="search-text">
                            <i class="fa fa-search"></i>
                           Find Desired Room
                        </div>
                        <div class="home-text">
                            <i class="fa fa-home"></i>
                            Room On Rent
                        </div>
                    </div>
                    <form action="SearchProper1.jsp" class="filter-form" method="post">
                        <div class="first-row">
                          <select name="room-Type" >
                               <option value="Room">Room </option>
                                <option value="Paying Guest">Paying Guest</option>
                            </select>
                            <select name="Enviroment" >
                                <option value="Near Market">Near Market</option>
                                <option value="PeaceFull Area">PeaceFull Area</option>
                            </select>
							
                            <select name="Local-Area" >
                                <option value="Kota">Kota</option>
                                <option value="Amapara">Amapara</option>
                                <option value="DDU">DDU</option>
                            </select>
                            <select name="Beds" >
                                <option value="1">1</option>
                                <option value="2">2</option>
                            </select>
                        </div>
						<div style="height:80px;background-color: white;"></div>
						
                        <div class="second-row">
                            <select name="Vhicle" >
                                <option value="">No vhicle</option>
                                <option value="Bicycle">Bicycle</option>
                                <option value="Bike">Bike</option>
                            </select>
		                   <select name="price" >
                                <option value="">Select Price limit</option>
                                <option value="1800">1800</option>
                                <option value="2000">2000</option>
                                <option value="2500">2500</option>
                                <option value="3000">3000</option>
                                <option value="3500">3500</option>
                                <option value="4000">4000</option>
                                <option value="4500">4500</option>
                                <option value="5000">5000</option>
                                <option value="5500">5500</option>
                                <option value="6000">6000</option>
                            </select>
                            
                            <select name="area" id="area">
                                <option value="">-Select Area- </option>
                                <option value="180">180 sqft</option>
                                <option value="200">200 sqft</option>
                                <option value="250">250 sqft</option>
                                <option value="300">300 sqft</option>
                                <option value="350">350 sqft</option>
                                <option value="400">400 sqft</option>
                                <option value="450">450 sqft</option>
                                <option value="500">500 sqft</option>
                            </select>
							
                        
                            <button type="button" class="search-btn" value="submit">Search</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
	<!-- How It Works Section Begin -->
    <section class="howit-works spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Find Your Desired Room</span>
                        <h2>How It Work</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-4">
                    <div class="single-howit-works">
                        <img src="img/howit-works/howit-works-1.png" alt="">
                        <h4>Search And Find Rooms</h4>
                        <p>First search your room according to your need and preference you can use above search section.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-howit-works">
                        <img src="img/howit-works/howit-works-2.png" alt="">
                        <h4>Find Your Room</h4>
                        <p>Find Your Room according to your need, We have hundreds of property.</p>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="single-howit-works">
                        <img src="img/howit-works/howit-works-3.png" alt="">
                        <h4>Talk To Agent</h4>
                        <p>Book your selected apartment(s) and talk to their related agents.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- How It Works Section End -->
    
    
    
    
    
    
    
<%



try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
    PreparedStatement ps = con.prepareStatement("select * from prj_submit_property");
    ResultSet rs = ps.executeQuery();
    %>
 <!-- Feature Section Begin -->
    <section class="feature-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>Listing From Our Agents</span>
                        <h2>Featured Properties</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="feature-carousel owl-carousel">
    <% 
    while ( rs.next()) {
    	
    	int id=rs.getInt(1); %>
    	
    	<div class="col-lg-4">
                        <div class="feature-item">
                            <div class="fi-pic set-bg" data-setbg="./DisplayPhotoServlet?id=<%=id%>">
                                <div class="pic-tag">
                                    <div class="f-text">feauture</div>
                                    <div class="s-text">On Rent</div>
                                </div>
                                <div class="feature-author">
                                    <div class="fa-pic">
                                        <img src="img/feature/f-author-3.jpg" alt="">
                                    </div>
                                    <div class="fa-text">
                                        <span>Jonathan Walters</span>
                                    </div>
                                </div>
                            </div>
                            <div class="fi-text">
                                <div class="inside-text">
                                    <h4><%= rs.getString(2) %></h4>
                                    <ul>
                                        <li><i class="fa fa-map-marker"></i> <%=rs.getString("Enviroment")%>, <%=rs.getString("LocalArea") %>.</li>
                                        
                                    </ul>
                                    <h5 class="price"><%=rs.getInt("Price") %><span>/month</span></h5>
                                </div>
                                <ul class="room-features">
                                    <li>
                                        <i class="fa fa-arrows"></i>
                                        <p><%=rs.getInt("Area") %> sqft</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-bed"></i>
                                        <p><%=rs.getInt("Beds") %> Beds</p>
                                    </li>
                                   
                                    <% String vhic=rs.getString("Vhicle"); %>
                                     <li>
                                            <% if(vhic.equals("Bike")) {%>
                                                <i class="fa fa-motorcycle"></i>
                                                <p><%=vhic %></p>
                                                <%}
                                            else{ %>
                                             <i class="fa fa-bicycle"></i>
                                                <p><%=vhic %></p>
                                            		
                                            <%} %>
                                            </li>
                                </ul>
                            </div>
                        </div>
                    </div>
    	
    	
    	
    	
    
    
    		
            
            
            
    
    
    
    
    
    	 

            
 <%}
%>

    
                </div>
            </div>
        </div>
    </section>
    

<% 
    con.close();
}
catch(Exception ex) {
	
	%>
	
	Error Occured:::::::<%=ex.getMessage() %>
	
	<% 
}


%>
     
    
    
    
    
    
<%



try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
    PreparedStatement ps = con.prepareStatement("select * from prj_submit_property");
    ResultSet rs = ps.executeQuery();
    %>
 <div class="top-properties-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="properties-title">
                        <div class="section-title">
                            <span>Top Property For You</span>
                            <h2>Top Properties</h2>
                        </div>
                        <a href="allPropertyDisplay.jsp" class="top-property-all">View All Property</a>
                    </div>
                </div>
            </div>
        </div>
        <div class="container">
            <div class="top-properties-carousel owl-carousel">
    <% 
    int count=0;
    while ( rs.next()) {
    	
    	int id=rs.getInt(1); %>
    	
    	 <div class="single-top-properties">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="stp-pic">
                                <img src="./DisplayPhotoServlet?id=<%=id%>" alt="">
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="stp-text">
                                <div class="s-text">On Rent</div>
                                <h2><%= rs.getString(2) %></h2>
                                <div class="room-price">
                                    <span>Start From:</span>
                                    <h4><%=rs.getInt("Price") %>/Month</h4>
                                </div>
                                <div class="properties-location"><i class="icon_pin"></i><%=rs.getString("Enviroment")%>, <%=rs.getString("LocalArea") %>.</div>
                                <ul class="room-features">
                                    <li>
                                        <i class="fa fa-arrows"></i>
                                        <p><%=rs.getInt("Area") %> sqft</p>
                                    </li>
                                    <li>
                                        <i class="fa fa-bed"></i>
                                        <p><%=rs.getInt("Beds") %> Bed Room</p>
                                    </li>
                                    
                                    <% String vhic=rs.getString("Vhicle"); %>
                                     <li>
                                            <% if(vhic.equals("Bike")) {%>
                                                <i class="fa fa-motorcycle"></i>
                                                <p><%=vhic %></p>
                                                <%}
                                            else{ %>
                                             <i class="fa fa-bicycle"></i>
                                                <p><%=vhic %></p>
                                            		
                                            <%
                                            count++;
                                            if(count>=4)
                                            	break;
                                            
                                            
                                            } %>
                                            </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
    	
    	
    	
    	
    	
    	
    	
    	
    
    	
    	
    
    
    		
            
            
            
    
    
    
    
    
    	 

            
 <%}
%>

    
               </div>
        </div>
    </div>
    <!-- Top Properties Section End -->
    

<% 
    con.close();
}
catch(Exception ex) {
	
	%>
	
	Error Occured:::::::<%=ex.getMessage() %>
	
	<% 
}


%>
     
    
    
         
  
  <%



try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
    PreparedStatement ps = con.prepareStatement("select * from prj_register_agent");
    ResultSet rs = ps.executeQuery();
    %>
      <!-- Agent Section Begin -->
    <section class="agent-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <span>We Are To Help You</span>
                        <h2>Our Agents</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="agent-carousel owl-carousel">
                   
                  
                 
    <%
    int count=0;
    while ( rs.next()) {
    	
    	int id=rs.getInt(1); %>
    
    
    
    
      <div class="col-lg-3">
                        <div class="single-agent">
                            <div class="sa-pic">
                                <img src=./DisplayAgentPhotoServlet?id=<%=id%> alt="Agent.jsp">
                                <div class="hover-social">
                                    <a href="<%=rs.getString("twitter") %>" class="twitter"><center><i class="fa fa-twitter"></i></center></a>
                                    <a href="<%=rs.getString("insta") %>" class="instagram"><i class="fa fa-instagram"></i></a>
                                    <a href="<%=rs.getString("fb") %>" class="facebook"><i class="fa fa-facebook"></i></a>
                                </div>
                            </div>
                            <h5><%=rs.getString("name") %> <span><%=rs.getString("profession") %></span></h5>
                        </div>
                    </div>
    
    
    
    
    	 
                       
            
 <%
 count++;
 if(count>5)
	 	break;
    }
%>

          
                    
                </div>
            </div>
        </div>
    </section>
    <!-- Agent Section End -->
    

<% 
    con.close();
}
catch(Exception ex) {
	
	%>
	
	Error Occured:::::::<%=ex.getMessage() %>
	
	<% 
}


%>
                       
  
  
  
    
    
   
    
    
	<!-- Footer Section Begin -->
    <footer class="footer-section set-bg" data-setbg="img/footer-bg.jpg">
        <div class="container">
            <div class="footer-text">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="footer-logo">
                            <div class="logo">
                                <a href="#"><img src="img/logo.png" alt=""></a>
                            </div>
                            <p>Subscribe our newsletter gor get notification about new updates.</p>
                            <form action="#" class="newslatter-form">
                                <input type="text" placeholder="Enter your email...">
                                <button type="submit"><i class="fa fa-location-arrow"></i></button>
                            </form>
                        </div>
                    </div>
                    <div class="col-lg-3 offset-lg-1">
                        <div class="footer-widget">
                            <h4>Property City</h4>
                            <ul>
                                <li><i class="fa fa-caret-right"></i> <a href="KotaControll">Kota</a></li>
                                <li><i class="fa fa-caret-right"></i> <a href="DDUControll">DDU</a></li>
                                <li><i class="fa fa-caret-right"></i> <a href="AMANAKAcontroll">Amanaka</a></li>
                                
                            </ul>
                            
                        </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="footer-widget">
                            <h4>Social</h4>
                            <ul class="social">
                                <li><i class="ti-facebook"></i> <a href="#">Facebook</a></li>
                                <li><i class="ti-instagram"></i> <a href="#">Instagram</a></li>
                                <li><i class="ti-twitter-alt"></i> <a href="#">Twitter</a></li>
                                <li><i class="ti-google"></i> <a href="#">Google+</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="footer-widget">
                            <h4>Contact Us</h4>
                            <ul class="contact-option">
                                <li><i class="fa fa-map-marker"></i> 352/6 Kota,Raipur</li>
                                <li><i class="fa fa-phone"></i> (+91)8839 737 393</li>
                                <li><i class="fa fa-envelope"></i> info.roomonrent@gmail.com</li>
                                <li><i class="fa fa-clock-o"></i> Mon - Sat, 08 AM - 05 PM</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="copyright-text">
                <p><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This Website is made <i class="ti-heart" aria-hidden="true"></i> for Room Renting for Bachelor around NIT Raipur.
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></p>
            </div>
        </div>
    </footer>
    <!-- Footer Section End -->

<!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.magnific-popup.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>



</body>
</html>