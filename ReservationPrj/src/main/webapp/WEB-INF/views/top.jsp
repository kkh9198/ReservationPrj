<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/reservation.css">
<head>
<meta charset="UTF-8">
<title>삼조식당 예약</title>
<!-- Favicon -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript"></script>

<!-- Import bootstrap cdn -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>


<!-- Import jquery cdn -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous">
    </script>
</head>
<body>
	<p>
	<div class="collapse" id="navbarToggleExternalContent">
		<div class="bg-dark p-4">
			<form action="main">
				<button class="button-base ripple"
					style="background-color: transparent; border: none; font-size: 20px">홈으로</button>
			</form>
			<br>
			<form action="dateselect">
				<button class="button-base ripple"
					style="background-color: transparent; border: none; font-size: 20px">예약하기</button>
			</form>
			<br>
			<!-- 조회하기 -->
			<c:choose>
				<c:when test="${sessionScope.adminId != null }">
					<form action="adminDate">
						<button class="button-base ripple"
							style="background-color: transparent; border: none; font-size: 20px">관리자
							조회</button>
					</form>
				</c:when>
				<c:otherwise>
					<form action="phone">
						<button class="button-base ripple"
							style="background-color: transparent; border: none; font-size: 20px">예약조회</button>
					</form>
				</c:otherwise>
			</c:choose>
			<br>
			<!-- 로그인하기 -->
			<div id="admin" style="font-size: small; text-align: center;">
				<c:choose>
					<c:when test="${sessionScope.adminId != null }">
						<form action="adminLogout" method="post">
							<button class="button-base ripple">관리자 로그아웃</button>
						</form>
					</c:when>
					<c:otherwise>
						<form action="adminLogin">
							<button class="button-base ripple">관리자 로그인</button>
						</form>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>


	<nav class="navbar navbar-dark bg-dark">
		<div class="container-fluid">
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse"
				data-bs-target="#navbarToggleExternalContent"
				aria-controls="navbarToggleExternalContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>
</body>
</html>