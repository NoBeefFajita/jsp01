<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>forwardParamForm</title>
</head>

<body>
    <% String path=request.getContextPath(); %>
        <form action="<%= path %>/forward_servlet/forward.do" method="post">
            이름 : <input type="text" name="name"> <br>
            색상 :
            <select name="color">
                <option value="blue">파랑</option>
                <option value="green">초록</option>
                <option value="red">빨강</option>
            </select>
            <br>
            취미 :
            <input type="checkbox" name="hobby" value="낚시">낚시
            <input type="checkbox" name="hobby" value="등산">등산
            <input type="checkbox" name="hobby" value="운동">운동
            <input type="checkbox" name="hobby" value="독서">독서
            <br>
            부서 : <input name="dep"> <br>
            직책 : 
            <select name="po">
                <option value="주임">주임</option>
                <option value="대리">대리</option>
                <option value="과장">과장</option>
                <option value="부장">부장</option>
                <option value="임원">임원</option>
            </select>
            <br>
            이메일 : <input type="email" name="email"> <br>
            좋아하는 간식 : 
            <input type="checkbox" name="fsn" value="과자">과자
            <input type="checkbox" name="fsn" value="과일">과일
            <input type="checkbox" name="fsn" value="커피">커피
            <input type="checkbox" name="fsn" value="쥬스">쥬스
            <br>
            <button>확인</button>
        </form>
</body>

</html>