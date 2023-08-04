<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사조회</title>
</head>
<body>
<%@ include file="topmenu_golf.jsp" %>
<section>

	<div class="title">강사조회</div>
	<div class="wrapper">
	<table style="width: 700px;">
		<tr>
			<th>강사코드</th>
			<th>강사명</th>
			<th>강의명</th>
			<th>수강료</th>
			<th>강사자격취득일</th>
		</tr>
		<%
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection
			                 ("jdbc:oracle:thin:@//localhost:1521/xe","scott","tiger");
			
			Statement stmt = con.createStatement();
			
			request.setCharacterEncoding("UTF-8");
            String sql = "SELECT " +
                    "teacher_code, " +
                    "teacher_name, " +
                    "class_name, " +
                    "('₩' || TO_CHAR(class_price,'fm999,999,999')) class_price, " +
                    "(SUBSTR(teacher_regist_date,0,4) " +
                    "|| '년' " +
                    "|| SUBSTR(teacher_regist_date,5,2) " +
                    "|| '월' " +
                    "|| SUBSTR(teacher_regist_date,7,2) " +
                    "|| '일' ) teacher_regist_date " +
                    "FROM tbl_teacher_202201";
			       
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){%>
		<tr>
			<td><%=rs.getString("teacher_code") %></td>
			<td><%=rs.getString("teacher_name") %></td>
			<td><%=rs.getString("class_name") %></td>
			<td><%=rs.getString("class_price") %></td>
			<td><%=rs.getString("teacher_regist_date") %></td>
		</tr>
		<%}
			con.close();
			stmt.close();
			
		}catch(Exception e){
			
		}
		%>		
		
	</table>
	</div>
	
</section>
<%@ include file="footer_golf.jsp" %>
</body>
</html>