<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>requestTest2</title>
</head>

<body>
    <h2>request 객체의 method</h2>

    <%
    String[] names = {"프로토콜","서버이름","method", "컨텍스트", "uri", "url","ip"};
    String[] values = {request.getProtocol(), request.getServerName(), request.getMethod(), request.getContextPath(), request.getRequestURI(), request.getRequestURL().toString() , request.getRemoteAddr()};
    // uri 는 String, url은 StringBuffer
    
    for(int i = 0; i < names.length; i++) {
    	out.print(names[i] + " : " + values[i] + "<br>");
    }
    
    // request 헤더 변수들을 Enumeration 에 저장(집합처리객체)
    Enumeration<String> en = request.getHeaderNames();
    String headerName="";
    String headerValue="";
    out.print("<h2>헤더 정보</h2>");
    while(en.hasMoreElements()) {
    	headerName = en.nextElement();
    	headerValue = request.getHeader(headerName);
    	out.print(headerName + ":" + headerValue + "<br>");
    }
    %>
</body>

</html>