<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="db.model.MemberBean" %> 
<%@ page import="db.DataBaseManager" %> 


<jsp:useBean id="memberBean" class="db.model.MemberBean" />
<jsp:setProperty property="*" name="memberBean"/>


<%
DataBaseManager manager = DataBaseManager.getInstance();
manager.insert(memberBean);
%>
