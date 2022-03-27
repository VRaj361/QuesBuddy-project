package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectiongetCon {
	static Connection con=null;
	public static Connection getConnectionDB() {
		String driver="org.postgresql.Driver";
		String url="jdbc:postgresql://localhost:5432/quesbuddy";
		String userName = "postgres";
		String password = "12345678";
		
		try {
			Class.forName(driver);
			con=DriverManager.getConnection(url,userName,password);
			if(con==null) {
				System.out.println("connection failed");
			}
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
		return con;
	}

	
}
