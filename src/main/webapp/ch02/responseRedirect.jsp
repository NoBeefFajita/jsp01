<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>reponseRedirect</title>
</head>

<body>
    <%
    request.setAttribute("name", "김철수"); //value는 Object;
    String name = URLEncoder.encode("김철수", "utf-8");

    // reponse 응답객체
    // 1) forward
    // 2) redirect : 주소도 변경되고, 화면변경, 간단한 파라미터 스트링값만 전달가능
    
    response.sendRedirect("responseRedirected.jsp?name="+name+"&age=20");
    %>
</body>

</html>