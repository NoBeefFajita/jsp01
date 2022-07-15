<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../include/jquery-3.6.0.min.js"></script>
</head>
<body>
<%
request.setCharacterEncoding("utf-8");
%>

<!-- id="참조변수명"  class="클래스이름" id가 registerBean인 클래스의 인스턴스가 생성되고 
모든 property="*" 에 값이 입력됨, -->

<jsp:useBean id="registerBean" class="ch05.RegisterBean">
 <jsp:setProperty name="registerBean" property="*" />
</jsp:useBean>
<%@ page import="java.sql.Timestamp" %>
<%
registerBean.setReg_date(new Timestamp(System.currentTimeMillis()));
%>

<!-- <jsp:setProperty name="registerBean" 와  name="registerBean" 같게 해야함-->
아이디 : <jsp:getProperty property="id" name="registerBean"/> <br>
비번 : <jsp:getProperty property="passwd" name="registerBean"/> <br>
이름 : <jsp:getProperty property="name" name="registerBean"/> <br>
가입일자 : <jsp:getProperty property="reg_date" name="registerBean"/> <br>

</body>
</html>