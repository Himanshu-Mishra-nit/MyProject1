package com.him.image.DBhelper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	static Connection con=null;
	public static Connection getConnection(){
		 /*Class.forName("oracle.jdbc.driver.OracleDriver");
		 String url="jdbc:oracle:thin:@localhost:1521:xe";*/
		String classpath="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:xe";		
		String user="system";
		String password="root";
		try {
			Class.forName(classpath);
			con=DriverManager.getConnection(url, user, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
	}
}
