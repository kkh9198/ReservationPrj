<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<link href="css/reservation.css" rel="stylesheet">
<head>
<meta charset="UTF-8">
<title>삼조식당 예약</title>
<!-- Favicon -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript"></script>

</head>
<body>
	<form action="adminOK" method="post">
		<div id="jb-container" style="text-align: center;">
   			<jsp:include page="top.jsp" flush="false"/>
   		</div>
			<div id="jb-header" style="text-align: center;">
				관리자 로그인 페이지입니다.<br>
				<p>
					<c:if test="${fail == 'fail'}">
               로그인실패입니다.<br>
               다시 아이디와 비밀번호를 입력하세요<br>
					</c:if>
					아이디: <input type="text" name="adminId"><br> 비밀번호 : <input
						type="password" name="adminPw"> <br> <br> <input
						class="button-base ripple" type="submit" value="확인">
			</form>
			<form action="main">
				<input class="button-base ripple" type="submit" value="취소">
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
