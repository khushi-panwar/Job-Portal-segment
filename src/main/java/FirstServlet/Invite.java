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
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.jdbc.Blob;
import com.mysql.cj.x.protobuf.MysqlxSession.Reset;

/**
 * Servlet implementation class search
 */

public class Invite extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   private static final String DB_URL = "jdbc:mysql:///job_portal1";
	    private static final String DB_USERNAME = "root";
	    private static final String DB_PASSWORD = "Aditi@123";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	 
        
	public Invite() {
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
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the student ID from the request parameter
		
	
		  String recruiter_email = request.getParameter("recruiter_email");
		  String student_email = request.getParameter("email");
		  
		  // Perform further processing using studentId and recruiterId
	
     System.out.println(recruiter_email);
     System.out.println(student_email);
  

        // Get the updated data from the request parameter (assuming grade in this example)
        String updatedGrade = request.getParameter("Approval_status");

        // Update the database with the new grade
        Connection conn = null;
        PreparedStatement pstmt = null;
       PreparedStatement pstmt1 = null;
//        PreparedStatement pstmt2 = null;
        int result = 0;
        int result1 = 0;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            
          
            // Prepare the SQL statement to update the student's grade
            String sql = "UPDATE student\r\n"
            		+ "JOIN notification ON student.student_id = notification.recipient_id\r\n"
            		+ "SET student.profile_status = 'invite', notification.status = 'notify'\r\n"
            		+ "WHERE email = ?;";
            
 
            		
            		
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,student_email);
            PreparedStatement ps = conn.prepareStatement("select student_id from student where email = ?");
           
		     ps.setString(1, student_email);
		 
		     ResultSet rs = ps.executeQuery();

		     while(rs.next()) {
		  result = Integer.parseInt(rs.getString(1));
		  
		     }
		    
System.out.println(result);

            pstmt.executeUpdate();
            
            PreparedStatement ps1 = conn.prepareStatement("select recruiter_id from recruiter where email = ?");
            
		     ps1.setString(1, recruiter_email);
           ResultSet rs1 = ps1.executeQuery();

		     
		     while(rs1.next()) {
		  result1 = Integer.parseInt(rs1.getString(1));
		  
		     }
		     System.out.println(result1);
		    
		     

       
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            response.getWriter().println("An error occurred while updating the student data.");
        } finally {
            // Close database connections
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        try {
			Connection con = connectionclass.Createcon();
			String query = "insert into notification(recipient_id,sender_id,status) Value("+result+ " ,"+result1+",'unseen');";
			PreparedStatement pst = con.prepareStatement(query);
			pst.executeUpdate();
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
}
