<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수강신청</title>
<link rel="stylesheet" href="../css/style_golf.css">
</head>

<%@ include file="topmenu_golf.jsp" %>
<section>
<div class="title">수강신청</div>
<div class="wrapper">
<form>
<table class="insertBox" style="width: 600px;">
<colgroup>
<col width="30%;">
<col width="70%;">
</colgroup>
    <tr>
        <th>수강월</th>
        <td>
        <input type="text" name="m_date" maxlength="6">
        2022년03월 예)202203
        </td>
    </tr>
    <tr>
        <th>회원명</th>
        <td>
        <select name="m_name" onchange="fn_change1();">
        <option value="">회원명</option>
        <option value="홍길동">홍길동</option>
        <option value="장발장">장발장</option>
        <option value="임꺽정">임꺽정</option>
        <option value="성춘향">성춘향</option>
        <option value="이몽룡">이몽룡</option>
        </select>
        </td>
    </tr>
    <tr>
        <th>회원번호</th>
        <td><input type="text" name="m_num" readonly>예)10001</td>
    </tr>
    <tr>
        <th>강의장소</th>
        <td>
        <select name="c_area" onchange="fn_change2();">
        <option value="">강의장소</option>
        <option value="서울본원">서울본원</option>
        <option value="성남분원">성남분원</option>
        <option value="대전분원">대전분원</option>
        <option value="부산분원">부산분원</option>
        <option value="대구분원">대구분원</option>
        </select>
        </td>
    </tr>
    <tr>
        <th>강의명</th>
        <td>
        <select name="t_code" onchange="fn_change2();">
        <option value="">강의신청</option>
        <option value="100">초급반</option>
        <option value="200">중급반</option>
        <option value="300">고급반</option>
        <option value="400">심화반</option>
        </select>
        </td>
    </tr>
    <tr>
        <th>수강료</th>
        <td><input type="text" name="total_fee" readonly>원</td>
    </tr>
    <tr>
        <td style="text-align:center;" colspan="2">
        <button id="submit-btn" class="btn" type="submit" >수강신청</button>
        <button class="btn" type="button" onclick="fn_reset();" >다시쓰기</button>
        </td>
    </tr>
</table>
</form>
</div>
</section>
<%@ include file="footer_golf.jsp" %>
<script src="./js/script_golf.js"></script>
</body>
</html>