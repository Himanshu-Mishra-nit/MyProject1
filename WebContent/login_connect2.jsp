<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Insert title here</title>
</head>
<body>
<% 
boolean flag=false;
request.getRequestDispatcher("login.jsp").include(request, response);
String name=request.getParameter("uname");
		String psw=request.getParameter("pass");
		
		
		
				
		
		
		
		
		 Connection con  = null;
		 Statement pstmt  = null;
		 ResultSet rs=null;
		 
		 try{
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 String url="jdbc:oracle:thin:@localhost:1521:xe";
			  con  = DriverManager.getConnection(url,"system","root");
			  
			  pstmt=con.createStatement();
			  String sql="select user_name,user_password from prj_sign_user";
			  
			  
			  rs=pstmt.executeQuery(sql);
			  while(rs.next()){
				  
				  String user_name=rs.getString("user_name");
				  if(user_name.equals(name)){
					  String ps=rs.getString("user_password");
					  	if(ps.equals(psw)){
					  		flag=true;
					  		break;
					  	}
				  }
			  }
			  if(flag){
				  System.out.println("Succesfully Loggen IN");
				  HttpSession ss=request.getSession();
				  ss.setAttribute("user_name",name);
				  request.getRequestDispatcher("index.jsp").forward(request, response);
			  }
			  else{
				  System.out.println("Wrong password"); 
				  request.getRequestDispatcher("login.jsp").include(request, response);
			  }	  
			  rs.close();
		
				
				 
			
		 }catch(ClassNotFoundException e){
		   System.out.println(" driver loading error"+ e.getMessage());
		 }catch(SQLException e){
			 System.out.println("DB ERROR "+e.getMessage());
		 }catch(Exception e){
		   System.out.println("ERROR "+ e.getMessage());
		 }finally{
		    if(con!=null){
			        try{
					   con.close();
					}catch(SQLException e){
					   System.out.println("DB close error "+e.getMessage());
					}
			}
		 }
		 
		 
		
		
	%>

</body>
</html>