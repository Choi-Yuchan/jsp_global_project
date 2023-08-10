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

<style>
	h1{
	font-size: 72px;
	color: #D84FC9;
	}
	
	h4{
	color: #6c757d;
	}
</style>
</head>
<body
	class="d-flex vw-100 vh-100 text-center flex-column justify-content-between">
	<jsp:include page="header.jsp" />

	<!-- 메인 콘텐츠 -->
	<main class="text-center">
		<h1 class="mb-5 fw-bolder" >Team Project</h1>
	<div class="row row-cols-2 justify-content-center w-50 mx-auto">
		<h4 class="col-12 mb-4"> TeamLeader - 최유찬 </h4>
		<h4 class="col"> Member - 정윤주 </h4>
		<h4 class="col"> Member - 임하늘 </h4>
		<h4 class="col"> Member - 정정수 </h4>
		<h4 class="col"> Member - 윤지현 </h4>
	</div>
	</main>
	<!-- 푸터 -->
	<jsp:include page="footer.jsp" />
</body>
</html>
