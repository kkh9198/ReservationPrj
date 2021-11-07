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
		<h1 style="color: aliceblue;">${revList[0].bookingDate}/
			${revList[0].bookingTime} 의 상세 정보입니다.</h1>
		<div class="fade-in-box">
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
								<c:when test="${today > rev.bookingDate }">
									<td><button class="btn btn-primary btn-sm" type="submit"
											disabled>수정</button></td>
								</c:when>
								<c:otherwise>
									<td><button class="btn btn-primary btn-sm" type="submit">수정</button></td>
									<input type="hidden" name="targetNumber"
										value="${rev.serialNumber}">
								</c:otherwise>
							</c:choose>
						</form>
						<form action="delete" method="post">
							<c:choose>
								<c:when test="${today > rev.bookingDate }">
									<td><button class="btn btn-primary btn-sm" type="submit"
											disabled="disabled">삭제</button></td>
								</c:when>
								<c:otherwise>
									<td><button class="btn btn-primary btn-sm" type="submit">삭제</button></td>
									<input type="hidden" name="number" value="${rev.serialNumber}">
									<input type="hidden" name="targetPhone" value="${rev.phone}">
								</c:otherwise>
							</c:choose>

						</form>
				</c:forEach>
				</tr>

			</table>
		</div>
		<p>
		<form action="main">
			<button class="btn btn-primary btn-sm">홈으로</button>
		</form>
	</div>
</body>
<footer>
	<div id="jb-container" style="text-align: center;">
		<jsp:include page="footer.jsp" flush="false" />
	</div>
</footer>
</html>