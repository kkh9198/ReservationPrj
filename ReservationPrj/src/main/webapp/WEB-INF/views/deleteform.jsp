<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<!-- Import bootstrap cdn -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
<link href="css/reservation.css" rel="stylesheet">
<meta charset="UTF-8">

</head>
<body class="container">
	<div id="jb-container" style="align-content: center;">
		<div id="jb-header" style="text-align: center;">
			<h1>예약정보 삭제</h1>
			${rev.name} 고객님의 ${rev.serialNumber}번 예약의 정보를 취소합니다.
			<p>취소를 원하시면 고객님의 핸드폰번호를 입력하세요.
			<form action="./delete" method="post">
				핸드폰번호 : <input type="text" name="phone" value=${rev.phone}>
				<input type="hidden" name="number" value="${rev.serialNumber}">
				<input type="submit" class="btn btn-success btn-sm" value="삭제">
			</form>
		</div>
	</div>
</body>
</html>