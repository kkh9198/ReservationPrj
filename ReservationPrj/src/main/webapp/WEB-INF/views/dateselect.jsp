<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reservation.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.min.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker3.standalone.min.css">
<link href="css/reservation.css" rel="stylesheet">
</head>
<body class="container">
   <div id="jb-container" style="text-align: center;">
   		<jsp:include page="top.jsp" flush="false"/>
   </div>
        <div id="jb-header"  style="text-align: center;">
            <h1>예약 날짜를 선택해주세요<br></h1>
            <div class="fade-in-box">
         	<form action="timeselect" method="post">
	        	<table class="type10">
	         	<tr>
	            	<td><label>날짜</label></td>
	            	<td>
	            		<div>
	            			<input type="text" name="revDate" id="datePicker" autocomplete="off" required="required">
	            		</div>
	            		<div id="CalModal"></div>
	            	</td>
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
         autoclose : true,
         orientation: 'right'
      });

      $('#click-btn').on('click', function() {
         var date = $('#dateRangePicker').val();
         alert(date);
      });
   </script>
</body>
<br>
<footer>
	<div id="jb-container" style="text-align: center;">
   		<jsp:include page="footer.jsp" flush="false"/>
    </div>
</footer>
</html>