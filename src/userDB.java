

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class userDB
 */
@WebServlet("/userDB")
public class userDB extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
        // TODO Auto-generated constructor stub
	protected void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession user_ss=request.getSession(false);
		String user_name=(String)user_ss.getAttribute("user_name");
		user_ss.invalidate();
		System.out.println(user_name);
		String user_table="roomrent"+user_name;
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
			int r=stmt.executeUpdate(sql);
			System.out.println(r);
			if(r==1){
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
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
		
		
		
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		process(request,response);
	}

}
