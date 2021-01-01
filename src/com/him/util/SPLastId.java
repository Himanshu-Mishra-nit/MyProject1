package com.him.util;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.him.image.DBhelper.DBConnection;


public class SPLastId {
	
public static int getLastId(){
	int lastid=0;
	Connection con;
	  PreparedStatement ps;
	  ResultSet rs;
	  
	try {
		con=DBConnection.getConnection();
		ps = con.prepareStatement("select ID from prj_submit_property");
		 rs= ps.executeQuery();
		 if(rs.next()){
			 while(rs.next()){
				 lastid=rs.getInt(1);
			 }
		 }
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return lastid;
   	
	}
	

}
