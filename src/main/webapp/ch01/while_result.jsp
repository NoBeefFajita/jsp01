<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// request.getAttribute("키 변수") 는 서블릿의 request.setAttribute("키 변수", 값); 와 대응
	// request.getAttribute("키 변수") 는 값을 가지고 올 때 받는 type 에 맞게 형변환 해야한다
	
	int result = (int)request.getAttribute("result");
	out.println("결과 : " + result);
	%>
</body>
</html>