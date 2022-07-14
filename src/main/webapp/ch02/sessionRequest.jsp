<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>sendRedirect</title>
</head>

<body>
    <%
    String name = (String)session.getAttribute("name");
    String age = (String)session.getAttribute("age");
    %>

    [세션에 저장한 형태로 넘어온 데이터] <br>
    이름 : <%= name %> <br>
    나이 : <%= age %> <br>
    세션 아이디 : <%= session.getId() %> <br>
    <hr>
    <%-- 세션 아이디는 서버에서 랜덤하게 발생하는데, 웹브라우저마다 다르게 발급 --%>
    <%
    String name2 = (String)request.getAttribute("name");
    String age2 = (String)request.getAttribute("age");
    %>
    [request로 넘어온 데이터] <br>
    이름 : <%= name2 %> <br>
    나이 : <%= age2 %> <br>
    
    <a href="sessionResult2.jsp">페이지가 바뀔 때 세션과 request값 확인</a>

</body>

</html>