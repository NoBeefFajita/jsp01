<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>beanTestPro</title>
</head>

<body>
    <%
    request.setCharacterEncoding("UTF-8");
    System.out.println(request.getParameter("name"));
    %>

    <jsp:useBean id="testBean" class="ch05.TestBean">
        <jsp:setProperty name="testBean" property="*" />
    </jsp:useBean>
    아이디 : <jsp:getProperty property="id" name="testBean" />
    비번 : <jsp:getProperty property="pwd" name="testBean" />
    이름 : <jsp:getProperty property="name" name="testBean" />
</body>

</html>