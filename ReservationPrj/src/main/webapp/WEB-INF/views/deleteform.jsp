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
   		<jsp:include page="top.jsp" flush="false"/>
    </div>
<hr>    
	<div class="main-container">
		<h1>예약정보 삭제</h1>
		${rev.name} 고객님의 ${rev.serialNumber}번 예약의 정보를 취소합니다.
		<p>취소를 원하시면 고객님의 핸드폰번호를 입력하세요.
		<form action="deleteresult" method="post">
		<div class="fade-in-box">
			핸드폰번호 : <input type="text" name="phone">
			<input type="hidden" name="revPhone" value="${rev.phone}">
			<input type="hidden" name="number" value="${rev.serialNumber}">
			<input type="submit" class="btn btn-success btn-sm" value="삭제">
		</div>	
		</form>
		<p>
		<form action="inform" method="post">
		<div class="fade-in-box">
			<input type="hidden" name = "revPhone" value="${rev.phone}">
			<input type="submit" class="btn btn-success btn-sm" value="목록으로 돌아가기">
		</div>	
		</form>
		
	</div>

	<script type="text/javascript">
		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>
</body>
<footer>
	<div id="jb-container" style="text-align: center;">
   		<jsp:include page="footer.jsp" flush="false"/>
    </div>
</footer>
</html>