<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사매출현황</title>
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

	<div class="title">강사매출현황</div>
	<div class="wrapper">
	<table style="width: 500px;">
		<tr>
			<th>강사코드</th>
			<th>강의명</th>
			<th>강사명</th>
			<th>총매출</th>
		</tr>
		<c:set var="totalFormat" value="₩###,###,###" />
		<c:forEach items="${resultList}" var="teacherSale">
			<tr>
				<td>${teacherSale.t_code}</td>
				<td>${teacherSale.c_name}</td>
				<td style="text-align:right;">${teacherSale.t_name}</td>
				<td style="text-align:right;">${teacherSale.total_fee}</td>
			</tr>
		</c:forEach>
	</table>
	</div>

</section>
<%@ include file="../footer.jsp" %>
</body>
</html>