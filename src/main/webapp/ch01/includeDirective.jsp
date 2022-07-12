<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ include file="color.jspf" %>
<%@ page import="config.Constants" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>includeDirective</title>
    <style>
        body {
            background: <%=bodyback_c%>;
        }
    </style>
</head>

<body>
    <h2>최대값 : <%= Constants.MAX %></h2>

    <%-- jsp 액션태그로서, 액션태그는 java 변수를 공유할 수 없음 --%>
    <jsp:include page="test1.jsp"></jsp:include>
    <%-- <%= str %> --%>
    
    <%-- 지시어는 java변수 공유 가능 --%>
    <%@include file = "test1.jsp" %>
    <%= str %>
</body>

</html>