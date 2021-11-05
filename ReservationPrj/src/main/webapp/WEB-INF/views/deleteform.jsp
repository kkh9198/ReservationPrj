<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
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
<body class="container">
	<div id="jb-container" style="align-content: center;">
		<div id="jb-header" style="text-align: center;">
			<h1>예약정보 삭제</h1>
			${rev.name} 고객님의 ${rev.serialNumber}번 예약의 정보를 취소합니다.
			<p>취소를 원하시면 고객님의 핸드폰번호를 입력하세요.
			<form action="deleteresult" method="post">
				<input type="hidden" name = "revPhone" value="${rev.phone}">
				핸드폰번호 : <input type="text" name="phone" value="${rev.phone}">
				<input type="hidden" name="number" value="${rev.serialNumber}">
				<input type="submit" class="btn btn-success btn-sm" value="삭제">
			</form>
			<form action="inform" method="post">
				<input type="hidden" name = "revPhone" value="${rev.phone}">
				<input type="submit" class="btn btn-success btn-sm" value="목록으로 돌아가기">
			</form>
			
		</div>
	</div>
	<script type="text/javascript">
		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>
</body>
</html>