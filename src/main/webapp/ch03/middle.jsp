<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title></title>
</head>

<body>
    <h1>[middle.jsp]</h1>
    <%-- start.jsp에서 액션 파라미터태그를 활용해 value가 넘어옴 --%>
    전달받은 값 : <%= request.getParameter("myKey") %>

    <jsp:include page="end.jsp"></jsp:include>
</body>

</html>