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
    <style>
    </style>
</head>
<body>
<%

HttpSession ss=request.getSession(false);
String user_name=(String)ss.getAttribute("user_name");
if(user_name==null){
	System.out.println("null;");
	  request.getRequestDispatcher("login.jsp").forward(request, response);
}

%>
 <!-- Page Preloder -->
    
	
	<!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

	
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
                <li><a href="allPropertyDisplay.jsp">Room</a></li>
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
								<li><a href="allPropertyDisplay.jsp">Room</a></li>
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
                                        <li><a href="RaipurControl">Raipur</a></li>
                                        <li><a href="DDUControll">DDU</a></li>
                                        <li><a href="KotaControll">Kota</a></li>
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
    
    
    
    
  <%! boolean is=false; %>  	
   
<%

String city=(String)request.getAttribute("city");
System.out.println("city is: "+city);
try {
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
    PreparedStatement ps = con.prepareStatement("select * from prj_submit_property");
    ResultSet rs = ps.executeQuery();
    %>
    <section class="property-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="property-sidebar">
                        <h4>Search Property</h4>
                        <form action="#" class="sidebar-search">
                            <div class="sidebar-btn">
                                <div class="bt-item">
                                    <input type="radio" name="s-type" id="st-buy" checked>
                                    <label for="st-buy">Buy</label>
                                </div>
                                <div class="bt-item">
                                    <input type="radio" name="s-type" id="st-rent">
                                    <label for="st-rent">Rent</label>
                                </div>
                            </div>
                            <select>
                                <option value="">Locations</option>
                            </select>
                            <select>
                                <option value="">Status</option>
                            </select>
                            <select>
                                <option value="">No of Bedroom</option>
                            </select>
                            <select>
                                <option value="">No of Bathrooms</option>
                            </select>
                            <select>
                                <option value="">No of Guest</option>
                            </select>
                            <div class="room-size-range">
                                <div class="price-text">
                                    <label for="roomsizeRangeP">Size:</label>
                                    <input type="text" id="roomsizeRangeP" readonly>
                                </div>
                                <div id="roomsize-range-P" class="slider"></div>
                            </div>
                            <div class="price-range-wrap">
                                <div class="price-text">
                                    <label for="priceRangeP">Price:</label>
                                    <input type="text" id="priceRangeP" readonly>
                                </div>
                                <div id="price-range-P" class="slider"></div>
                            </div>
                            <button type="submit" class="search-btn">Search Property</button>
                        </form>
                        <div class="best-agents">
                            <h4>Best Agents</h4>
                            <a href="#" class="ba-item">
                                <div class="ba-pic">
                                    <img src="img/properties/best-agent-1.jpg" alt="">
                                </div>
                                <div class="ba-text">
                                    <h5>Lester Bradley</h5>
                                    <span>Company Agents</span>
                                    <p class="property-items">6 property </p>
                                </div>
                            </a>
                            <a href="#" class="ba-item">
                                <div class="ba-pic">
                                    <img src="img/properties/best-agent-2.jpg" alt="">
                                </div>
                                <div class="ba-text">
                                    <h5>Janie Blair</h5>
                                    <span>Company Agents</span>
                                    <p class="property-items">6 property </p>
                                </div>
                            </a>
                            <a href="#" class="ba-item">
                                <div class="ba-pic">
                                    <img src="img/properties/best-agent-3.jpg" alt="">
                                </div>
                                <div class="ba-text">
                                    <h5>Sophia Cole</h5>
                                    <span>Marketing & Ceo</span>
                                    <p class="property-items">6 property </p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9">
                    <h4 class="property-title">Property</h4>
                    <div class="property-list">
    <% 
    int c=0;
    while ( rs.next()) {
    	String xyz=rs.getString("LocalArea") ;
    	System.out.println(">>> "+xyz);
    	if(xyz.equals(city)){
    	int id=rs.getInt(1);
    	c++;
    	%>
    
    
    	 
    	 <div class="single-property-item" >
    	
                            <div class="row">
                             
                                <div class="col-md-4">
                                    <div class="property-pic">
                                        <img width='500' height='250' src=./DisplayPhotoServlet?id=<%=id%>>
                                    </div>
                                    
                                </div>
                                <div class="col-md-8">
                                    <div class="property-text">
                                        <div class="s-text">On Rent</div>  <div class="s-text" style="background-color:white;"></div><div class="s-text" style="background-color:white;"></div><div class="s-text" style="background-color:white;"></div><a href="userallPropertyDisplay.jsp"><div class="s-text">Book</div></a>
                                        <h5 class="r-title"><%= rs.getString(2) %></h5>
                                        <div class="room-price">
                                            <span>Start From:</span>
                                            <h5><%=rs.getInt("Price") %></h5>
                                        </div>
                                        <div class="properties-location"><i class="icon_pin"></i><%=rs.getString("LocalArea") %></div>
                                        <p> <%=rs.getString("Enviroment")%>, <%=rs.getString("LocalArea") %>.</p>
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
                       
            
 <%}
    	else{
    		if(c==0)
    		is=true;
    		break;
    	}
    }
    
    
    if(is){
    	out.print("<h2>No such element</h2>");
    }
%>


</div>
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
