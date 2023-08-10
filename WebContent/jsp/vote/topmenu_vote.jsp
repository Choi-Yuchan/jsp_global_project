<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- 헤더 -->
<header>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<div class="container-fluid d-flex flex-column">
			<h2 class="text-white py-2">지역구의원투표 프로그램 ver 1.0</h2>
			<div
				class="container-fluid d-flex justify-content-center align-content-center">
				<a class="navbar-brand" href="/jsp_cyc_mvc_board/jsp/index.jsp">
					LOGO </a>
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
						<!-- <li><a href="main.do" class="nav-link">투표 홈으로</a></li> -->
						<li class="nav-item"><a class="nav-link " aria-current="page"
							href="memberList.vote">후보조회</a></li>
						<li class="nav-item"><a class="nav-link"
							href="voteMember.vote">투표하기</a></li>
						<li class="nav-item"><a class="nav-link"
							href="voteList.vote">투표검수조회</a></li>
						<li class="nav-item"><a class="nav-link"
							href="voteResult.vote">후보자등수</a></li>
					</ul>
				</div>
			</div>
		</div>
	</nav>
</header>
