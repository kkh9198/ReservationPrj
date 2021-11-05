<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css"
   href="${pageContext.request.contextPath}/resources/css/reservation.css">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, intial-scale=1.0">
<title>삼조식당 예약</title>

</head>
<body class="container">
   <div id="jb-container">
      <div id="jb-header" style="text-align: center;">
         <h1>
            <c:choose>
               <c:when test="${sessionScope.adminId != null }">
                  관리자로 로그인 하였습니다.
               </c:when>
               <c:otherwise>
                  안녕하세요
               </c:otherwise>
            </c:choose>
            <p>삼조식당 예약 시스템입니다.</p>
         </h1>
         <form action="dateselect">
            <button class="button-base ripple">예약하기</button>
            <br>
         </form>

         <p>
            <c:choose>
               <c:when test="${sessionScope.adminId != null }">
                  <form action="adminDate">
                     <button class="button-base ripple">관리자 조회</button>
                  </form>
               </c:when>
               <c:otherwise>
                  <form action="phone">
                     <button class="button-base ripple">예약 조회</button>
                  </form>
               </c:otherwise>
            </c:choose>
      </div>
      <p>
      <p>
      <div id="admin" style="font-size: small; text-align: center;">

         <c:choose>
            <c:when test="${sessionScope.adminId != null }">
               <form action="adminLogout">
                  <button>관리자 로그아웃</button>
               </form>
            </c:when>
            <c:otherwise>
               <form action="adminLogin">
                  <button>관리자 로그인</button>
               </form>
            </c:otherwise>
         </c:choose>

      </div>
   </div>
</body>
<footer> </footer>
</html>