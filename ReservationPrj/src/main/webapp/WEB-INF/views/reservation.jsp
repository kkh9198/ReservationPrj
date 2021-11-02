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
    </div>
    <div id="jb-container" style="align-content: center;">
        <div id="jb-header"  style="text-align: center;">
		예약일 : ${revDate}<br>
      	예약시간 : ${revTime}시<br>      
		상세 정보를 입력해주세요<br>
            <p>
            <form action="" class = "form">
                <div>
                <label>예약자명</label> : <input type="text" name="name"><br>
                </div>
                <div>
                <label>핸드폰 번호</label> : <input type="text" name="phone"><p>
                </div>
                <div>
                <label>인원 :</label> <input type="number" name="cnt"><p>
                </div>
                <div>
                <label>특이 사항</label> : <textarea rows="5" cols="100"></textarea>
                </div>
                <button type="submit" class="button-base ripple"> 예약하기 </button>
            </form>
            

            
        </div>


    </div>

</div>

</body>
</html>
