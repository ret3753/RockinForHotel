package db.model;
/*
 * dbModel중 DAO들의 부모클래스 Task를 동일하게 구성하기 위해 만듬.
 */

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

enum DataBaseSQLType {
	insert
}

public class ModelBase {
	
	public String currentTabelName = "";
	
	public PreparedStatement createPstmt(Connection conn, MemberBean member, DataBaseSQLType sqlType) throws SQLException {
		return null;
	}
	
	public void insert(Connection conn, MemberBean member) throws SQLException {

		PreparedStatement pstmt = null;

		try {

			conn.setAutoCommit(false);
			pstmt = createPstmt(conn, member,DataBaseSQLType.insert);
			pstmt.executeUpdate();
			conn.commit();

		} catch (SQLException sqle) {

			conn.rollback();
			throw new RuntimeException(sqle.getMessage());
		} finally {
			try{
				if ( pstmt != null ){ pstmt.close(); pstmt=null; }
				if ( conn != null ){ conn.close(); conn=null;	}
			}catch(Exception e){
				throw new RuntimeException(e.getMessage());
			}
		} 
	} 
}
