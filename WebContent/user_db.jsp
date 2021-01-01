<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession user_ss=request.getSession(false);
String user_name=(String)user_ss.getAttribute("user_name");
user_ss.invalidate();
String user_table="roomonrent"+user_name;
Connection con=null;
Statement stmt=null;
String classpath="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";		
String user="system";
String password="root";
try{
	Class.forName(classpath);
	con=DriverManager.getConnection(url, user, password);
	stmt=con.createStatement();
	String sql="create table "+user_table+"  (id number(5))";
	stmt.executeUpdate(sql);
	
}
catch(Exception e){
	e.printStackTrace();
	System.out.println(e);
}
finally{
	try{
		if(stmt!=null)
			stmt.close();
		if(con!=null)
			con.close();
	}
	catch(Exception e){
		e.printStackTrace();
		System.out.println(e);
	}
}



%>
</body>
</html>