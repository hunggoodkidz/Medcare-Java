package com.db;

import java.sql.*;
import java.sql.DriverManager;

public class DBConnector {

	private static Connection conn;
	private static Statement state;
	
	public static Connection getConn() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/medcare_hospital","root","");
			state = conn.createStatement();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		return conn;
	}
	
}
