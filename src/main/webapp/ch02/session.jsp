<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>session</title>
</head>

<body>
    <%
    // pageContest(현재 페이지) < request (두 페이지) < session (사용자 단위) < application (서버 단위)
    // session 영역에 변수 저장
    session.setAttribute("name", "김철수");
    session.setAttribute("age", "20");

    // request 영역에 변수 저장
    request.setAttribute("name", "홍길동");
    request.setAttribute("age", "22");

    // forward() : 페이지 이동 (주소가 바뀌지 않음, 대량의 데이터 처리)
    RequestDispatcher rd = request.getRequestDispatcher("sessionRequest.jsp");
    rd.forward(request,response);
    
    %>
</body>

</html>