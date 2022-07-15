<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title></title>
</head>

<body>
    <h2>저는</h2>
    <h3><%= request.getParameter("pVar") %>입니다.</h3>
    <h3><%= request.getParameter("nVar") %>님 환영합니다.</h3>
</body>
</html>