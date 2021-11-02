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
    <div id="jb-container">
        <div id="jb-header"  style="text-align: center;">
            예약 시간을 선택해주세요<br>
            <form action="reservation" method="post"></form>
            <table border="1" align="center">
                <th>날짜</th>
                <th>예약 타임</th>
                <th>현재 예약 인원</th>
                <th>예약하기</th>
                    <tr>
                        <td rowspan="5">${revDate} </td>
                    </tr>
                    <tr>
                        <td>런치 1</td>
                        <td>$</td>
                        <td><input type="submit" name="revBtn" value="런치1"></td>
                    </tr>
                    <tr>
                        <td>런치 2</td>
                        <td>$</td>
                        <td><input type="submit" name="revBtn" value="런치2"></td>
                    </tr>
                    <tr>
                        <td>디너 1</td>
                        <td>$</td>
                        <td><input type="submit" name="revBtn" value="디너1"></td>
                    </tr>
                    <tr>
                        <td>디너 2</td>
                        <td>$</td>
                        <td><input type="submit" name="revBtn" value="디너2"></td>
                    </tr>
                    
            </table>
        </form>

        </div>


    </div>

</div>

</body>
</html>
