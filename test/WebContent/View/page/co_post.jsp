<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@include file="/View/page/dbManager/dbManagerBase.jsp"%>
<%@ page import="db.model.MemberBean" %> 
<%@ page import="db.DataBaseManager" %> 


<!DOCTYPE html>
<html>
<head>
	<title></title>
</head>
<script type="text/javascript">
	$(document).ready(function() { 
		var selectTarget = $('.shiLaSelecter select'); 
		selectTarget.change(function(){ 
			var select_name = $(this).children('option:selected').text(); 
			$(this).siblings('label').text(select_name); 
		}); 
	});
</script>
<body>

<jsp:useBean id="memberBean" class="db.model.MemberBean" />
<jsp:setProperty property="*" name="memberBean"/> 


<%
DataBaseManager manager = DataBaseManager.getInstance();
manager.insert(memberBean);
%>



<%-- <%
	String[] i = new String[11];
	int a=0;
	for (Enumeration idname=request.getParameterNames(); idname.hasMoreElements();) {
		String abc=(idname.nextElement()).toString();
		out.print(abc);
		out.print(" : ");
		i[a]=request.getParameter(abc);
		
		String[] gab=request.getParameterValues(abc);
		out.print(gab[0]);
		out.print("<br>");
		a++;

/*
		if (abc=='userID'){
		sql= sql+"('"+abc+"','");

	}
		else if (abc=='resultPw'){
		sql= sql+abc+"','";
	}
		else if (abc=='userName'){
		sql= sql+abc+")"
		ResultSet rs =stmt.executeQuery(sql);
	}
	*/
	
	session.setAttribute("id", "test"); 

}
StringBuffer sql = new StringBuffer("insert into member (mem_name,mem_id,mem_pwd) value (?,?,?)");
pstmt= conn.prepareStatement(sql.toString());
pstmt.setString(1,i[0]);
pstmt.setString(2,i[1]);
pstmt.setString(3,i[2]);
pstmt.executeUpdate();

pstmt.close();
conn.close();
%>
 --%>

</body>
</html>