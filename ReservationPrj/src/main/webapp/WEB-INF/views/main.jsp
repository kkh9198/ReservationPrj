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
	<hr>
	<div class="main-container fade-in-box">
		<div class="img-box">
			<div class="main-img">
				<br>
				<c:choose>
					<c:when test="${sessionScope.adminId != null }">
						<h3>관리자로 로그인 하였습니다.</h3>
						<br><br><br><br><br><br><br><br><br><br><br>
					</c:when>
					<c:otherwise>
						<h5 class="main-sub-title"> 우리들만의 공간.</h5>
						<h1 class="main-title">삼 조</h1>
						<br><br><br>
					</c:otherwise>
				</c:choose>
				<!-- 예약하기 -->
				<div>
					<form action="dateselect">
						<button class="btn btn-primary btn-sm" style="background-color:transparent; border:none;"><h3>예약하러가기</h3></button>
						<br>
					</form>
				</div>
			</div>
		</div>
		<div>
			<div class="left-card">
				<div style="margin-top:50px;">
				<i class="fas fa-users fa-3x"></i><p>
				<h2>한타임 당 10명</h2>
				</div>
			</div>
			<div class="center-card">
				<div style="margin-top:50px;">
				<i class="far fa-clock fa-3x"></i><p>
				<h2>총 4타임 운영</h2>
				</div>
			</div>
			<div class="right-card">
				<div style="margin-top:50px;">
				<i class="fas fa-map-signs fa-3x"></i><p>
				<h2>오시는 길</h2>
				</div>
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