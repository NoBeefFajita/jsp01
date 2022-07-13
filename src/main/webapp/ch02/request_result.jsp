<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.Map"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <%
    Map<String,Object> map = (Map<String,Object>)request.getAttribute("map");
    %>  

    이름 : <%= map.get("name") %> <br>
    나이 : <%= map.get("age") %> <br>
    성별 : <%= map.get("gender") %> <br>
    취미 : <%= map.get("hobby") %> <br>
    이메일 : <%= map.get("email") %> <br>
    hp : <%= map.get("hp") %> <br>
    주소 : <%= map.get("ad") %> <br>
    
    <hr>
    <!-- EL(Expression Language, 표현언어)로서 java코드를 줄일 수 있음. -->
    이름 : ${ map.name } <br>
    나이 : ${ map.age } <br>
    성별 : ${ map.gender } <br>
    취미 : ${ map.hobby } <br>
    이메일 : ${ map.email } <br>
    hp : ${ map.hp } <br>
    주소 : ${ map.ad } <br>
</body>

</html>