
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

import javax.servlet.ServletException;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

public class SubmitPropertyServlet extends HttpServlet{
	private static final long serialVersionUID = 1L;
	
	String t1=null;
	String t2=null;
	String t3=null;
	String ts4=null;
	String t5=null;
	String ts6=null;
	String ts7=null;
	int t4;
	int t6;
	int t7;
	FileInputStream t8=null;
		
	
	public void doPost(HttpServletRequest request,HttpServletResponse response)throws javax.servlet.ServletException,java.io.IOException
	{
		
		StringBuffer htmlCode=new StringBuffer();
		htmlCode.append("<html>");
		htmlCode.append("<head>");
		boolean isMultiPartData=ServletFileUpload.isMultipartContent(request);
			if(isMultiPartData){
				
									DiskFileItemFactory factory=new DiskFileItemFactory();
							File tempFile=new File("D:\\Surendra it solution tomacat\\apache-tomcat-8.0.21\\webapps\\MyProject\\temp\\");
							factory.setRepository(tempFile);
							ServletFileUpload fileUpload =new ServletFileUpload(factory);
							try{
							List<FileItem> items=fileUpload.parseRequest(request);
							
							for(FileItem item:items){
								if(item.isFormField()){
									String feildName = item.getFieldName();
									if(feildName.equals("room-Type")){
										t1=item.getString();
									}
									else if(feildName.equals("Enviroment")){
										t2=item.getString();
									}
									else if(feildName.equals("Local-Area")){
										t3=item.getString();
									}
									else if(feildName.equals("Beds")){
										ts4=item.getString();
										t4=Integer.parseInt(ts4);
									}
									else if(feildName.equals("Vhicle")){
										t5=item.getString();
									}
									else if(feildName.equals("price")){
										ts6=item.getString();
										t6=Integer.parseInt(ts6);
									}
									else if(feildName.equals("area")){
										ts7=item.getString();
										t7=Integer.parseInt(ts7);
									}
									
								}
								else{
									t8=(FileInputStream)item.getInputStream();
								}
							}
							
							}
							catch(FileUploadException e){
								e.printStackTrace();
							}
							
		
				
				
				
			}
			else{
				htmlCode.append("Not not not not not not not not not not not not not not not ");
			}
		
			htmlCode.append("<br>root-type"+t1);
			htmlCode.append("<br>Env"+t2);
			htmlCode.append("<br>Local Area"+t3);
			htmlCode.append("<br>beds"+t4);
			htmlCode.append("<br>whicle"+t5);
			htmlCode.append("<br>price"+t6);
			htmlCode.append("<br>area"+t7);
			htmlCode.append("<br>");
			
			
			
			 try{    
             
            int i=t8.read();  
            htmlCode.append((char)i);    
  
              
          }catch(Exception e){htmlCode.append(e);}    
			
			
			//-----------------------------------------Database Connection'
			Connection con  = null;
		 PreparedStatement pstmt  = null;
		 try{
			 Class.forName("oracle.jdbc.driver.OracleDriver");
			 String url="jdbc:oracle:thin:@localhost:1521:xe";
			  con  = DriverManager.getConnection(url,"system","root");
			  
			  
			  String sql="insert into prj_submit_property(RoomType,Enviroment,LocalArea,Beds,Vhicle,Price,Area,Image)values(?,?,?,?,?,?,?,?)";
			  pstmt  = con.prepareStatement(sql);
			  
			  
			  htmlCode.append("Done 1<br>");
			  htmlCode.append("Done 2<br>");
			  
				
				pstmt.setString(1,t1);//c1 
				htmlCode.append("Done 2<br>");
				pstmt.setString(2,t2);//c1
				 htmlCode.append("Done 3<br>");
				pstmt.setString(3,t3);//c1
				 htmlCode.append("Done 4<br>");
				pstmt.setInt(4,t4);//c1
				pstmt.setString(5,t5);//c1
				pstmt.setInt(6,t6);//c1
				pstmt.setInt(7,t7);//c1
				pstmt.setBinaryStream(8,t8,(int)t8.getChannel().size());//c1
				 htmlCode.append("Done 5<br>");
				 htmlCode.append("lengtj<br>"+t8.getChannel().size());
				 
				 
				pstmt.executeUpdate();
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