<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%@ page import="GolfDto.Teacher" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사조회</title>
<link rel="stylesheet" href="../css/style_golf.css">
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
			<c:forEach var="data" items="${list }">
			<tr>
				<td>${ data.t_code}</td>
				<td>${ data.t_name}</td>
				<td>${ data.c_name}</td>
				<td>${ data.c_fee}</td>
				<td>${ data.t_date}</td>
			</tr>
			</c:forEach>
		
	</table>
	</div>
	
</section>
<%@ include file="footer_golf.jsp" %>
</body>
</html>