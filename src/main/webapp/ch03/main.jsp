<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>main</title>
    <link rel="stylesheet" href="template.css">
</head>

<body>
    <%-- 포워드 방식 : 주소는 그대로 화면이동 --%>
    <jsp:forward page="template.jsp">
        <jsp:param value="content.jsp" name="CONTENTPAGE"/>
    </jsp:forward>
</body>

</html>