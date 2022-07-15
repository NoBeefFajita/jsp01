<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title></title>
</head>

<body>
    <h2>[start.jsp]</h2>    
    <jsp:include page="middle.jsp">
        <jsp:param value="myValue" name="myKey"/>
    </jsp:include>
    <br>

    myKey : <%= request.getParameter("myKey") %>
    
</body>

</html>