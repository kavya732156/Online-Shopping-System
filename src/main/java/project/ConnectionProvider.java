package project;
import java.sql.*;
public class ConnectionProvider {

	public static Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver"); // load and register the mysql Driver class
			final String DB_URL = "jdbc:mysql://localhost:3306/ospjsp"; 
			final String USER = "root";
			final String PASS = "kavya"; 
			Connection con = DriverManager.getConnection(DB_URL,USER,PASS);// connection is established 
			return con;
		}
		catch(Exception e){
			System.out.println(e);
			return null;
		}
	}

}
