<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title></title>
</head>

<body>
    <form action="ifTest.jsp" method="post" name="form1">
        이름 : <input type="text" name="name"> <br>
        색상 : <select name="color">
            <option value="blue">파랑</option>
            <option value="green">초록</option>
            <option value="red">빨강</option>
        </select>
        <br>
        <input type="range" name="range" min="1" max="500" onchange="document.form1.rangeout.value = this.value">
        <output name="rangeout" for="range">250</output>
        <button>확인</button>
    </form>
</body>

</html>