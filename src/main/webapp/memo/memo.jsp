<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>memo</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(function() {
            $.ajax({
                type : "get",
                url : "/jsp01/memo_servlet/memo_list.do",
                success : function(result) {
                    $('#div1').html(result);
                }
            })
        })
    </script>
</head>

<body>
    <h2>한줄메모장<h2>
    
    <%-- 메모를 출력시킬 영역 --%>
    <div id ="div1"></div>
</body>

</html>