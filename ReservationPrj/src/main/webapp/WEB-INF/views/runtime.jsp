<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 에러</title>
</head>
<body>
<h1>에러페이지</h1>
<p>애플리케이션에 오류가 발생했습니다. 담당자에게 문의하세요.</p>
<form action="updateComplete" method="post">
	<button>돌아가기</button>
</form>
<!-- 
	Failed URL: ${url}
	Exception: ${exception.message}
	<c:forEach items="${exception.stackTrace}" var="ste"> ${ste}
	</c:forEach>
 -->
</body>
</html>