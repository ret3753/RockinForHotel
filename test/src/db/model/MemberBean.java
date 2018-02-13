//회원정보를 전달할 자바빈(프로퍼티만 있는 빈클래스)
package db.model;

public class MemberBean {
	private String userID;
	private String userPWD;
	private String userName;
	
	public String getUserID() {return userID;}
	public void setUserID(String userID) {this.userID = userID;}
	
	public String getUserPWD() {return userPWD;}
	public void setUserPWD(String userPWD) {this.userPWD = userPWD;}
	
	public String getUserName() {return userName;}
	public void setUserName(String userName) {this.userName = userName;}
}