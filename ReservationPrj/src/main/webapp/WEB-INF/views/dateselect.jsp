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

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css">
<link href="css/reservation.css" rel="stylesheet">
</head>
<body>
	<div style="text-align: center;">
		<jsp:include page="top.jsp" flush="false" />
	</div>
	<div class="main-container main-img fade-in-box">
		<br>
		<h1 style="color: aliceblue;">예약 날짜를 선택해주세요</h1>
		<br>
		<form action="timeselect" method="post">
			<table class="type10">
				<tr>
					<td><h3 style="color: white;">날짜</h3></td>
					<td>
						<div>
							<input type="text" name="revDate" id="datePicker"
								autocomplete="off" required="required">
						</div>
						<div id="CalModal"></div>
					</td>
				</tr>
			</table>
			<br> <input class="button-base ripple" type="submit" value="선택">
		</form>
	</div>
	</div>

	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js">
   </script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.kr.min.js">
   </script>
	<script type="text/javascript">
	 
      $('#datePicker').datepicker({
         format : "yyyy-mm-dd", // 달력에서 클릭시 표시할 값 형식
         language : "kr", // 언어(js 추가가 필요하다.)
         todayHighlight : true,
         startDate : 'd',
         autoclose : true,
         orientation: 'right'
      });

      $('#click-btn').on('click', function() {
         var date = $('#dateRangePicker').val();
         alert(date);
      });
   </script>
</body>
<footer>
	<div id="jb-container" style="text-align: center;">
		<jsp:include page="footer.jsp" flush="false" />
	</div>
</footer>
</html>