package db.model;

import java.sql.*;

public class MemberDAO extends ModelBase {
	
	private static final DataBaseSQLType DataBaseSQLType_insert = null;
	private static MemberDAO instance;
	
	private MemberDAO(){	}
	
	public static MemberDAO getInstance(){
		if(instance==null)
			instance=new MemberDAO();
		return instance;
	}
	
	public static StringBuffer currentSql(DataBaseSQLType sqlType) {
		
		String tableName = "member";
		StringBuffer sql = new StringBuffer();
		if(sqlType == DataBaseSQLType_insert) {
			
			sql.append("insert into ");
			sql.append(tableName);
			sql.append("(mem_name,mem_id,mem_pwd)");
			sql.append("values(?, ?, ?)");
		}
		
		return sql;	
		 
	}
	
	public static PreparedStatement settingPstmt(PreparedStatement pstmt, MemberBean member) throws SQLException {
		
		pstmt.setString(1, member.getUserName());
		pstmt.setString(2, member.getUserID());
		pstmt.setString(3, member.getUserPWD());
		return pstmt;	
		 
	}
	
	public static void insert(Connection conn, MemberBean member) throws SQLException {
		
		PreparedStatement pstmt = null;
		
		try {
			conn.setAutoCommit(false);
			
			StringBuffer sql = currentSql(DataBaseSQLType_insert);
			pstmt = conn.prepareStatement(sql.toString());
			pstmt = settingPstmt(pstmt, member);
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