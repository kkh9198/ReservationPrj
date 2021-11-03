<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reservation.css">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>삼조식당 예약</title>

</head>
<body class="container">
    <div id="jb-container">
        <div id="jb-header"  style="text-align: center;">
            <h1>안녕하세요<p>삼조식당 예약 시스템입니다.</p></h1>
            <form action="dateselect">
            <button class = "button-base ripple" >
                	예약하기
            </button><br>
            </form>
            
            <p>
            <form action="phone">
            <button class ="button-base ripple">
                	조회하기
            </button>
            </form>
        </div>
        <div id="admin" style="font-size: small; text-align: right;" > 관리자 로그인 </div>
    </div>
</body>
<footer>

</footer>
</html>

