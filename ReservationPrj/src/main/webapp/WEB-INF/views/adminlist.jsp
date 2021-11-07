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
		<h1 style="color: aliceblue;">${revDate}의
			예약 목록입니다.<br>
		</h1>
		<h1 style="color: silver;">
			조회 할 예약 시간을 선택해주세요<br>
		</h1>
		<div class="fade-in-box">
			<table class="type09">
				<th>날짜</th>
				<th>예약 타임</th>
				<th>현재 예약 인원</th>
				<th>조회하기</th>
				<tr>
					<td rowspan="5">${revDate}</td>
				</tr>
				<tr>
					<form action="detail" method="post">
						<td>런치 1</td>
						<c:set var="data" value="no" />
						<c:forEach var="rev" items="${revList}">
							<c:choose>
								<c:when test="${rev.bookingTime=='런치1'}">
									<td>${rev.cnt}</td>
									<input type="hidden" name="cnt" value="${rev.cnt}">
									<input type="hidden" name="revDate" value="${revDate}">
									<c:set var="data" value="yes" />
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${data != 'yes'}">
							<td>0</td>
							<input type="hidden" name="cnt" value="0">
							<input type="hidden" name="revDate" value="${revDate}">
						</c:if>
						<td><input class="button-base ripple" type="submit"
							name="time" value="런치1"></td>
					</form>
				</tr>

				<tr>
					<form action="detail" method="post">
						<td>런치 2</td>
						<c:set var="data" value="no" />
						<c:forEach var="rev" items="${revList}">
							<c:choose>
								<c:when test="${rev.bookingTime=='런치2'}">
									<td>${rev.cnt}</td>
									<input type="hidden" name="cnt" value="${rev.cnt}">
									<input type="hidden" name="revDate" value="${revDate}">
									<c:set var="data" value="yes" />
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${data != 'yes'}">
							<td>0</td>
							<input type="hidden" name="cnt" value="0">
							<input type="hidden" name="revDate" value="${revDate}">
						</c:if>
						<td><input class="button-base ripple" type="submit"
							name="time" value="런치2"></td>
					</form>
				</tr>

				<tr>
					<form action="detail" method="post">
						<td>디너 1</td>
						<c:set var="data" value="no" />
						<c:forEach var="rev" items="${revList}">
							<c:choose>
								<c:when test="${rev.bookingTime=='디너1'}">
									<td>${rev.cnt}</td>
									<input type="hidden" name="cnt" value="${rev.cnt}">
									<input type="hidden" name="revDate" value="${revDate}">
									<c:set var="data" value="yes" />
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${data != 'yes'}">
							<td>0</td>
							<input type="hidden" name="cnt" value="0">
							<input type="hidden" name="revDate" value="${revDate}">
						</c:if>
						<td><input class="button-base ripple" type="submit"
							name="time" value="디너1"></td>
					</form>
				</tr>
				<tr>
					<form action="detail" method="post">
						<td>디너 2</td>
						<c:set var="data" value="no" />
						<c:forEach var="rev" items="${revList}">
							<c:choose>
								<c:when test="${rev.bookingTime=='디너2'}">
									<td>${rev.cnt}</td>
									<input type="hidden" name="cnt" value="${rev.cnt}">
									<input type="hidden" name="revDate" value="${revDate}">
									<c:set var="data" value="yes" />
								</c:when>
								<c:otherwise>
								</c:otherwise>
							</c:choose>
						</c:forEach>
						<c:if test="${data != 'yes'}">
							<td>0</td>
							<input type="hidden" name="cnt" value="0">
							<input type="hidden" name="revDate" value="${revDate}">
						</c:if>
						<td><input class="button-base ripple" type="submit"
							name="time" value="디너2"></td>
					</form>
				</tr>
			</table>
		</div>
	</div>
</body>
<footer>
	<div id="jb-container" style="text-align: center;">
		<jsp:include page="footer.jsp" flush="false" />
	</div>
</footer>
</html>