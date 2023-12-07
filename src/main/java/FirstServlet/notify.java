package FirstServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.jdbc.Driver;

public class notify extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter out = resp.getWriter();
		String student_id = req.getParameter("student_id");
		System.out.println(student_id);
	
		try {
	          Class.forName("com.mysql.cj.jdbc.Driver");
	          Connection con = DriverManager.getConnection("jdbc:mysql:///job_portal1","root","Aditi@123");
	          PreparedStatement ps = con.prepareStatement("select r.first_name,r.last_name, n.sender_id, n.message from notification n \r\n"
	          		+ "join recruiter r \r\n"
	          		+ "on n.sender_id = r.recruiter_id\r\n"
	          		+ "join student s on n.recipient_id = s.student_id\r\n"
	          		+ "where n.recipient_id = ?;");
	          
	          ps.setInt(1, Integer.parseInt(student_id));
	          ResultSet rs1 = ps.executeQuery();
	          out.println("<table style\'border-spacing:25px'\">");
	           
	             
			     
			     while(rs1.next()) {
			   String recruiter_first_name = rs1.getString(1);
			   String recruiter_last_name = rs1.getString(2);
			   int sender_id = rs1.getInt(3);
			   String message = rs1.getString(4);
			  
			   
               out.println("<tr>");
               out.println("<td>" + recruiter_first_name +" "+ recruiter_last_name + "</td>");
               out.print("<tr><td>" + message + "</td></tr>");
               out.print("<tr><td>"+ "<hr>"+ "</td></tr>");
//               out.println("<td>" + sender_id + "</td>");
//               out.println("<td>" +status+ " </td>");
               out.println("</tr>");
           }

           out.println("</table>");
          
	}
			     
		catch(Exception e) {
			 out.print(e);
		 }
	}
}
