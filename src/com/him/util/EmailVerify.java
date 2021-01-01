package com.him.util;

import java.io.IOException;
import java.util.List;
import java.util.Properties;
import java.util.Random;









import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.jni.User;
/**
 * Servlet implementation class EmailVerify
 */
@WebServlet("/EmailVerify")
public class EmailVerify extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
   
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
System.out.println("Inside ervlet");
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
    String   email =  ft4.getString();
    
    
    
    FileItem ft5 = (FileItem) items.get(4);
    String   t5 =  ft5.getString();
    
    FileItem ft6 = (FileItem) items.get(5);
    String   t6 =  ft6.getString();
   
    
    FileItem ft7 = (FileItem) items.get(6);
    String   t7 =  ft7.getString();
 
	int lastid=0;
    // get uploaded file
    FileItem file = (FileItem) items.get(7);

		
		final String senderEmailId="himanshu.nit.mca@gmail.com";
		final String senderPassword="himanshu@1";
		
		
		Properties props=new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host","smtp.gamil.com");
		props.put("mail.smtp.port", "587");
		
		
		Session email_session=Session.getInstance(props,new javax.mail.Authenticator(){
			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication(senderEmailId,senderPassword);
			}
		});
		System.out.println("Session Created.."+email_session);
		try{
			System.out.println("Himanshu");
			Message message=new MimeMessage(email_session);
			message.setFrom(new InternetAddress(senderEmailId));
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			
			
			int Otp=new Random().nextInt(9999)+1000;
			message.setText("Here is the recieved Otp : "+Otp);
			System.out.println(Otp);
			System.out.println(email);
			
			Transport.send(message);
			
			
			
			
		}
		catch (MessagingException e){
			e.printStackTrace();
			System.out.println(e);
		}
		request.setAttribute("name",t1);
		request.setAttribute("profession", t2);
		request.setAttribute("mob_num", t3);
		request.setAttribute("email", email);
		request.setAttribute("fb", t5);
		request.setAttribute("twitter", t6);
		request.setAttribute("insta", t7);
		request.setAttribute("image", file);
		
		RequestDispatcher req_send= request.getRequestDispatcher("Agent_Register_connect3.jsp");
		req_send.forward(request, response);
		
}
catch(Exception e){
	e.printStackTrace();
}


		
		
		
	}

}
