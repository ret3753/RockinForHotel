<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>test</title>
</head>
<style type="text/css">
	.shinLa {
		max-width: 1200px;
		min-width: 1200px;
		background-color: #EEEEEE;
		min-height: 130px;
		margin: auto;
	}
	.shinLa_one {
		margin-left: 30px;
		margin-top: 5px;
		display: inline-block;
		width:80%;
		height: 100px;
		position: absolute;
	}
	.shinLa_Juster {
		float: left;
		width:20%;
		height: 50px;
		display: inline-block;
		position: static;
	}
	.shinLaSelect{
		float: left;
		height: 50px;
		width:100%;
		line-height: 50px;
		vertical-align: middle;
		display: inline-block;
	}

	.shiLaSelecter {
		float: left;
		height: 50px;
		width : 100%;
		line-height: normal;
		vertical-align: middle;
		display: inline-block;
		position: relative; width: 200px;
		border: 1px solid #999;
		z-index: 1;
	}
	#fontHotel {
		font-family: Verdana,Dotum,돋움,sans-serif;
		font-style: normal;
		font-size: 14px;
		font-weight: 700;
		color:#727272;
		margin-left: 10px;
	}
	#selecter {
		margin-left: 10px;		
	}
	#selecter:before {  
		content: "";
		position: absolute; 
		top: 50%; 
		right: 15px; 
		width: 0;
		height: 0; 
		margin-top: -1px; 
		border-left: 5px solid transparent; 
		border-right: 5px solid transparent; 
		border-top: 5px solid #333; 
		}
	.shiLaSelecter label {
		height: 100%;
		width:100%;
		position: absolute; top: 1px; 
		left: 5px; 
		padding: .8em .5em; 
		color: #999; 
		z-index: -1; 
	}
	.shiLaSelecter select { 
		display: inline;
		line-height: normal; 
		font-family: Arial, Dotum;
		font-style: normal;
		font-weight: 400;
		font-size: 13px;
		color: #666666; 
		width: 100%; 
		height: auto;   
		padding: .8em .5em; 
		border: 0; opacity: 0; 
		filter:alpha(opacity=0); 
		-webkit-appearance: none; 
		-moz-appearance: none; 
		appearance: none;
	}
	.supercheck {
		float: left;
		width :20%;
		height: 100%;
		text-align: center;
		line-height: 50px;
		vertical-align: middle;
	}
	
	.checkIn {
		float: left;
		width:49%;
		height: 100%;
		display: block;
		margin-right: 2%;
	}
	.checkOut{
		float: left;
		width:49%;
		height: 100%;
		display: block;
	}
	.checkHuman {
		float: left;
		width:40%;
		height: 100%;
		display: block;
		text-align: center;
		line-height: 50px;
		vertical-align: middle;
		}

	#check_One{
		float: left;
		width: 100%;
		height: 50%;
		display: block;
	}
	#check_Two{
		float: left;
		width: 50%;
		height: 50%;
		display: block;
		line-height: normal;
	}
	#check_Three{
		float: left;
		width: 50%;
		height: 50%;
		display: block;
		line-height: normal;
		vertical-align: middle;
	}
	.checkAdult{
		float: left;
		width:33%;
		height: 100%;
		display: block;
	}
	#humanOne{
		float: left;
		width: 100%;
		height: 50%;
		display: block;
	}
	#humanTwo{
		float: left;
		width:50%;
		height: 100%;
		display: block;
		text-align: right;
	}
	#humanThree{
		float: left;
		width:25%;
		height: 50%;
		display: block;
		text-align: center;


	}
	#humanFour{
		float: left;
		width:100%;
		height:50%;
		display:inline-block;
		line-height: normal;
		vertical-align: middle;
		text-align: center;
		background-color: white;
		border-color: #727272;
		border-width: 1px;

	}
	.checkChild{
		float: left;
		width:32%;
		height: 100%;
		display: block;
	}
	.checkBaby {
		float: left;
		width:33%;
		height: 100%;
		display: block;
	}
	#fontcheck {
		font-family: Verdana,Dotum,돋움,sans-serif;
		font-style: normal;
		font-size: 13px;
		font-weight: 400;
		color:#727272;
		margin-left: 10px;
	}
	#fontDay1{
		font-family: Verdana,Dotum,돋움,sans-serif;
		font-style: normal;
		font-size: 13px;
		font-weight: 400;
		color:#555555;
	}
	#fontDay2{
		font-family: Verdana,Dotum,돋움,sans-serif;
		font-style: normal;
		font-size: 20px;
		font-weight: 400;
		color:#555555;
	}
	#fontDay3{
		font-family: Verdana,Dotum,돋움,sans-serif;
		font-style: normal;
		font-size: 40px;
		font-weight: 400;
		color:#555555;
	}
	#fonthuman{
		font-family: Verdana,Dotum,돋움,sans-serif;
		font-style: normal;
		font-size: 40px;
		font-weight: 400;
		color:#555555;
		margin-right: 10px;
	}
	.checkSearch{
		float: left;
		width:20%;
		height: 50%;
		display: block;
		text-align: center;
		line-height: 50px;
		vertical-align: middle;
	}
	.checkSearch1{
		width:20%;
		float: left;
		display: block;
		text-align: center;
		line-height: normal;

	}
	
	.checkSearch1 {
		display: inline;
		text-align: center;
	}
	#checkshearchFont {
		font-family: Verdana,Dotum,돋움,sans-serif;
		font-style: normal;
		font-size: 12px;
		font-weight: 400;
		color:white;
		line-height: 40px;
		vertical-align: middle;
	}
	.checkSearch2 {
		width:150px;
		height:40px;
		display: inline-block;
		background-color: #4e1f0e;

	}

