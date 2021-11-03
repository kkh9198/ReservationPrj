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
</head>

<body class="container">

    <div id="jb-container" style="align-content: center;">
        <div id="jb-header"  style="text-align: center;">      

      	    <h1>상세 정보를 입력해주세요</h1><p>
      	    <div class="fade-in-box">
            <form action="complete" method="post">
            <table class="type10">
                <tr>
                    <td>예약일 : </td>
                    <td><input type="date" name="bookingDate" value="${revDate}" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>예약시간 : </td>
                    <td><input type="text" name="bookingTime" value="${revTime}" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>예약자명 : </td>
                    <td><input type="text" name="name"></td>
                </tr>
                <tr>
                    <td>연락처 : </td>
                    <td><input type="text" name="phone"></td>
                </tr>
                <tr>
                    <td>예약 인원 : </td>
                    <td><input type="number" name="cnt"></td>
                </tr>
                <tr>
                    <td>요청 사항 : </td>
                    <td><input type="text" name="details"></td>
                </tr>
            </table><br>
            <button type="submit" class="button-base ripple"> 예약하기 </button>
	        <button type='button' id="modal_btn">모달창아 나와랏</button>
				<div class="black_bg"></div>
				<div class="modal_wrap">
	   				<div class="modal_close"><a href="#">close</a></div>
				    <div>
				    	${revDate}
				    	<input type="text" id="rerid">
				    	${name}
				    </div>
	            </div>
            </form>
        </div>
    </div>
    </div>
    <script>
    window.onload = function() {
 
    function onClick() {
        document.querySelector('.modal_wrap').style.display ='block';
        document.querySelector('.black_bg').style.display ='block';
        
        	function transferData(name){
        		$('#rerid').val(name)
        	}
    }   
    
    function offClick() {
        document.querySelector('.modal_wrap').style.display ='none';
        document.querySelector('.black_bg').style.display ='none';
    }
 
    document.getElementById('modal_btn').addEventListener('click', onClick);
    document.querySelector('.modal_close').addEventListener('click', offClick);
 
	};
	</script>


</body>
</html>