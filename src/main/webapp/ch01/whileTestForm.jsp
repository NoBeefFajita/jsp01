<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- request.getContextPath() : 컨텍스트 패스(프로젝트 이름) 가져옴 -->
<form action="<%= request.getContextPath() %>/ch01_servlet/while.do">
	곱해질 값 : <input name="number"> <br>
	곱해질 횟수 : <input name="num"> <br>
	<button>확인</button>
</form>

</body>
</html>