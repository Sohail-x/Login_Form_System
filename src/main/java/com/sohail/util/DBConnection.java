package com.sohail.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static final String url = "jdbc:mysql://localhost:3306/SohailX";
	private static final String userName = "root";
	private static final String password = "SohailX123@123";
	private static Connection conn = null;
	public static Connection connect() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");

			conn = DriverManager.getConnection(url,userName,password);
//			System.out.println("Connection build");
		} catch(Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	private DBConnection(){};
}
