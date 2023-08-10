<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="VoteDTO.Vote" %>

<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<Vote> list = new ArrayList<Vote>();
list = (ArrayList<Vote>)request.getAttribute("VoteList");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>voteList</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="../css/style_vote.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<%@ include file="topmenu_vote.jsp" %>
<section>
<h2>. 투표검수조회 .</h2>
<div class="table">
	<table style="width:700px;">
		<tr>
			<th>성명</th>
			<th>생년월일</th>
			<th>나이</th>
			<th>성별</th>
			<th>후보번호</th>
			<th>투표시간</th>
			<th>유권자확인</th>
		</tr>
		<%
		for(int i = 0; i < list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getV_name() %></td>
			<td><%=list.get(i).getV_jumin() %></td>
			<td><%=list.get(i).getV_age() %></td>
			<td><%=list.get(i).getV_gender() %></td>
			<td><%=list.get(i).getM_no() %></td>
			<td><%=list.get(i).getV_time() %></td>
			<td><%=list.get(i).getV_confirm() %></td>
		</tr>
		<%
		}
		%>
	</table>
</div>
</section>
<%@ include file="footer_vote.jsp" %>
</body>
</html>
