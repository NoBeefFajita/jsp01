<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>date</title>
</head>

<body>
    <% 
    Date nowDate = new Date();
    out.print(nowDate + "<br>");
    System.out.println(nowDate); // toncat 콘솔창

    SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy년 MM월 dd일 a HH:mm:ss");
    String formatDate = dateFormat.format(nowDate);
     %>

     현재 날짜는 <%=formatDate  %> 입니다. <br>
     현재 날짜는 <% out.println(formatDate); %> 입니다.

</body>
</html>