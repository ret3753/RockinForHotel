<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
	<title>
	</title>
</head>
<body>
<form method="post" action="${pagePath}/co_post.jsp">
	<p> ID : <input type="text" name="userID"></p><br>
	<p> PW : <input type="text" name="userPWD"></p><br>
	<p> NAME : <input type="text" name="userName"></p>
	<input type="submit" value="GO">
</form>
</body>
</html>