<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>template</title>
    <link rel="stylesheet" href="template.css">
</head>

<body>
    <header>
        <jsp:include page="top.jsp"></jsp:include>
    </header>
    <div id="content">
        <section id="areaSub">
            <jsp:include page="left.jsp"></jsp:include>
        </section>
        <section id="areaMain">
            <jsp:include page="<%= request.getParameter(\"CONTENTPAGE\")%>"/>
        </section>
    </div>
    
    <footer>
    	<jsp:include page="bottom.jsp"/>
    </footer>
</body>

</html>