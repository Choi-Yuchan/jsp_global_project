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
<body>
	<!-- 헤더 -->
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="/index.jsp"> 
				<!-- <img
					src="/images/logo.png" id="logo-image" /> -->
				LOGO
				</a>
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarNav"
					aria-controls="navbarNav" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div
					class="collapse navbar-collapse container-fluid justify-content-between"
					id="navbarNav">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link active"
							aria-current="page" href="/index.jsp">홈</a></li>
						<li class="nav-item"><a class="nav-link" href="#">골프장</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">홈쇼핑</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">투표</a></li>
						<li class="nav-item"><a class="nav-link" href="#">미니게임</a></li>
					</ul>

				</div>
			</div>
		</nav>

	</header>

	<!-- 메인 콘텐츠 -->
	<main>
		<div class="container mt-5">
			<h1>메인 콘텐츠 영역</h1>
			<p>이곳에 원하는 내용을 작성하세요.</p>
		</div>
	</main>

	<!-- 푸터 -->
	<footer class="bg-dark text-light text-center py-3">
		<div class="container">
			<p>Copyright &copy; 2023 Team Project, Inc.</p>
		</div>
	</footer>
</body>
</html>