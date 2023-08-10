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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="../../css/style_game.css" rel="stylesheet" />
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<style>
</style>
</head>

<body
	class="d-flex vw-100 text-center flex-column justify-content-between">
	<!-- 헤더 -->
	<jsp:include page="topmenu_game.jsp" />

	<!-- top banner -->
	<!-- <div class="top_banner">
		<img src="../image/game_bnr.png" alt="...">
	</div> -->
	<!-- 메인 콘텐츠 -->
	<main class="container-fluid">
		<div class="tabmenu out-tabmenu">
			<ul class="tab_wr">
				<li id="tab1" class="btnCon"><input type="radio" checked
					name="tabmenu" id="tabmenu1"><label for="tabmenu1">랜덤로또</label>
					<div class="tabCon">
						<div class="tab_inner">
							<ul>
								<%
									String[] colorClass = {"ten", "twenty", "thirty", "forty", "last"};
									Set<Integer> lottoNumbers = new HashSet<>();

									while (lottoNumbers.size() < 6) {
										int randomNumber = (int) (Math.random() * 45 + 1);
										lottoNumbers.add(randomNumber);
									}

									for (Integer number : lottoNumbers) {
										out.println(
												"<li class=\"lotto-number text-center " + colorClass[number / 10] + "\">" + number + "</li>");
									}
								%>
							</ul>
							<div class="w-100 d-flex justify-content-center">
								<button class="btn mb-3 new-btn"
									onclick="window.location.reload();">NEW NUMBER</button>
							</div>
						</div>
					</div></li>
				<!-- 탭 두번째 내용 -->
				<li id="tab2" class="btnCon"><input type="radio" name="tabmenu"
					id="tabmenu2"><label for="tabmenu2">가위바위보</label>
					<div class="tabCon">
						<div class="tab_inner">
							<div class="row d-flex justify-content-around">
								<div class="card" style="width: 19rem">
									<img class="card-img-top" id="player"
										src="https://img.hankyung.com/photo/202306/AD.33830769.1.jpg">
									<div class="card-body">
										<h6 class="card-title">당신</h6>
										<div class="d-flex justify-content-around">
											<a href="#" id="scissors-btn" class="btn btn-dark btn-lg">가위</a>
											<a href="#" id="rock-btn" class="btn btn-dark btn-lg">바위</a>
											<a href="#" id="paper-btn" class="btn btn-dark btn-lg">보</a>
										</div>
									</div>
								</div>
								<div class="card" style="width: 19rem">
									<img class="card-img-top"
										src="https://item.kakaocdn.net/do/c74ecf3db02808591a0d66440140193582f3bd8c9735553d03f6f982e10ebe70">
									<div class="card-body">
										<h6 class="card-title">결과</h6>
										<div class="d-flex align-items-center justify-content-center">
											<p class="card-text text" id="result">결과</p>
										</div>
									</div>
								</div>
								<div class="card" style="width: 19rem">
									<img class="card-img-top" id="com"
										src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn5YBdEm3flWd4WKlXcSUV-C2ScnguFOAU4Q&usqp=CAU">
									<div class="card-body">
										<h6 class="card-title">컴퓨터</h6>
									</div>
								</div>
							</div>
						</div>
					</div></li>
			</ul>
		</div>
	</main>

	<!-- 푸터 -->
	<jsp:include page="../footer.jsp" />
</body>
<script>
	// 가위바위보 게임 함수
	function play(player) {
		const rps = [ "가위", "바위", "보" ];
		const com = rps[Math.floor(Math.random() * rps.length)];
		let result = "";

		// 컴퓨터가 선택한 이미지 업데이트
		if (com === "가위") {
			document.querySelector("#com").src = "../../image/scissors.png";
		} else if (com === "바위") {
			document.querySelector("#com").src = "../../image/rock.png";
		} else if (com === "보") {
			document.querySelector("#com").src = "../../image/paper.png";
		}

		// 사용자가 선택한 이미지 업데이트
		if (player === "가위") {
			document.querySelector("#player").src = "../../image/scissors.png";
		} else if (player === "바위") {
			document.querySelector("#player").src = "../../image/rock.png";
		} else if (player === "보") {
			document.querySelector("#player").src = "../../image/paper.png";
		}

		// 승패 결정 조건 비교
		if (com === player) {
			result = "비겼습니다!";
			drawCount++;
		} else if ((com === "가위" && player === "보")
				|| (com === "바위" && player === "가위")
				|| (com === "보" && player === "바위")) {
			result = "패배!";
			loseCount++;
		} else {
			result = "승리!";
			winCount++;
		}

		// 결과 메시지 출력
		const resultElement = document.getElementById("result");
		resultElement.textContent = result;
	}

	// 버튼에 클릭 이벤트 리스너 추가
	document.querySelector("#scissors-btn").addEventListener("click",
			function() {
				play("가위");
			});

	document.querySelector("#rock-btn").addEventListener("click", function() {
		play("바위");
	});

	document.querySelector("#paper-btn").addEventListener("click", function() {
		play("보");
	});
</script>
</html>
