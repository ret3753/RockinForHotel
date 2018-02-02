<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>

<%!
	String toHangul(String s){
	String changeString = s;
	try{
		if (s != null) {
			changeString= new String(s.getBytes("8859_1"),"utf-8");
		}
			
	} catch (Exception e) {

	}
	return changeString;
}
%>