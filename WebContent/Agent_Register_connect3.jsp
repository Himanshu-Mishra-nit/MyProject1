<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.io.File" %>
<%@ page import="java.io.FileInputStream" %>
<%@ page import="java.io.IOException" %>
<%@ page import="java.io.InputStream" %>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import=" java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import=" java.sql.Statement" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.concurrent.ConcurrentHashMap" %>


<%@ page import="javax.servlet.ServletException" %>
<%@ page import=" javax.servlet.RequestDispatcher" %>
<%@ page import="javax.servlet.http.HttpServlet" %>
<%@ page import="javax.servlet.http.HttpServletRequest" %>
<%@ page import="javax.servlet.http.HttpServletResponse" %>


<%@ page import="org.apache.commons.fileupload.FileItem" %>
<%@ page import="org.apache.commons.fileupload.FileUploadException" %>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload" %>

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

<style>
.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
  max-width: 300px;
  margin: auto;
  text-align: center;
  font-family: arial;
}


button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
  font-size: 18px;
}


button:hover, a:hover {
  opacity: 0.7;
}
</style>



<title></title>
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
<%
int error=0;
String error_des="";
response.setContentType("text/html;charset=UTF-8");
PrintWriter outr = response.getWriter();
try {
    // Apache Commons-Fileupload library classes
    DiskFileItemFactory factory = new DiskFileItemFactory();
    ServletFileUpload sfu  = new ServletFileUpload(factory);

    if (! ServletFileUpload.isMultipartContent(request)) {
        System.out.println("sorry. No file uploaded");
        return;
    }

    // parse request
    List items = sfu.parseRequest(request);
    FileItem  ft1 = (FileItem) items.get(0);
    String  t1=  ft1.getString();
    
    FileItem ft2 = (FileItem) items.get(1);
    String   t2 =  ft2.getString();
    
    FileItem ft3 = (FileItem) items.get(2);
    String   t3 =  ft3.getString();
    
    FileItem ft4 = (FileItem) items.get(3);
    String   t4 =  ft4.getString();
    
    
    FileItem ft5 = (FileItem) items.get(4);
    String   t5 =  ft5.getString();
    
    FileItem ft6 = (FileItem) items.get(5);
    String   t6 =  ft6.getString();
   
    
    FileItem ft7 = (FileItem) items.get(6);
    String   t7 =  ft7.getString();
 
	int lastid=0;
    // get uploaded file
    FileItem file = (FileItem) items.get(7);
              
    // Connect to Oracle
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "root");
    
    PreparedStatement ps=con.prepareStatement("select ID from prj_register_agent");
	  ResultSet rs=ps.executeQuery();
	  
			 while(rs.next()){
				 lastid=rs.getInt("ID");
			 }
		 
    
    lastid+=1;
    con.setAutoCommit(false);
	
    ps = con.prepareStatement("insert into prj_register_agent(ID,name,profession,num,email,fb,twitter,insta,image)values(?,?,?,?,?,?,?,?,?)");
    
    ps.setInt(1, lastid);
    ps.setString(2, t1);
    ps.setString(3, t2);
    ps.setString(4, t3);
    ps.setString(5, t4);
    ps.setString(6, t5);
    ps.setString(7, t6);
    ps.setString(8, t7);
    
    // size must be converted to int otherwise it results in error
    ps.setBinaryStream(9, file.getInputStream(), (int) file.getSize());
    ps.executeUpdate();
    con.commit();
    con.close();
    
}
catch(Exception ex) {
   error=1;
 
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
                            <a href="submit-property.jsp" class="property-sub">Submit Add</a>
							  
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
    
    
    
    
    <%if(error==0){ %>
		 <div class="card">
 
  
  <p >We have recorded your information</p>
  <p>We will post it soon<br> Thankyou!</p>
  <div style="margin: 24px 0;">
    <a href="index.html"><i class="fa fa-home"></i>Home</a> 
    
  </div></div>
 <%}
    else{ %>
    <div class="card">
 
  
  <p >We Got Some Error </p>
  <p>Please Resubmit Your Form<br> Thankyou!</p>
  <div style="margin: 24px 0;">
    <a href="index.html"><i class="fa fa-home"></i>Home</a> 
    
  </div>
  <%}
    %>
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