<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 헤더 -->
<header class="top_nav"
	style="position: fixed; top: 0px; width: 100%; height: 40px; background-color: dark; color: dark; text-align: center; line-height: 40px">
	<div style="background: white;">쇼핑몰 회원관리 ver 1.0</div>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid">
			<a class="navbar-brand" href="../index.jsp"> LOGO </a>
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
						aria-current="page" href="../index.jsp">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="./regMember.shop">회원등록</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./listViewMember.shop">회원목록조회/수정</a></li>
					<li class="nav-item"><a class="nav-link" href="./salesView.shop">회원매출조회</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>