<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Set"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>프로젝트-미니게임</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" />
<link href="./css/style_game.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>

</style>
</head>

<body class="d-flex vw-100 text-center flex-column justify-content-between">
	<!-- 헤더 -->
	<header>
		<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
			<div class="container-fluid">
				<a class="navbar-brand" href="./index.jsp"> <!-- <img src="/images/logo.png" id="logo-image" /> -->
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
							aria-current="page" href="./index.jsp">홈</a></li>
						<li class="nav-item"><a class="nav-link"
							href="./index_golf.jsp">골프장</a></li>
						<li class="nav-item"><a class="nav-link" href="#">홈쇼핑</a></li>
						<li class="nav-item"><a class="nav-link" href="#">투표</a></li>
						<li class="nav-item"><a class="nav-link" href="./game.jsp">미니게임</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</header>

	<!-- top banner -->
	<div class="top_banner"><img src="./image/game_bnr.png" alt="..."></div>
	<!-- 메인 콘텐츠 -->
	<main class="container-fluid">
		<div class="tabmenu out-tabmenu">
			<ul class="tab_wr">
				<li id="tab1" class="btnCon"><input type="radio" checked name="tabmenu" id="tabmenu1"><label for="tabmenu1">랜덤로또</label>
					<div class="tabCon">
						<div class="tab_inner">
							<ul class="">
								<%
									Set<Integer> lottoNumbers = new HashSet<>();
									Random random = new Random();

									while (lottoNumbers.size() < 6) {
										int randomNumber = random.nextInt(45) + 1;
										lottoNumbers.add(randomNumber);
									}

									for (Integer number : lottoNumbers) {
										out.println("<li class=\"lotto-number text-center\">" + number + "</li>");
									}
								%>
							</ul>
						</div>
					</div>
				</li>
				<!-- 탭 두번째 내용 -->
				<li id="tab2" class="btnCon"><input type="radio" name="tabmenu"
					id="tabmenu2"><label for="tabmenu2">가위바위보</label>
					<div class="tabCon">
						<div class="tab_inner">
							<div class="user-card">
								<h2>사용자</h2>
								<form method="post" action="">
									<button type="submit" name="choice" value="가위">가위</button>
									<button type="submit" name="choice" value="바위">바위</button>
									<button type="submit" name="choice" value="보">보</button>
								</form>
								<div id="user-result" class="result"></div>
							</div>
						</div>
					</div>
				</li>
			</ul>
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
