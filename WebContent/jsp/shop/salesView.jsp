<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.*"%>
<%@ page import="javax.naming.Context"%>
<%@ page import="javax.naming.InitialContext"%>
<%@ page import="javax.sql.DataSource"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홈쇼핑</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
	<jsp:include page="topmenu_shop.jsp"></jsp:include>
</head>
<body class="d-flex vw-100 vh-100 text-center flex-column justify-content-between">
	<header>
		
	</header>

	<section class="d-flex flex-column align-items-center">
		<h2>회원매출조회</h2>
		<br>
		<table width=700 " border="1">
		<tr>
			<th>회원번호</th>
			<th>회원성명</th>
			<th>고객등급</th>
			<th>매출</th>
		</tr>


			<c:forEach var="dto" items="${list}">
				<tr>
					<td>${dto.custno}</td>
					<td>${dto.custname}</td>
					<td>${dto.grade}</td>
					<td>${dto.price}</td>
				</tr>
			</c:forEach>


		</table>
	</section>

	<footer>
		<jsp:include page="footer_shop.jsp"></jsp:include>
	</footer>
</body>
</html>