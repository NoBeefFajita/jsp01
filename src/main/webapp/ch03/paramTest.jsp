<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>paramTest</title>
</head>

<body>
    <% 
    request.setCharacterEncoding("UTF-8");
    String name = "홍길동";
    String pageName = "includeParamTest.jsp";
    %>

    <%= name %> <br>
    <%= pageName %> <br>

    <hr>
    포함하는 페이지의 파라미터값이 다시 아래에 출력됩니다.
    <%-- includeParamTest.jsp 페이지에 출력 --%>
    <jsp:include page="<%= pageName %>">
        <jsp:param value="<%= name %>" name="nVar"/>
        <jsp:param value="<%= pageName %>" name="pVar"/>
    </jsp:include>

</body>

</html>