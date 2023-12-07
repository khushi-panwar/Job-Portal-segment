package FirstServlet;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.mysql.cj.xdevapi.Statement;


@MultipartConfig(maxFileSize = 10*1024*1024,maxRequestSize = 20*1024*1024,fileSizeThreshold = 5*1024*1024)
public class StudentData extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * Default constructor. 
     */
	private static final String INSERT_QUERY ="INSERT INTO STUDENT(FIRST_NAME,LAST_NAME,EMAIL,SKILL,PASSWORD,CONFIRM_PASSWORD,CONTACT,STUDENT_PHOTO) VALUES(?,?,?,?,?,?,?,?)";
    public StudentData() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @param status 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
        //read the form values
        String first_name = request.getParameter("firstname");
        String last_name = request.getParameter("lastname");
        String email = request.getParameter("email");
         String skill = request.getParameter("jobtitle");
        String password = request.getParameter("password");
        String Confirm_password = request.getParameter("passwordConfirmation");
        String phone = request.getParameter("phone");
        
   
        InputStream inputStream1 = null;
        // input stream of the upload file
        
        // obtains the upload file part in this multipart request
        
        
      
        Part filePart = request.getPart("photo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream1 = filePart.getInputStream();
           
        }
      
        
      
        RequestDispatcher dispatcher =  null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
         } catch (ClassNotFoundException e) {
             // TODO Auto-generated catch block
             e.printStackTrace();
         }
       //create the connection
       try(Connection con = DriverManager.getConnection("jdbc:mysql:///job_portal1","root","Aditi@123");
                PreparedStatement ps = con.prepareStatement(INSERT_QUERY);){
    	 Statement stat=(Statement) con.createStatement();
    	 String query="select email from the student";
    	 ResultSet s=((java.sql.Statement) stat).executeQuery(query);
    	 
    	   
           //set the values
           ps.setString(1, first_name);
           ps.setString(2, last_name);
           ps.setString(3, email);
           ps.setString(4, skill);
           ps.setString(5, password);
           ps.setString(6, Confirm_password);
           ps.setString(7, phone);
           if (inputStream1 != null) {
               // fetches input stream of the upload file for the blob column
               ps.setBlob(8, inputStream1);
           }
           


            //execute the query
           int count = ps.executeUpdate();
  System.out.println(count);
           dispatcher = request.getRequestDispatcher("login.jsp");
           
           
      
          dispatcher.forward(request, response);
         
          
        }catch(SQLException se) {
            
                se.printStackTrace();
       }catch(Exception e) {
           e.printStackTrace();
      }

   
     //close the stream
       
    }
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//        doGet(req, resp);
//	}

}
