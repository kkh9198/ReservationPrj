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
    <div class="main-container fade-in-box">
		<h1>예약이 완료되었습니다.</h1>
		<div>
			<form action="main">
			<button class="btn btn-primary btn-sm">홈으로</button>
			</form>
		</div>
	</div>
	<script>
	function noEvent() { // 새로 고침 방지
        if (event.keyCode == 116) {
            alert("새로고침을 할 수 없습니다.");
            event.keyCode = 2;
            return false;
        } else if (event.ctrlKey
                && (event.keyCode == 78 || event.keyCode == 82)) {
            return false;
        }
    }
		document.onkeydown = noEvent;
	</script>
</body>
<footer>
	<div id="jb-container" style="text-align: center;">
   		<jsp:include page="footer.jsp" flush="false"/>
    </div>
</footer>
</html>