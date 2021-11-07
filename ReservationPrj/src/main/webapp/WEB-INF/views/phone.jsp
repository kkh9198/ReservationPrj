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
	<div style="text-align: center;">
		<jsp:include page="top.jsp" flush="false" />
	</div>
	<div class="main-container main-img fade-in-box">
		<h1 style="color: aliceblue;">핸드폰 번호를 입력해주세요</h1>
		<br>
		<div class="fade-in-box">
			<form action="inform" method="post">
				<input type="text" name="revPhone" placeholder="-을 제외하고 입력하세요">
				<input class="btn btn-primary btn-sm" type="submit" value="확인">
			</form>
		</div>
	</div>
</body>
<footer>
	<div id="jb-container" style="text-align: center;">
		<jsp:include page="footer.jsp" flush="false" />
	</div>
</footer>
</html>
