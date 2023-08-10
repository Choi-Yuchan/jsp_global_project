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
<link href="../css/style_vote.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
.title {
	font-size: 2rem;
}
</style>
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">

	<!-- 지역구의원투표 -->
	<jsp:include page="topmenu_vote.jsp" />
	<section>
		<div class="title">지역구의원투표 프로그램</div>


	</section>
	<jsp:include page="../footer.jsp" />

</body>
</html>
