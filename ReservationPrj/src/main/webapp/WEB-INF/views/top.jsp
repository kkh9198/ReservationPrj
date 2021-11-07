<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>top</title>
<link href="css/reservation.css" rel="stylesheet">
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript"></script>

<!-- Import jquery cdn -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous">
    </script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous">
    </script>
<link href="css/reservation.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>
<body>
<p>
	<div class="top-head">
		<div class="box-left">
			<!-- sidebar -->
			<input type="checkbox" id="menuicon";> <label for="menuicon">
				<span></span> <span></span> <span></span>
			</label>
			<div class="sidebar">
				<div style="margin-top: 100px";>
					<!-- 예약하기 -->
					<form action="dateselect">
						<button class="btn btn-primary btn-sm">예약하기</button>
						<br>
					</form>
					<br>
				
					<!-- 조회하기 -->
					<c:choose>
						<c:when test="${sessionScope.adminId != null }">
							<form action="adminDate">
								<button class="btn btn-primary btn-sm">관리자 조회</button>
							</form>
						</c:when>
						<c:otherwise>
							<form action="phone">
								<button class="btn btn-primary btn-sm">예약 조회</button>
							</form>
						</c:otherwise>
					</c:choose>
					<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
					
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
			<div class="sidebar2">
			</div>
		</div>
		<div class="box-center"><h2 style="text-align: center;">삼조식당</h2></div>
		<div class="box-right">
			<a href="main"><i class="fas fa-home fa-2x"></i></a>
		</div>
	</div>
	<br>
</body>
</html>