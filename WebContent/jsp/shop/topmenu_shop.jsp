<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 헤더 -->
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid d-flex flex-column">
			<h2 class="text-white py-2">쇼핑몰 회원관리 ver 1.0</h2>
			<div class="container-fluid d-flex justify-content-center align-content-center">
				<a class="navbar-brand" href="/jsp_cyc_mvc_board/jsp/index.jsp"> LOGO </a>
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
							aria-current="page" href="main.shop">홈</a></li>
						<li class="nav-item"><a class="nav-link"
							href="regMember.shop">회원등록</a></li>
						<li class="nav-item"><a class="nav-link"
							href="listViewMember.shop">회원목록조회</a></li>
						<li class="nav-item"><a class="nav-link"
							href="salesView.shop">회원매출조회</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
</header>