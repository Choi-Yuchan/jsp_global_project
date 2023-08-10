<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="VoteDTO.Member" %>

<%
request.setCharacterEncoding("UTF-8");
//list 불러오기
ArrayList<Member> list = new ArrayList<Member>();
list = (ArrayList<Member>)request.getAttribute("MemberList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>memberList</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<link href="../css/style_vote.css" rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body class="d-flex vw-100 vh-100 flex-column justify-content-between">
<%@ include file="topmenu_vote.jsp" %>
<section>
<h2>. 후보조회 .</h2>
<div class="table">
	<table style="width:700px;">
		<tr>
			<th>후보번호</th>
			<th>성명</th>
			<th>소속정당</th>
			<th>학력</th>
			<th>주민번호</th>
			<th>지역구</th>
			<th>대표전화</th>
		</tr>
		<%
		for(int i=0; i<list.size(); i++){
		%>
		<tr>
			<td><%=list.get(i).getM_no()%></td>
			<td><%=list.get(i).getM_name()%></td>
			<td><%=list.get(i).getP_name()%></td>
			<td><%=list.get(i).getP_school()%></td>
			<td><%=list.get(i).getM_jumin()%></td>
			<td><%=list.get(i).getM_city()%></td>
			<td><%=list.get(i).getP_tel()%></td>
		</tr>
		<%
		}
		%>
	</table>
</div>
</section>
<%@ include file="../footer.jsp" %>
</body>
</html>
