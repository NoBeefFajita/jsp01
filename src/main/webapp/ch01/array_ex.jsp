<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>array_ex</title>
</head>

<body>
    <%
    String[] str = {"jsp", "java", "html", "javascript"};
    %>
    <ul>
    <%
    for(String s : str) { %>
        <li><%=s%></li>
    <%
    }
    %>

</body>

</html>