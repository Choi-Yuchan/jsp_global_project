<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>header_shop</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</head>
	<style>
	body { padding-top:96px; }
		.top_navivar{
			position: fixed;
			top: 0px;
			width: 100%;
		}
		
		.top_var{
			/* background-color: white; */
			text-align: center;
			line-height: 40px;
		}
		.container mt-5{
/* 			top: 500px; 
 */			width: 100px; 
			height:100%; 
			background-color: white;
		}
		
	</style>
<body>
	<!-- 헤더 -->
	<div class=top_navivar>
	<header class=top_var>쇼핑몰 회원관리 ver 1.0 </header>
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
							aria-current="page" href="/index.jsp">회원등록</a></li>
						<li class="nav-item"><a class="nav-link" href="#">회원목록조회/수정</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">회원매출조회</a>
						</li>
						<li class="nav-item"><a class="nav-link" href="#">홈으로</a></li>
					</ul>

				</div>
			</div>
		</nav>
	</div>

	

</body>
</html>
