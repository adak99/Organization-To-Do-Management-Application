package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	private static final String DRIVER_CLASS = "com.mysql.cj.jdbc.Driver";
	private static final String DATABASE_URL = "jdbc:mysql://localhost:3306/your_data_base_name";
	private static final String USERNAME = "your_username";
	private static final String PASSWORD = "your_password"; 
	private static Connection conn = null;

	public static Connection getConn() {
		if (conn == null) {
			try {
				// Load MySQL driver
				Class.forName(DRIVER_CLASS);

				// Establish connection
				conn = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);
				System.out.println("Connected successfully.");
			} catch (ClassNotFoundException e) {
				System.out.println("MySQL Driver not found.");
				e.printStackTrace();
			} catch (SQLException e) {
				System.out.println("Database connection failed.");
				e.printStackTrace();
			}
		}
		return conn;
	}
}
