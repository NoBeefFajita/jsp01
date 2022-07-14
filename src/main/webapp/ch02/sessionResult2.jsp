<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>sessionResult</title>
</head>

<body>

    [session으로 넘어온 데이터] <br>
    이름 : <%= session.getAttribute("name") %> <br>
    나이 : <%= session.getAttribute("age") %> <br>
    세션 아이디 : <%= session.getId() %> <br>
    <hr>
    [request로 넘어온 데이터] <br>
    이름 : <%= (String)request.getAttribute("name") %> <br>
    나이 : <%= (String)request.getAttribute("age") %> <br>
</body>

</html>