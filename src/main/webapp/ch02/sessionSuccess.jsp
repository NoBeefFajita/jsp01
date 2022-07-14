<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>sessionSuccess</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <%@ include file="../include/sessionCheck.jsp"%>
    <%
    String context = request.getContextPath();
    %>
    <script>
        $(function() {
            $('#btnLogout').click(function() {
                location.href="<%= context %>/ch02_servlet/logout.do"
            })
        })
    </script>
</head>

<body>
    <h2><%= session.getAttribute("message") %></h2>
    접속중인 아이디는  <%= session.getAttribute("userid") %>입니다.
    <button id="btnLogout">로그아웃</button>
</body>

</html>