</style>
<script type="text/javascript">
	$(document).ready(function() { 
		var selectTarget = $('.shiLaSelecter select'); 
		selectTarget.change(function(){ 
			var select_name = $(this).children('option:selected').text(); 
			$(this).siblings('label').text(select_name); 
		}); 
	});
</script>
<%
Class.forName("com.mysql.jdbc.Driver"); // JDBC연결
String DB_URL = "jdbc:mysql://localhost:3306/ROCKIN";
String DB_USER = "root";  
String DB_PASSWORD= "lsm1460"; 
	Connection conn=null;
	Statement stmt=null;
	conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
	String sql = "SELECT spot_name from SUPERSPOT";

	stmt=conn.createStatement();

	ResultSet rs =stmt.executeQuery(sql);

%>
<body>
<div class="shinLa">
<div class="shinLa_one">
	<div class="shinLa_Juster">
		<div class="shinLaSelect"><font id="fontHotel">호텔을 선택해주세요.</font></div>
		<div class="shiLaSelecter">
			<label>호텔을 선택해주세요.</label>
			<select id="selecter"><%
			while(rs.next()) {
		 %>
		 <option value="<%= rs.getString("spot_name") %>"><%= rs.getString("spot_name") %> </option>
		 <%
		 	}
		 	%>
		 </select></div>
	</div>
	<div class="supercheck">
		<div class="checkIn">
			<div id="check_One"><font id="fontcheck">체크인</font></div>
			<div id="check_Two"><font id="fontDay1">
				<script type="text/javascript">
					var d = new Date();
					document.write(d.getFullYear()+'<br/>');
				</script>
				</font>
				<font id="fontDay2">
				<script type="text/javascript">
					document.write((d.getMonth() + 1));
				</script>
				</font>
			</div>
			<div id="check_Three">
				<font id="fontDay3">
					<script type="text/javascript">
						document.write((d.getDate()));
					</script>
				</font>
			</div>
		</div>
		<div class="checkOut">
			<div id="check_One">
			<font id="fontcheck">체크아웃</font>
			</div>
			<div id="check_Two"><font id="fontDay1">
				<script type="text/javascript">
					var d = new Date();
					document.write(d.getFullYear()+'<br/>');
				</script>
				</font>
				<font id="fontDay2">
				<script type="text/javascript">
					document.write((d.getMonth() + 1));
				</script>
				</font>
			</div>
			<div id="check_Three">
				<font id="fontDay3">
					<script type="text/javascript">
						document.write((d.getDate()));
					</script>
				</font>
			</div>
		</div>
	</div>
	
	<div class="checkHuman">
		<div class="checkAdult">
			<div id="humanOne">
			<font id="fontcheck">성인</font>
			</div>
			<div id="humanTwo">
				<font id="fonthuman">0</font>
			</div>
			<div id="humanThree">
				<div id="humanFour"><font>+</font></div>
				<div id="humanFour"><font>-</font></div>
			</div>
			
		</div>
		<div class="checkChild"><form>
			<div id="humanOne"><font id="fontcheck">어린이</font>
			</div>
			<div id="humanTwo">
				<font id="fonthuman">0</font>
			</div>
			<div id="humanThree">
				<div id="humanFour"><font>+</font></div>
				<div id="humanFour"><font>-</font></div>
			</div>
			</form>
		</div>  
		<div class="checkBaby">
		<div id="humanOne"><font id="fontcheck">유아</font></div>
		<div id="humanTwo">
				<font id="fonthuman">0</font>
			</div>
			<div id="humanThree">
				<div id="humanFour"><font>+</font></div>
				<div id="humanFour"><font>-</font></div>
			</div>
		</div>
	</div>
		<div class="checkSearch"></div>
		<div class="checkSearch1">
			<div class="checkSearch2">
			<font id="checkshearchFont">검색</font></div>
		</div>
	</div>
</div>
</body>
</html>