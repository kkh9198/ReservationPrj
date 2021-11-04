<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
<h1>예약정보 삭제</h1>
${rev.name}고객님의 ${rev.serialNumber}번 예약의 정보를 삭제합니다.<p>
삭제후 데이터는 복구될 수 없습니다.<p>
${rev.name}고객님의 핸드폰번호를 입력하세요.
<form action="./delete" method="post">
핸드폰번호 : <input type="text" name="phone">
<input type="hidden" name="number" value="${rev.serialNumber}">
<input type="submit" value="삭제">
</form>
</body>
</html>