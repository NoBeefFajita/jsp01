<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>end</title>
</head>

<body>
    <h1>[end.jsp]</h1>
    <%-- middle.jsp에서 액션태그를 사용해서 end.jsp를 include 
    request에서 저장한 파라미터 연결됨--%>
    전달받은 값 : <%= request.getParameter("myKey") %>

</body>
</html>