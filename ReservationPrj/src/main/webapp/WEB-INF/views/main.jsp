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
	<!-- top.jsp -->
	<div style="text-align: center;">
		<jsp:include page="top.jsp" flush="false" />
	</div>
	<div class="main-container main-img fade-in-box">
		<div>
			<br>
			<c:choose>
				<c:when test="${sessionScope.adminId != null }">
				<br><br><br>
					<h1 class="main-title">관리자로 로그인 하였습니다.</h1>
				<br><br><br>
					</c:when>
				<c:otherwise>
				<br><br><br>
					<h1 class="main-title">삼 조 스 시</h1>
					<I><h4 style="margin-top: 5px; color: aliceblue;">영원히 기억될 순간을
							전해드리겠습니다.</h4></I>
				<br><br><br>
				</c:otherwise>
			</c:choose>
			<!-- 예약하기 -->
			<div>
				<form action="dateselect">
					<button style="background-color: transparent; border: none;">
						<h3 style="color: white;">예약하러가기</h3>
					</button>
					<br>
				</form>
			</div>
		</div>
	</div>
</body>
<footer>
	<div class="footer" style="text-align: center;">
		<jsp:include page="footer.jsp" flush="false" />
	</div>
</footer>
</html>