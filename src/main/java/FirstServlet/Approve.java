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



public class Approve extends HttpServlet {
	private static final long serialVersionUID = 1L;
	   private static final String DB_URL = "jdbc:mysql:///job_portal1";
	    private static final String DB_USERNAME = "root";
	    private static final String DB_PASSWORD = "Aditi@123";

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	 
        
	public Approve() {
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
        String Email = request.getParameter("email");

        // Get the updated data from the request parameter (assuming grade in this example)
        String updatedGrade = request.getParameter("Approval_status");

        // Update the database with the new grade
        Connection conn = null;
        PreparedStatement pstmt = null;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            // Prepare the SQL statement to update the student's grade
            String sql = "UPDATE student SET Approval_Status='Approve' WHERE email=?";
            pstmt = conn.prepareStatement(sql);
           
            pstmt.setString(1, Email);
            
            pstmt.executeUpdate();

            // Redirect back to the student data display page
            response.sendRedirect("main_profile.jsp");
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
    }
}