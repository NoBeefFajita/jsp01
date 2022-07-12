<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>pageDirective</title>
</head>

<body>
	<%-- 서블릿의 정보출력 --%>
	<%= getServletInfo() %> <br>
	<%-- 개발경로가 아닌 서비스 경로(배포 경로) --%>
	<%= application.getRealPath("/") %>
</body>
</html>