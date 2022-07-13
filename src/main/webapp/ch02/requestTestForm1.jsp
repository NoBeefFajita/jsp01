<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>requerstTestForm</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>

<body>
    <% String context=request.getContextPath(); %>
        <form action="<%= context %>/ch02_servlet/request.do">

            이름 : <input type="text" name="name"> <br>
            나이 : <input type="text" name="age"> <br>
            성별 : <input type="radio" name="gender" value="m" checked>남
            <input type="radio" name="gender" value="f">여  <br>
            취미 : 
            <select name="hobby">
                <option value="운동">운동</option>
                <option value="요리">요리</option>
                <option value="낚시">낚시</option>
                <option value="등산">등산</option>
            </select> <br>
            이메일 : <input type="email" name="email"> <br>
            전화 : <input type="tel" name="hp"> <br>
            주소 : <input type="text" name="ad"> <br>
            <button>확인</button>
            
        </form>

</body>

</html>