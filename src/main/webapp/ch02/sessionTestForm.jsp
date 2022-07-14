<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>sessionTestForm</title>
</head>

<body>
    <%-- 
        sesstionTestForm.jsp    로그인
        sessionSuccess.jsp      로그아웃 버튼 클릭
        sessionCheck.jsp        세션 체크
        LoginController.java
        MemberDTO.java
        MemberDAO.java
     --%>

     <% String context = request.getContextPath(); %>
     <form action="<%= context %>/ch02_servlet/login.do" method="post">
        아이디 : <input name="userid"> <br>
        비밀번호 : <input type="password" name="pw"> <br>
        <button>로그인</button> <br>
    </form>

    <!-- 로그인 실패, 로그아웃 메시지를 출력할 태그 -->
    <%
    String message = request.getParameter("message");
    if(message != null) {
    %>
    <span style="color: red;"><%= message %></span>
    <%
    }
    %>
</body>

</html>