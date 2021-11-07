<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>삼조식당 예약</title>
</head>
<body>
	<div id="jb-container" style="text-align: center;">
		<jsp:include page="top.jsp" flush="false" />
	</div>
	<div class="main-container main-img fade-in-box">
		<h1 style="color:aliceblue;">관리자 로그인 페이지입니다.</h1><br>
		<p>
			<c:if test="${fail == 'fail'}">
               로그인실패입니다.<br>
               다시 아이디와 비밀번호를 입력하세요<br>
			</c:if>
		<form action="adminOK" method="post">
			<table class="type10">
				<tr>
					<td><label>아이디: </label></td>
					<td>
						<div>
							<input type="text" name="adminId">
						</div>
					</td>
				</tr>
				<tr>
					<td><label>비밀번호 : </label></td>
					<td>
						<div>
							<input type="password" name="adminPw">
						</div>
					</td>
				</tr>
			</table>
			<br> <input class="button-base ripple" type="submit" value="확인">
		</form>
		<p>
		<form action="main">
			<input class="button-base ripple" type="submit" value="취소">
		</form>
	</div>
</body>
<footer>
	<div id="jb-container" style="text-align: center;">
		<jsp:include page="footer.jsp" flush="false" />
	</div>
</footer>
</html>
