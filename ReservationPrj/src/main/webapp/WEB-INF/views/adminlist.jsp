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
<link href="css/reservation.css" rel="stylesheet">
</head>

<body>
    <div id="jb-container" style="text-align: center;">
   		<jsp:include page="top.jsp" flush="false"/>
    </div>
<hr>    
        <div class="main-container">
            <h1>${revDate}의 예약 목록입니다.<br></h1>
            <h1>조회 할 예약 시간을 선택해주세요<br></h1>
        <div class="fade-in-box">
<table class="type09">
				<th>날짜</th>
                <th>예약 타임</th>
                <th>현재 예약 인원</th>
                <th>조회하기</th>
					<tr>
						<td rowspan="5">${revDate} </td>
                    </tr>
                    <tr>
                    	<form action="detail" method="post">
                        	<td>런치 1</td>
                        	<c:set var="data" value="no"/>
                        	<c:forEach var="rev" items="${revList}">
                           		<c:choose>
                              	<c:when test="${rev.bookingTime=='런치1'}" >
                                	<td>${rev.cnt}</td>
                                 	<input type="hidden" name="cnt" value="${rev.cnt}">
                                 	<input type="hidden" name="revDate" value="${revDate}">
                                 	<c:set var="data" value="yes"/>
                              	</c:when>
                              	<c:otherwise>
                              	</c:otherwise>
                           		</c:choose>
                        	</c:forEach>
                        	<c:if test="${data != 'yes'}">
                           		<td>0</td>
                           		<input type="hidden" name="cnt" value="0">
                                <input type="hidden" name="revDate" value="${revDate}">
                        	</c:if>
                        	<td>
                        		<input class = "button-base ripple"  type="submit" name="time" value="런치1">
                        	</td>
                        </form>
                    </tr>
                    
                    <tr>
                    	<form action="detail" method="post">
                        <td>런치 2</td>
                        <c:set var="data" value="no"/>
                        <c:forEach var="rev" items="${revList}">
                           <c:choose>
                              <c:when test="${rev.bookingTime=='런치2'}">
                                 <td>${rev.cnt}</td>
                                 <input type="hidden" name="cnt" value="${rev.cnt}">
                                 <input type="hidden" name="revDate" value="${revDate}">
                                 <c:set var="data" value="yes"/>
                              </c:when>
                              <c:otherwise>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:if test="${data != 'yes'}">
                           <td>0</td>
							<input type="hidden" name="cnt" value="0">
							<input type="hidden" name="revDate" value="${revDate}">
                        </c:if>                       
                        <td>
                        	<input class = "button-base ripple"  type="submit" name="time" value="런치2">
                    	</td>
                    	</form>	
                    </tr>
                    
                    <tr>
                    	<form action="detail" method="post">
                        <td>디너 1</td>
                        <c:set var="data" value="no"/>
                        <c:forEach var="rev" items="${revList}">
                           <c:choose>
                              <c:when test="${rev.bookingTime=='디너1'}">
                                 <td>${rev.cnt}</td>
                                 <input type="hidden" name="cnt" value="${rev.cnt}">
                                 <input type="hidden" name="revDate" value="${revDate}">
                                 <c:set var="data" value="yes"/>
                              </c:when>
                              <c:otherwise>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:if test="${data != 'yes'}">
                           <td>0</td>
                           <input type="hidden" name="cnt" value="0">
							<input type="hidden" name="revDate" value="${revDate}">
                        </c:if>                       
                        <td>
                        	<input class = "button-base ripple"  type="submit" name="time" value="디너1">
                        	
                        </td>
                        </form>
                    </tr>
                    <tr>
                    	<form action="detail" method="post">
                        <td>디너 2</td>
                        <c:set var="data" value="no"/>
                        <c:forEach var="rev" items="${revList}">
                           <c:choose>
                              <c:when test="${rev.bookingTime=='디너2'}">
                                 <td>${rev.cnt}</td>
                                 <input type="hidden" name="cnt" value="${rev.cnt}">
                                 <input type="hidden" name="revDate" value="${revDate}">								
                                 <c:set var="data" value="yes"/>
                              </c:when>
                              <c:otherwise>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:if test="${data != 'yes'}">
                           <td>0</td>
                           <input type="hidden" name="cnt" value="0">
							<input type="hidden" name="revDate" value="${revDate}">
                        </c:if>                        
                        <td>
                        	<input class = "button-base ripple"  type="submit" name="time" value="디너2">
                        </td>
                        </form>
                    </tr>                    
            </table>			
        </div>
    </div>
</body>
<footer>
	<div id="jb-container" style="text-align: center;">
   		<jsp:include page="footer.jsp" flush="false"/>
    </div>
</footer>
</html>