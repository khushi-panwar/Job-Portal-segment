package FirstServlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class search
 */

public class profiledata extends HttpServlet {
	private static final long serialVersionUID = 1L;
	boolean status = false;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public profiledata() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher=null;
		
		if(email==null || email.equals(" ")) {
			request.setAttribute("status","InvalidEmail");
			dispatcher=request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
		if(password==null || password.equals(" ")) {
			request.setAttribute("status","InvalidPassword");
			dispatcher=request.getRequestDispatcher("login.jsp");
			dispatcher.forward(request, response);
		}
//		String cssLocation = request.getContextPath() + "main_profile.css";
//	    String cssTag = "<link rel='stylesheet' type='text/css' href='/webapp/main_profile.css'>";
		 try {
	          Class.forName("com.mysql.cj.jdbc.Driver");
	          Connection con = DriverManager.getConnection("jdbc:mysql:///job_portal1","root","Aditi@123");
	          PreparedStatement ps = con.prepareStatement("select * from student where email = ? and password  = ?");
		 
		     ps.setString(1, email);
		     ps.setString(2, password);
		     ResultSet rs1 = ps.executeQuery();
		     status = rs1.next();
		     
		     if(status==true) {
		  
		     ResultSet rs = ps.executeQuery();
		     out.println("<div><table class='profile_table shadow'>");
		     out.println("<h3 class='text-center'>Student Profile</h3>");
	           

	            while (rs.next()) {
	                String studentId = rs.getString("student_id");
	                String first_name = rs.getString("first_name");
	                String last_name = rs.getString("last_name");
	                String Email1 = rs.getString("email");
	                String skill = rs.getString("skill");
	                String contact = rs.getString("contact");
	                String profile_status = rs.getString("profile_status");
	                String Approved_status = rs.getString("Approval_status");
	               
	            
	                out.println("<tbody>"
	                		+ "    <tr>"
	                		+ "        <th>Name</th>"
	                		+ "        <td>"+first_name+ " " + last_name+ "</td>"
	                		+ "    </tr>"
	                		+ "    \r\n"
	                		+ "    <tr>"
	                		+ "        <th>Email</th>"
	                		+ "        <td> " +Email1+"</td>"
	                		+ "    </tr>"
	                		+ "    "
	                		+ "    <tr>"
	                		+ "        <th>Skill</th>"
	                		+ "        <td>"+ skill+ "</td>"
	                		+ "    </tr>"
	                		+ "    "
	                		+ "    <tr>"
	                		+ "        <th>Contact</th>"
	                		+ "        <td>"+ contact +" </td>"
	                		+ "    </tr>"
	                		+ "    <tr>"
	                		+ "        <th>Profile Status</th>"
	                		+ "        <td>"+ profile_status +" </td>"
	                		+ "    </tr>"
	                		+ "    <tr>"
	                		+ "        <th>Approved Status</th>"
	                		+ "        <td>"+ Approved_status +" </td>"
	                		+ "    </tr>"
	                		+ "</tbody>");
	               	                out.println("<div class='dropdown'>"
	            					+ "<a class='btn btn-secondary dropdown-toggle ' href= \notify?student_id=" + studentId +"\""
	        						+ "role='button' data-bs-toggle='dropdown' aria-expanded='false'><b>"
	        						+"	login</b> </a>"

	        					+ "<ul class='dropdown-menu'>"
	        						+"<li><a class='dropdown-item' >Student</a></li>"
	        						
	        						+"<li><a class='dropdown-item' >Recruiter</a></li>"
	        						
	        						+"<li><a class='dropdown-item' >Admin</a></li>"
	        						
	        					+"</ul>"
	               	                		+ "<span><a href=\"notify?student_id=" + studentId +"\">notify</a></span>");
	       
	            }
	           
	            out.println("</table></div>");
	      
//		     
		     ServletContext sc = this.getServletContext();
		     RequestDispatcher rd = request.getRequestDispatcher("/main_profile.jsp");
		     
		     rd.include(request, response);

		  
		     }else {
//		    	 response.getWriter().print("password not match");
		    	 
		    	 PrintWriter pw=response.getWriter();
		    	 pw.println("<script type=\"text/javascript\">");
		    	 pw.println("alert('Invalid Username or Password');");
		    	 pw.println("window.location = 'login.jsp'");
		    	 pw.println("</script>");
		    
		     }
		 }catch(Exception e) {
			 out.print(e);
		     }
		 }
		 

}
