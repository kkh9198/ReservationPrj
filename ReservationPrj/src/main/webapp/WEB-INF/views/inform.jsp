<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="/css/reservation.css">
<head>
<script type="text/javascript"></script>
<meta charset="UTF-8">
<title>삼조식당 예약</title>

</head>
<body class="container">
	<div id="jb-container" style="align-content: center;">
		<div id="jb-header" style="text-align: center;">
		
			<h1>${revList[0].name}님의예약 정보입니다.</h1>
			<br>
			<form action="update" method="post">
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
						<td><button type="submit">수정</button></td>
				
						<td><button><a href="delete?number=${rev.serialNumber}">삭제</a></button></td>


					</tr>
				<input type="hidden" name="targetNumber" value="${rev.serialNumber}">
				<input type="hidden" name="targetName" value="${rev.name}">
				<input type="hidden" name="targetPhone" value="${rev.phone}">
				<input type="hidden" name="targetCnt" value="${rev.cnt}">
				<input type="hidden" name="targetDetails" value="${rev.details}">
				</c:forEach>
			</table>
			</form>
		</div>
	</div>
	<script>
		function submit2(frm){
			frm.action = 'delete';
			frm.submit();
			return true;
		}
	</script>
</body>
</html>