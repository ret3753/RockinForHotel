/*
 * 회원정보테이블의 데이터 처리를 담당하는 클래스 
 * ModelBase를 상속 받음.
*/
package db.model;

import java.sql.*;
import java.lang.reflect.Field;

public class MemberDAO extends ModelBase {
	
	public MemberDAO() {
		currentTabelName = "member";
	}
	
	@Override
	public PreparedStatement createPstmt(Connection conn, MemberBean member, DataBaseSQLType sqlType) throws SQLException {
		
		StringBuffer sql = new StringBuffer();
		
		switch(sqlType) {
		case insert: {
			
			sql.append("insert into ");
			sql.append(currentTabelName);
			sql.append("(mem_name,mem_id,mem_pwd)");
			sql.append("values(?, ?, ?)");
		}
		break;
		
		}
		
		PreparedStatement pstmt = conn.prepareStatement(sql.toString());
		pstmt.setString(1, member.getUserName());
		pstmt.setString(2, member.getUserID());
		pstmt.setString(3, member.getUserPWD());
		
		return pstmt;
	
	}
	
}
