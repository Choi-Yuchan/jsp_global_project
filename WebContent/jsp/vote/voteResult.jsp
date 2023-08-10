<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="VoteDTO.Result" %>

<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<Result> list = new ArrayList<Result>();
list = (ArrayList<Result>)request.getAttribute("voteResult");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>voteResult</title>
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
<h2>. 후보자등수 .</h2>
<div class="table">
	<table>
		<tr>
			<th>후보번호</th>
			<th>성명</th>
			<th>총투표건수</th>
		</tr>
		<%
		for(int i = 0; i < list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getM_no()%></td>
			<td><%=list.get(i).getM_name()%></td>
			<td><%=list.get(i).getV_total() %></td>
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
