<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>queryStringRequestResult</title>
</head>

<body>
    학번 : <%= request.getParameter("no") %>
        이름 : <%= request.getParameter("name") %>
</body>
</html>