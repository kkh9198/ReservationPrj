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
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>삼조식당 예약</title>

</head>

<body class="container">
    <div id="jb-container" >
        <div id="jb-header" style="text-align: center;">
            <h1>변경할 시간을 선택해주세요<br></h1>
        <div class="fade-in-box">
        <form action="reservation" method="post">
           <input type="hidden" name="revDate" value="${revDate}">
            <table class="type09">
                <th>날짜</th>
                <th>예약 타임</th>
                <th>현재 예약 인원</th>
                <th>예약하기</th>
                
                    <tr>
                        <td rowspan="5">${updateDate} </td>
                    </tr>
                    <tr>
                        <td>런치 1</td>
                        <c:set var="data" value="no"/>
                        <c:forEach var="rev" items="${revList}">
                           <c:choose>
                              <c:when test="${rev.bookingTime=='런치1'}" >
                                 <td>${rev.cnt}</td>
                                 <c:set var="data" value="yes"/>
                              </c:when>
                              <c:otherwise>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:if test="${data != 'yes'}">
                           <td>0</td>
                        </c:if>
                        <td><input class = "button-base ripple"  type="submit" name="time" value="런치1"></td>
                    </tr>
                    <tr>
                        <td>런치 2</td>
                        <c:set var="data" value="no"/>
                        <c:forEach var="rev" items="${revList}">
                           <c:choose>
                              <c:when test="${rev.bookingTime=='런치2'}">
                                 <td>${rev.cnt}</td>
                                 <c:set var="data" value="yes"/>
                              </c:when>
                              <c:otherwise>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:if test="${data != 'yes'}">
                           <td>0</td>
                        </c:if>                       
                        <td><input class = "button-base ripple"  type="submit" name="time" value="런치2"></td>
                    </tr>
                    <tr>
                        <td>디너 1</td>
                        <c:set var="data" value="no"/>
                        <c:forEach var="rev" items="${revList}">
                           <c:choose>
                              <c:when test="${rev.bookingTime=='디너1'}">
                                 <td>${rev.cnt}</td>
                                 <c:set var="data" value="yes"/>
                              </c:when>
                              <c:otherwise>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:if test="${data != 'yes'}">
                           <td>0</td>
                        </c:if>                       
                        <td><input class = "button-base ripple"  type="submit" name="time" value="디너1"></td>
                    </tr>
                    <tr>
                        <td>디너 2</td>
                        <c:set var="data" value="no"/>
                        <c:forEach var="rev" items="${revList}">
                           <c:choose>
                              <c:when test="${rev.bookingTime=='디너2'}">
                                 <td>${rev.cnt}</td>
                                 <c:set var="data" value="yes"/>
                              </c:when>
                              <c:otherwise>
                              </c:otherwise>
                           </c:choose>
                        </c:forEach>
                        <c:if test="${data != 'yes'}">
                           <td>0</td>
                        </c:if>                        
                        <td><input class = "button-base ripple"  type="submit" name="time" value="디너2"></td>
                    </tr>                    
            </table>
        </form>
        </div>
    </div>
</div>
</body>

</html>