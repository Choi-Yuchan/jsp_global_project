<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>


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
		<h2>쇼핑몰 회원등록</h2>
		<br>
		<form action="write.do" method="post">	
		<table border="1">
		
		    <tr>
				<th>회원번호(자동발생)</th>
			</tr>
			<tr>
				<th>회원 성명</th>
				<td><input type="text" name="custName"></td>
			</tr>
			<tr>
				<th>회원전화</th>
				<td><input type="text" name="custTel"></td>
			</tr>
			<tr>
				<th>회원주소</th>
				<td><input type="text" name="custAdress"></td>
			</tr>
			<tr>
				<th>가입일자</th>
				<td><input type="text" name="custRegiDate"></td>
			</tr>
			<tr>
				<th>고객등급[A:VIP, B:일반, C:직원]</th>
				<td><input type="text" name="custGrade"></td>
			</tr>
			<tr>
				<th>도시코드</th>
				<td><input type="text" name="cityCode"></td>
			</tr>
			<tr>
				<th colspan="2">
				<input type="submit" value="등록">
				<input type="button" value="조회" onclick="return moveList()">
				</th>
			</tr>
		
		</table>
		</form>
	</section>

	 <footer>
            <jsp:include page="footer_shop.jsp"></jsp:include>
    </footer>
</body>
<script>

	function moveList(){
		location.href = "listViewMember.do";
	}
</script>
</html>