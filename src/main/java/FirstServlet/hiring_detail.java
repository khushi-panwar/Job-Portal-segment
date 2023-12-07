package FirstServlet;


import java.io.*;


import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class hiring_detail extends HttpServlet {

	    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
		private static final String DB_URL = "jdbc:mysql:///job_portal1";
	    private static final String DB_USERNAME = "root";
	    private static final String DB_PASSWORD = "Aditi@123";

	  
	    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // Set the content type
	        response.setContentType("text/html");
	        // Create PrintWriter object
	        PrintWriter out= response.getWriter();
	       
	        String recruiter_Email = request.getParameter("email_recruiter");
	        String password = request.getParameter("password");
	        

	        String cssTag= "<link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\">";

	        // Establish a database connection
	        Connection conn = null;
	        Statement stmt = null;
	        ResultSet rs = null;
	       
	       boolean status = false;
	        
	        
	        try {
	            Class.forName("com.mysql.jdbc.Driver");
	            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

	            PreparedStatement ps = conn.prepareStatement("select * from recruiter where email = ? and password= ? ");
		   		 
			     ps.setString(1, recruiter_Email);
	             ps.setString(2, password);
			     
	             PrintWriter pw=response.getWriter();
			  
			    
			     ResultSet rs1 = ps.executeQuery();
			     status = rs1.next();
			    String recruiter_email=rs1.getString("email");
			    	 
			    pw.println("<script>");
			    pw.println("function myFunction() {");
			    pw.println("document.set");
			    pw.println("}");
			    pw.println(" </script>");
	           
	            if (status==true) {
	          
	            // Execute the SQL query to retrieve all student data
	            stmt = conn.createStatement();
	        
	            String sql = "SELECT * FROM student where Approval_status = 'Approve'";
	            
	            rs = stmt.executeQuery(sql);
	            out.println("<head>"+cssTag +"</head>");
	           

	            out.println("<h2 style=\"margin-bottom:20px\">Student List</h2>");
	            // Display student data in HTML table format
	            out.println("<table class=\"table\">");
	            out.println("<tr><th>Student ID</th><th>First Name </th><th>Last Name</th><th>Email</th><th>Skill</th><th>Action</th></tr>");

	            while (rs.next()) {
	                int studentId = rs.getInt("student_id");
	                String first_name = rs.getString("first_name");
	                String last_name = rs.getString("last_name");
	                String Email1 = rs.getString("email");
	                String skill = rs.getString("skill");
	               

	                out.println("<tbody class=\"table-striped\"><tr>");
	                out.println("<td>" + studentId + "</td>");
	                out.println("<td>" + first_name + "</td>");
	                out.println("<td>" + last_name + "</td>");
	                out.println("<td>" + Email1 + "</td>");
	                out.println("<td>" + skill + "</td>");
	                out.println("<td><a href=\"Invite?email=" + Email1 +"&recruiter_email="+ recruiter_Email+  "\">Invite</a></td>");
	                out.println("</tr>");
	            }


	            // Close database connections
	            rs.close();
	            stmt.close();
	            conn.close();
	            }else {
	            	
			    	 pw.println("<script type=\"text/javascript\">");
			    	 pw.println("alert('Invalid Username or Password');");
			    	 pw.println("</script>");
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            out.println("An error occurred while retrieving student data.");
	        } finally {
	            // Close PrintWriter
	            out.close();
	        }
	    }

	  
	    
	}
