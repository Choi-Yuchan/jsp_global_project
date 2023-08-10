<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>강사매출현황</title>
<link rel="stylesheet" href="../css/style_golf.css">
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
<%@ include file="footer_golf.jsp" %>
</body>
</html>