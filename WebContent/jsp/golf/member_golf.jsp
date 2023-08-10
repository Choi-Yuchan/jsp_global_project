<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="java.sql.*" %>

<%@ page import="GolfDto.Member" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>회원정보조회</title>
<link rel="stylesheet" href="../css/style_golf.css">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<%@ include file="topmenu_golf.jsp" %>
<section>

	<div class="title">회원정보조회</div>
	<div class="wrapper">
	<table style="width: 700px;">
		<tr>
			<th>수강월</th>
			<th>회원번호</th>
			<th>회원명</th>
			<th>강의명</th>
			<th>강의장소</th>
			<th>수강료</th>
			<th>등급</th>
		</tr>
  		<c:if test="${not empty memberList}">
			<c:forEach var="data" items="${memberList}">
				<tr>
					<td><c:out value="${data.m_date}"/></td>
					<td><c:out value="${data.m_num}"/></td>
					<td><c:out value="${data.m_name}"/></td>
					<td><c:out value="${data.c_name}"/></td>
					<td><c:out value="${data.c_area}"/></td>
					<td><c:out value="${data.total_fee}"/></td>
					<td><c:out value="${data.grade}"/></td>
				</tr>
			</c:forEach>
		  </c:if>
	</table>
	</div>

</section>
<%@ include file="../footer.jsp" %>
</body>
</html>