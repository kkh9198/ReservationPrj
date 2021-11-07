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
		<jsp:include page="top.jsp" flush="false" />
	</div>
	<div class="main-container main-img fade-in-box">
		<h1 style="color: aliceblue;">상세 정보를 입력해주세요</h1>
		<p>
		<div class="fade-in-box">
			<form action="updateComplete" method="post">
				<input type="hidden" name="targetNumber" value="${targetNumber}">
				<table class="type10">
					<tr>
						<td>예약일 :</td>
						<td><input type="date" name="bookingDate"
							value="${updateDate}" readonly="readonly" id="date"></td>
					</tr>
					<tr>
						<td>예약시간 :</td>
						<td><input type="text" name="bookingTime"
							value="${updateTime}" readonly="readonly" id="time"></td>
					</tr>
					<tr>
						<td>예약자명 :</td>
						<td><input type="text" name="name" value="${prevRev.name}"
							id="name" required="required"></td>
					</tr>
					<tr>
						<td>연락처 :</td>
						<td><input type="text" name="phone" value="${prevRev.phone}"
							pattern="^[0-9]+$" id="phone" required="required"></td>
					</tr>
					<tr>
						<td>예약 인원 :</td>
						<td><input type="number" name="cnt" value="${prevRev.cnt}"
							min="1" max="${10-cnt}" id="cnt" required="required"></td>
					</tr>
					<tr>
						<td>요청 사항 :</td>
						<td><input type="text" name="details"
							value="${prevRev.details}" id="details"></td>
					</tr>
				</table>
				<br>
				<!-- Button to invoke the modal -->
				<button type="button" class="btn btn-primary btn-sm"
					data-toggle="modal" data-target="#exampleModal" id="submit">
					예약하기</button>
				<!-- Modal -->
				<div class="modal fade" id="exampleModal" tabindex="-1"
					aria-labelledby="exampleModalLabel" aria-hidden="true">

					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<h5 class="modal-title" id="exampleModalLabel">상세 정보 확인</h5>

								<button type="button" class="close" data-dismiss="modal"
									aria-label="Close">
									<span aria-hidden="true"> × </span>
								</button>
							</div>

							<div class="modal-body">

								<!-- Data passed is displayed 
                            in this part of the 
                            modal body -->
								<h5 id="modal_body"></h5>
								<h6 id="modal_body1"></h6>
								<h6 id="modal_body2"></h6>
								<h6 id="modal_body3"></h6>
								<h6 id="modal_body4"></h6>
								<h6 id="modal_body5"></h6>
								<h6 id="modal_body6"></h6>
								<p>

									<input type="submit" class="btn btn-success btn-sm"
										data-toggle="modal" data-target="#exampleModal" id="submit">
							</div>
						</div>
					</div>
				</div>
			</form>
		</div>
	</div>

	<script>
		$("#submit").click(function() {
			var name = $("#name").val();
			var phone = $("#phone").val();
			var cnt = $("#cnt").val();
			var date = "${updateDate}";
			var time = "${updateTime}";
			var details = $("#details").val();
			var str = "예약 정보를 확인해주세요";
			var str1 = "성함: " + name;
			var str2 = "연락처: " + phone;
			var str3 = "총: " + cnt + "명";
			var str4 = "예약일: " + date;
			var str5 = "예약타임: " + time;
			var str6 = "요청사항: " + details;
			$("#modal_body").html(str);
			$("#modal_body1").html(str1);
			$("#modal_body2").html(str2);
			$("#modal_body3").html(str3);
			$("#modal_body4").html(str4);
			$("#modal_body5").html(str5);
			$("#modal_body6").html(str6);
		});
	</script>

	<script type="text/javascript">
		window.history.forward();
		function noBack() {
			window.history.forward();
		}
	</script>

</body>
<footer>
	<div id="jb-container" style="text-align: center;">
		<jsp:include page="footer.jsp" flush="false" />
	</div>
</footer>
</html>