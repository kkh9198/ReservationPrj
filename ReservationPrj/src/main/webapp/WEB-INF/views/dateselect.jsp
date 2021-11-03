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
<title>삼조식당 예약</title>

</head>
<body class="container">
    <div id="jb-container">
        <div id="jb-header"  style="text-align: center;">
            <h1>예약 날짜를 선택해주세요<br></h1>
			<form action="timeselect" method="post">
            	<input type="date" name="revDate">
            	<input class ="button-base ripple" type="submit" value="선택">
            </form>
        </div>
        <br><br>
        <div id="jb-header"  style="text-align: center;">
        </div>
    </div>
</div>
</body>
</html>
