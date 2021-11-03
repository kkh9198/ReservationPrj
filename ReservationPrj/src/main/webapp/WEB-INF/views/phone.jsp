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

</head>
<body class="backGround">
<form action="inform" method="post">
            	
            	
            
    <div id="jb-container" style="align-content: center;">
        <div id="jb-header"  style="text-align: center;">
            핸드폰 번호를 입력해주세요<br>
            <p>
                <input type="text" name = "phone">
				<input class ="button-base ripple" type="submit" value="확인">
        </div>


    </div>

</form>

</body>
</html>
