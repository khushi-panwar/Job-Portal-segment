package FirstServlet;

import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
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

import com.mysql.cj.jdbc.Blob;

/**
 * Servlet implementation class search
 */

public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
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
		 String n=request.getParameter("email");  
		    String p=request.getParameter("password");  
	

				 try {
	          Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection con = DriverManager.getConnection("jdbc:mysql:///job_portal1","root","Aditi@123");
	      PreparedStatement ps = con.prepareStatement("select first_name,last_name, email,Skill,student_photo from student");
		
						     ResultSet rs = ps.executeQuery();
						   
	
//         	    	 

		    
		    if(p.equals("Iteg123") && n.equals("yogendrarajput@ssism.org")){  
		    	while(rs.next()) {
		    		
		    		int id = rs.getInt("student_id");
			    	 
				    
			     String arr[] = {rs.getString(1),rs.getString(2),rs.getString(3),rs.getString(4)};
//			   
			     
		    		response.getWriter().print("<table style: 'margin: auto; border: 1px solid;padding-left: 172px;padding-bottom: 107px; padding-right: 163px; align-content: center; display: table;'>"
		    				 + "<tbody>"
		    				 +"<tr><td>Name</td><td>: </td><td>"+arr[0]+ " "+ arr[1]+ "</td></tr>"
		                     +"<tr><td>Email</td><td>:</td><td>" + arr[2] +"</td></tr>"
		    				+"<tr><td>Skill</td><td>:</td><td>"+ arr[3] +"</tr>"
		                    +"<td style='width:150px; height:125px;'></td>"
		                 +"</tbody></table>"+"<form action='Approve' method='post'>"+" <input style :'color: red;' name='submit' type='submit' value='Approve'>"+"</form>");
		    		


				     ServletContext sc = this.getServletContext();
				     RequestDispatcher rd = request.getRequestDispatcher("/Admin_main_page.jsp");
				     
				     rd.include(request, response);
		    	}
		    }
		    	else{  
			        out.print("Sorry UserName or Password Error!");  
			        RequestDispatcher rd=request.getRequestDispatcher("/login_admin.jsp");  
			        rd.include(request, response);  
			                      
			        }
		     }
		 catch(Exception e) {
			 out.print(e);
		 }
		
	}
}
