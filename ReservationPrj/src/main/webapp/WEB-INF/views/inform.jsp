<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/css/reservation.css">
<head>
<meta charset="UTF-8">
<title>삼조식당 예약</title>
<!-- Favicon -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript"></script>

<!-- Import bootstrap cdn -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">

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
</head>
<body>
	<div id="jb-container" style="text-align: center;">
   		<jsp:include page="top.jsp" flush="false"/>
    </div>
		<div id="jb-header" style="text-align: center;">
		
			<h1>${revList[0].name}님의예약 정보입니다.</h1>
			<br>
			
			<table class="type09">
				<tr>
					<th>예약번호</th>
					<th>이름</th>
					<th>핸드폰번호</th>
					<th>예약일</th>
					<th>예약시간</th>
					<th>예약인원</th>
					<th>전달사항</th>
					<th>예약 변경</th>
					<th>예약 취소</th>
				</tr>
				<c:forEach var="rev" items="${revList}">
					
					<tr>
						<td>${rev.serialNumber}</td>
						<td>${rev.name}</td>
						<td>${rev.phone}</td>
						<td>${rev.bookingDate}</td>
						<td>${rev.bookingTime}</td>
						<td>${rev.cnt}</td>
						<td>${rev.details}</td>
						<form action="update" method="post">
							<c:choose>
							<c:when test="${today > rev.bookingDate}">
								<td><button class="btn btn-primary btn-sm" type="submit" disabled="disabled">수정</button></td>
							</c:when>
							<c:otherwise>
								<input type="hidden" name="targetNumber" value="${rev.serialNumber}">
								<td><button class="btn btn-primary btn-sm" type="submit">수정</button></td>
							</c:otherwise>									
							</c:choose>
						</form>
						<form action="delete" method="post">
							<c:choose>
							<c:when test="${today > rev.bookingDate}">
								<td><button class="btn btn-primary btn-sm" type="submit" disabled="disabled">삭제</button></td>	
							</c:when>
							<c:otherwise>
								<input type="hidden" name="number" value="${rev.serialNumber}">
								<input type="hidden" name="targetPhone" value="${rev.phone}">
								<td><button class="btn btn-primary btn-sm" type="submit">삭제</button></td>							
							</c:otherwise>
							</c:choose>
						</form>
				</c:forEach>
					</tr>
			</table>
			<p>
				<form action="main">
					<button class="btn btn-primary btn-sm">홈으로</button>
				</form>
		</div>

</body>
<br>
<footer>
	<div id="jb-container" style="text-align: center;">
   		<jsp:include page="footer.jsp" flush="false"/>
    </div>
</footer>
</html>