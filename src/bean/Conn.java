package bean;

import java.sql.Connection;
import java.sql.DriverManager;


public class Conn {
	public static Connection getConnection(){
		String url = "jdbc:mysql://localhost:3306/users";
		String username = "root";
		String password = "1314520";
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection(url, username, password);
		}catch (Exception e){
			e.printStackTrace();
		}
		return con;
	}
	public static void main(String[] args) {
		getConnection();
	}
}
