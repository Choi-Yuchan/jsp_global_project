<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>프로젝트</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="d-flex vw-100 vh-100 text-center flex-column justify-content-between">
	<jsp:include page="./header.jsp"></jsp:include>
	<!-- 메인 콘텐츠 -->
	<main>
		<div class="container mt-5">
			<h1>메인 콘텐츠 영역</h1>
			<p>이곳에 원하는 내용을 작성하세요.</p>
		</div>
	</main>
	<jsp:include page="./footer.jsp"></jsp:include>
</body>
</html>
