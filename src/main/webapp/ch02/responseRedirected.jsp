<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>responseRedirected</title>
</head>

<body>
    <%
    String name = request.getParameter("name");
    String age = request.getParameter("age");
    %>
    이름 : <%= name %> <br>
    나이 : <%= age %> <br>
    <hr>
    <%-- EL --%>
    이름 : ${ param.name } <br>
    나이 : ${ param.age } <br>

</body>

</html>