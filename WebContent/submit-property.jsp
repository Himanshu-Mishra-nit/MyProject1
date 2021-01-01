<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>

<%@ page import="java.util.List" %>
<%@ page import="java.util.concurrent.ConcurrentHashMap" %>


<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>



<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

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
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
	<style>
	
	
	
		
		label{
		
		background-color: #fff;
    border-radius: 5px;
    border: solid 1px #e8e8e8;
    
    font-family: inherit;
    font-size: 14px;
    font-weight: normal;
			color:black;
			height:50px;
			width:250px;
			-webkit-tap-highlight-color: transparent;
			position:static;
			
			margin-top:75px;;
			bottom:0;
			left:0;
			right:0;
			display:flex;
			justyfy-content:center;
			align-items:center;
		
		}
		.search-btn{
			display: inline-block;
    background: #2CBDB8;
    font-size: 14px;
    color: #ffffff;
    padding: 15px 120px;
	position:static;
	margin-left:290px;
		
		}
		.image-preview__image{
		display:none;
		width:100%;
		}
		
	
	
	</style>
</head>
<title>Guru Form</title>
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
                        <li><a href="#">Raipur</a></li>
                        <li><a href="#">DDU</a></li>
                        <li><a href="#">Kota</a></li>
                    </ul>
                </div>
            </div>
            <div class="property-btn">
                <a href="#" class="property-sub">Submit Add</a>
            </div>
        </div>
        <nav class="main-menu">
            <ul>
                <li><a href="./index.html">Home</a></li>
                <li><a href="#">Room</a></li>
                <li><a href="#">Agets</a></li>
                <li><a href="#">Offer</a></li>
                <li><a href="#">Contact</a></li>
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
                                <li class="active"><a href="./index.html">Home</a></li>
								<li><a href="#">Room</a></li>
								<li><a href="#">Agets</a></li>
								<li><a href="#">Offer</a></li>
								<li><a href="#">Contact</a></li>
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
                                        <li><a href="#">Raipur</a></li>
                                        <li><a href="#">DDU</a></li>
                                        <li><a href="#">Kota</a></li>
                                    </ul>
                                </div>
                            </div>
                            <a href="#" class="property-sub">Submit Add</a>
							 <a  href="login.jsp" class="container" color="red" style="color:white;text-align:center;hover:blue;"> <%
                         
                           
                           
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
    <!-- Header End -->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
	<!--################################>>>>>>>>>>WORK AREA<<<<<<<<<<#####################################-->
	<!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
    <!--##################################################################################################-->
	
	<div class="search-form">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="search-form-text">
                        <div class="search-text">
                            <i class="fa fa-search"></i>
                           Submit the full Detail here
                        </div>
                        <div class="home-text">
                            <i class="fa fa-home"></i>
                            Room On Rent
                        </div>
                    </div>
                    <form action="connect1.jsp" class="filter-form" method="post" enctype="multipart/form-data">
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
							
                        </div>
						
						<input type="file" name="image" id="image"/>
						
						
							
								
							
							
                            <input type="submit" class="search-btn" value="submit">
							
							
                    </form>
                </div>
            </div>
        </div>
    </div>
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
                                <li><i class="fa fa-caret-right"></i> <a href="#">Kota</a></li>
                                <li><i class="fa fa-caret-right"></i> <a href="#">DDU</a></li>
                                <li><i class="fa fa-caret-right"></i> <a href="#">Amanaka</a></li>
                                <li><i class="fa fa-caret-right"></i> <a href="#">Amapara</a></li>
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