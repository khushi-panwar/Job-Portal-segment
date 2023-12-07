package FirstServlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connectionclass {
	  final static String DB_URL = "jdbc:mysql:///job_portal1";
	    final static String DB_USERNAME = "root";
	     final static String DB_PASSWORD = "Aditi@123";
	public static Connection Createcon() throws SQLException, ClassNotFoundException {
		Connection con=null;
		    Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
		return con;
		
	}

}
