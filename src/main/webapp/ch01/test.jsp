<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>test</title>
</head>

<body>
    <% 
    String str = "hello jsp";
    out.println(str + "<br>");
    //application : 서버의 정보를 처리하는 내장된 객체
    //jsp의 실제 서비스 경로
    out.println(application.getRealPath("/"));
     %>
</body>
</html>