<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>color</title>
</head>

<body>
    <% 
    Map<String,Object> map = (Map<String,Object>)request.getAttribute("map");
    String name = (String)map.get("name");
    String color = (String)map.get("color");
    String message = (String)map.get("message");
    String[] hobby = (String[])map.get("hobby");
    String dep = (String)map.get("dep");
    String po = (String)map.get("po");
    String email = (String)map.get("email");
    String[] fsn = (String[])map.get("fsn");
    %>

    <%= name %>님이 좋아하는 색상은
    <span style="color: <%= color %>;"><%= color %>이고</span>
    <%= message %> <br>
    취미 : 
    <%
    if( hobby != null) {
        String hb = "";
        for(String str : hobby) hb += str + ", ";
        out.println(hb.replaceAll(", $", ""));
    }
    %>
    <br>
    부서 : <%= dep %> <br>
    직책 : <%= po %> <br>
    이메일 : <%= email %> <br>
    좋아하는 간식 : 
    <%
    if( fsn != null) {
        String sn = "";
        for(String str : fsn) sn += str + ",";
        out.println(sn.replaceAll(",$", ""));
    }
    %>
    <br>
</body>

</html>