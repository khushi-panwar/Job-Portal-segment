package FirstServlet;

import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;

public class chatgpt extends HttpServlet {
    private static final String DB_URL = "jdbc:mysql:///job_portal1";
    private static final String DB_USERNAME = "root";
    private static final String DB_PASSWORD = "Aditi@123";

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Set the content type
        response.setContentType("text/html");
        // Create PrintWriter object
        PrintWriter out = response.getWriter();

        // Establish a database connection
        Connection conn = null;
        Statement stmt = null;

        ResultSet rs = null;
       
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);

            // Execute the SQL query to retrieve all student data
            stmt = conn.createStatement();
        
            String sql = "SELECT * FROM student";
            
            rs = stmt.executeQuery(sql);
           

            // Display student data in HTML table format
            out.println("<table>");
            out.println("<tr><th>ID</th><th>Name</th><th>Grade</th><th>Action</th></tr>");

            while (rs.next()) {
                int studentId = rs.getInt("student_id");
                String studentName = rs.getString("first_name");
                String Email = rs.getString("email");
                String grade = rs.getString("Approval_status");

                out.println("<tr>");
                out.println("<td>" + studentId + "</td>");
                out.println("<td>" + studentName + "</td>");
                out.println("<td>" + grade + "</td>");
                out.println("<td><a href=\"Approve?email=" + Email + "\">Approve</a></td>");
                out.println("</tr>");
            }

            out.println("</table>");

           
            // Close database connections
            rs.close();
            stmt.close();
            conn.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            out.println("An error occurred while retrieving student data.");
        } finally {
            // Close PrintWriter
            out.close();
        }
    }

  
    
}
