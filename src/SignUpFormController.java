
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.*;
import java.util.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;



@WebServlet("/SignUpFormController")
public class SignUpFormController extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	private boolean isPresent(String name,HttpServletRequest request,HttpServletResponse response)throws ServletException,IOException{
		Connection con=null;
		 Statement pstmt  = null;
		 ResultSet rs=null;
		 try{
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 String url="jdbc:oracle:thin:@localhost:1521:xe";
			  con  = DriverManager.getConnection(url,"system","root");
			  
			  String sql="select id from prj_sign_user where user_name="+name;
			  pstmt=con.createStatement();
			  
			  rs=pstmt.executeQuery(sql);
			  if(rs.next())
				  return true;
			  else
				  return false;
		 }
		 catch(Exception e){
			 System.out.println(e);
			 return false;
		 }
		 finally{
			 try{
				 if(con!=null)
					 	con.close();
				 
			 }
			 catch(Exception e){
				 System.out.println(e);
				 return false;
			 }
		 }
	
	}
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String name=request.getParameter("user_name");
		String email=request.getParameter("email");
		String psw=request.getParameter("password");
		String phone=request.getParameter("phone");
		
		
		StringBuffer htmlCode=new StringBuffer();
		htmlCode.append("<html>");
		htmlCode.append("<head>");
		htmlCode.append("<tittle>mera Data sent</tittle>");
		htmlCode.append("<body>");
		htmlCode.append("<h1> name="+name+"</h1>");
		htmlCode.append("<h1> email="+email+"</h1>");
		htmlCode.append("<h1> password="+psw+"</h1>");
		htmlCode.append("<h1> Phone="+phone+"</h1>");
		
		
		
		boolean present=isPresent(name, request, response);
		
		if(present){
			request.getRequestDispatcher("signup.html").forward(request, response);
		}
		
		 htmlCode.append("Done1234 ");
		
		 Connection con  = null;
		 PreparedStatement pstmt  = null;
		 try{
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 String url="jdbc:oracle:thin:@localhost:1521:xe";
			  con  = DriverManager.getConnection(url,"system","root");
			  
			  
			  String sql="insert into prj_sign_user(user_name,mail_id,user_password,user_phone)values(?,?,?,?)";
			  pstmt  = con.prepareStatement(sql);
			  
			  
			  htmlCode.append("Done 1<br>");
			  htmlCode.append("Done 2<br>");
			  
				
				pstmt.setString(1,name);//c1 
				htmlCode.append("Done 2<br>");
				pstmt.setString(2,email);//c1
				 htmlCode.append("Done 3<br>");
				pstmt.setString(3,psw);//c1
				 htmlCode.append("Done 4<br>");
				pstmt.setString(4,phone);//c1
				 htmlCode.append("Done 5<br>");
				 
				 
				int r=pstmt.executeUpdate();
				if(r==1){
					 
					RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
					rd.forward(request, response);
				}
				 htmlCode.append("Done 6<br>");
			
		 }catch(ClassNotFoundException e){
		   htmlCode.append(" driver loading error"+ e.getMessage());
		 }catch(SQLException e){
			 htmlCode.append("DB ERROR "+e.getMessage());
		 }catch(Exception e){
		   htmlCode.append("ERROR "+ e.getMessage());
		 }finally{
		    if(con!=null){
			        try{
					   con.close();
					}catch(SQLException e){
					   htmlCode.append("DB close error "+e.getMessage());
					}
			}
		 }
		 
		 htmlCode.append("</body>");
		htmlCode.append("</html>");
		
		response.setContentType("text/html");
		PrintWriter pw=response.getWriter();
		pw.print(htmlCode);
		
	
	}
}