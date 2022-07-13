<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>ifTest</title>
</head>

<body>
	<% 
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String range = request.getParameter("range");
	String selectColor = "";
	/* switch(color) {
	case "blue" : selectColor = "파랑"; break;
	case "green" : selectColor = "초록"; break;
	case "red" : selectColor = "빨강"; break;
	} */
	if(color.equals("blue")) selectColor = "파랑";
	else if(color.equals("green")) selectColor = "초록";
	else selectColor = "빨강";
	%>
	
	<%= name %>님이 선택한 색상은 <%= selectColor %> 입니다. <br>
	range : <%= range %>
	<div style="background: <%= color %>; width:<%= range %>px; height:<%= range %>px; ">
	</div>
    <%
    
    %>
</body>

</html>