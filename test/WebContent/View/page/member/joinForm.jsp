<%@ page contentType="text/html;charset=utf-8" import="java.sql.*"%>

<%@include file="/View/page/header.jsp"%>
<%@include file="/View/page/gnb.jsp"%>

<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
	<title>
	</title>
</head>
<body>
<script src="${jsPath}/joinForm.js" />
<form method="post" action="${pagePath}/co_post.jsp">
	<p> ID : <input type="text" name="userID"></p><br>
	<p> PW : <input type="text" name="userPWD"></p><br>
	<p> NAME : <input type="text" name="userName"></p>
	<input type="submit" value="GO">
</form>
</body>
</html>
<%@include file="/View/page/footer.jsp"%>