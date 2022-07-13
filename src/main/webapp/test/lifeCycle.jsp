<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title></title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        $(function() {
            $.ajax({
                type : "get",
                url : "/jsp01/test_servlet/lifeCycle.do",
                success : function(result) {
                    $('#div1').html(result);
                }
            })
        })
    </script>
</head>

<body>
    <div id="div1"></div>
</body>

</html>