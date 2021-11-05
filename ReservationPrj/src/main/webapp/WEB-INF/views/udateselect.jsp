<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reservation.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css">
<head>
<meta charset="UTF-8">
<title>삼조식당 예약</title>

<!-- Favicon -->
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript"></script>

</head>
<body class="container">
    <div id="jb-container">
        <div id="jb-header"  style="text-align: center;">
            <h1>변경하실 날짜를 선택해주세요<br></h1>
            <div class="fade-in-box">
         	<form action="updateTimeselect" method="post">
         		<input type="hidden" name="targetNumber" value="${targetNumber}">
         		<input type="hidden" name="targetName" value="${targetName}">
           		<input type="hidden" name="targetPhone" value="${targetPhone}">
				<input type="hidden" name="targetCnt" value="${targetCnt}">
				<input type="hidden" name="targetDetails" value="${targetDetails}">
	        	<table class="type10">
	         	<tr>
	            	<td><label>날짜</label></td>
	            	<td><input type="text" name="updateDate" id="datePicker" autocomplete="off" required="required"></td>
	         	</tr>
	            </table><br>
               <input class ="button-base ripple" type="submit" value="선택">
            </form>
            </div>
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
         autoclose : true
      });

      $('#click-btn').on('click', function() {
         var date = $('#dateRangePicker').val();
         alert(date);
      });
   </script>
</body>
</html>