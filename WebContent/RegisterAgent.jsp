<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    
    <style type="text/css">
    .focus2 {
    width: 75%;
    padding: 8px 20px;
    box-sizing: border-box;
    border: 3px solid #ccc;
    transition: 0.5s;
}
    .inpt{
 	padding:10px;
    height:120px;
    width:50%;
    
    }
    
    input[type=text]:focus {
  border: 3px solid #555;
}.search-btn{
			display: inline-block;
    background: #2CBDB8;
    font-size: 14px;
    color: #ffffff;
    padding: 15px 120px;
	position:static;
	margin-left:290px;
		
		}
 input[type=file]:focus {
  border: 3px solid #555;
}
    </style>
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
                                <li class="active"><a href="index.jsp">Home</a></li>
								<li><a href="allPropertyDisplay.jsp">Room</a></li>
								<li><a href="Agent.jsp">Agents</a></li>
						
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
                            <a href="index.jsp"><img src="img/logo.png" alt=""></a>
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
                    <form action="Agent_Register_connect3.jsp" class="filter-form" method="post" enctype="multipart/form-data">
                        
                        
                        <div class="inpt" style="float: left">
                        	  Name:<br><input class="focus2" type="text" name="name" id="name"/>
                        </div>
                          <div class="inpt" style="float:right">
                        	  Profession:<br><input class="focus2" type="text" name="profession" id="profession"/>
                        </div>   
                        
                        <br><br><br>
                          <div class="inpt"style="float: left">
                        	  Phon Number:<br><input class="focus2" type="text" name="mob_num" id="mob_num"/>
                        </div>   
                        
                          <div class="inpt"style="float:right">
                        	  Email:<br><input class="focus2" type="text" name="email" id="email"/>
                        </div>   
                         <br><br><br>
                         
                             <div class="inpt"style="float:left">
                        	  Facebook:<br><input class="focus2" type="text" name="fb" id="fb"/>
                        </div> 
                          <div class="inpt"style="float: right">
                        	  Twitter Handle:<br><input class="focus2" type="text" name="twitter" id="twitter"/>
                        </div> 
                       
                        <br><br><br>
                         <div class="inpt"style="float:left">
                        	  Instagram Id:<br><input class="focus2" type="text" name="insta" id="insta"/>
                        </div> 
                      
						<div style="height:80px;"></div>
						
                        <div class="inpt"style="float:left">
						<input class="focus2" type="file" name="image" id="image"/>
						</div> 
						
							
								
							
							
                            <input type="submit" class="search-btn" value="submit">
							
							
                    </form>
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
                                <li><i class="fa fa-caret-right"></i> <a href="KotaControll">Kota</a></li>
                                <li><i class="fa fa-caret-right"></i> <a href="DDUControll">DDU</a></li>
                                <li><i class="fa fa-caret-right"></i> <a href="AMANAKAControll">Amanaka</a></li>
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