<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>error</title>
</head>

<body>
    <%
    // null을 숫자로 바꿀 수 없기 때문에 java.lang.NumberFormatException: null 에러가 남
    int a = Integer.parseInt(request.getParameter("num"));
    %>

    a : <%= a %>
</body>

</html>