<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>forwardFrom</title>
</head>

<body>

    <% 
    request.setAttribute("id","kim");
    request.setAttribute("name","김철수");
     %>

     <jsp:forward page="forwardTo.jsp" />

</body>

</html>