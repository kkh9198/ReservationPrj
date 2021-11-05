<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link href="css/reservation.css" rel="stylesheet">
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
	<form action="adminOK" method="post">
    <div id="jb-container" style="align-content: center;">
        <div id="jb-header"  style="text-align: center;">
			<h1>관리자 로그인 페이지입니다.</h1>
            <p>
            <c:if test="${fail == 'fail'}">
            	로그인실패입니다. 다시 아이디와 비밀번호를 입력하세요<br>
            </c:if>
			아이디: <input type="text" name="adminId"><br>
			비밀번호 : <input type="password" name="adminPw"> <br><br>
			<input class ="button-base ripple" type="submit" value="확인"> <input class ="button-base ripple" type="reset" value="취소">
        </div>
    </div>
    </form>
    
</body>
</html>
