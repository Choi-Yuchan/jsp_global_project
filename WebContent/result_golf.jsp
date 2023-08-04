<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사매출현황</title>
</head>
<body>
<%@ include file="topmenu_golf.jsp" %>
<section>

	<div class="title">강사매출현황</div>
	<div class="wrapper">
	<table style="width: 500px;">
		<tr>
			<th>강사코드</th>
			<th>강의명</th>
			<th>강사명</th>
			<th>총매출</th>
		</tr>
		<%
		try{
			Class.forName("oracle.jdbc.OracleDriver");
			Connection con = DriverManager.getConnection
			                 ("jdbc:oracle:thin:@//localhost:1521/xe","scott","tiger");
			
			Statement stmt = con.createStatement();
			
			request.setCharacterEncoding("UTF-8");
			//String sql = "SELECT C.teacher_code, T.class_name, T.teacher_name,('₩' || TO_CHAR(SUM(C.tuition),'fm999,999,999'))total FROM tbl_class_202201 C, tbl_teacher_202201 T WHERE C.teacher_code = T.teacher_code GROUP BY(C.teacher_code, T.class_name, T.teacher_name) ORDER BY C.teacher_code";
            String sql = "SELECT " +
                         "C.teacher_code , " +
                         "T.class_name , " +
                         "T.teacher_name , " +
                         "('₩' || TO_CHAR(SUM(C.tuition),'fm999,999,999')) total " +
                         "FROM TBL_CLASS_202201 C, TBL_TEACHER_202201 T " +
                         "WHERE C.teacher_code = T.teacher_code " +
                         "GROUP BY(C.teacher_code, T.class_name, T.teacher_name) " +
                         "ORDER BY C.teacher_code";
			       
			ResultSet rs = stmt.executeQuery(sql);
			while(rs.next()){%>
		<tr>
			<td><%=rs.getString("teacher_code") %></td>
			<td><%=rs.getString("class_name") %></td>
			<td style="text-align:right;"><%=rs.getString("teacher_name") %></td>
			<td style="text-align:right;"><%=rs.getString("total") %></td>
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