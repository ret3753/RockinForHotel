<%@ page import="java.sql.*" %>

<%
Class.forName("com.mysql.jdbc.Driver"); // JDBC연결
String DB_URL = "jdbc:mysql://localhost:3306/ROCKIN";
String DB_USER = "root";  
String DB_PASSWORD= "!qwer123"; 
Connection conn=null;
Statement stmt=null;
PreparedStatement pstmt =null;
conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
%>