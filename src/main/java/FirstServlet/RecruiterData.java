package FirstServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



public class RecruiterData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
	private static final String INSERT_QUERY ="INSERT INTO Recruiter(First_name, Last_name, Email, contact_no, company_name, location, post, password, confirm_password) VALUES(?,?,?,?,?,?,?,?,?)";
    public RecruiterData() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		PrintWriter pw = res.getWriter();
        //set Content type
        res.setContentType("text/hmtl");
        //read the form values
        String first_name = req.getParameter("firstname");
        String last_name = req.getParameter("lastname");
        String email = req.getParameter("email");
        String phone = req.getParameter("phone");
        String Company_name = req.getParameter("Company_name");
        String location = req.getParameter("location");
        String job_post = req.getParameter("post");
        String password = req.getParameter("password");
        String Confirm_password = req.getParameter("passwordConfirmation");
        
      
        
        
       
     
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
         } catch (ClassNotFoundException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         }
       //create the connection
       try(Connection con = DriverManager.getConnection("jdbc:mysql:///job_portal1","root","Aditi@123");
                PreparedStatement ps = con.prepareStatement(INSERT_QUERY);){
           //set the values
           ps.setString(1, first_name);
           ps.setString(2, last_name);
           ps.setString(3, email);
           ps.setString(4, phone);
           ps.setString(5, Company_name);
           ps.setString(6, location);
           ps.setString(7, job_post);
           ps.setString(8, password);
           ps.setString(9, Confirm_password);
         
          
          

            //execute the query
           int count = ps.executeUpdate();

          if(count==0) {              
        	  pw.println("Record not stored into database");
          
         }else {
             pw.println("Record Stored into Database");
            }
        }catch(SQLException se) {
            pw.println(se.getMessage());
                se.printStackTrace();
       }catch(Exception e) {
          pw.println(e.getMessage());
          e.printStackTrace();
      }

     //close the stream
        pw.close();
    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
        doGet(req, resp);
	}

}
