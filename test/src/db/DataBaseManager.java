package db;

import java.sql.*;

import db.model.*;

public class DataBaseManager {
	
	private static DataBaseManager instance = new DataBaseManager();
	Connection conn = null;
	
	public static DataBaseManager getInstance () {
		return instance;
	}
	
	public DataBaseManager() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver"); // JDBC연결
        } catch (ClassNotFoundException e) {
            try {
				throw new ClassNotFoundException("MySQL JDBC driver NOT detected in library path.", e);
			} catch (ClassNotFoundException e1) {
				e1.printStackTrace();
			}
        }
		
		String DB_URL = "jdbc:mysql://localhost:3306/ROCKIN";
		String DB_USER = "root";
		String DB_PASSWORD= "!qwer123";
		try {
			conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void insert (Object object) {
			try {
				if(object.getClass().isAssignableFrom(MemberBean.class)) {
					MemberDAO.insert(conn, (MemberBean)object);
				}
				
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
		
	}

}
