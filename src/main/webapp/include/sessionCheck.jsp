<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder"%>

    <%
    // 세션 변수 조회
    //각 페이지에 공통으로 적용할 수 있도록 불법적으로 세션값을 가지지 않고 들어온 페이지에 대한
	//경고처리를 해주는것이 좋다.
    String userid = (String)session.getAttribute("userid");
    if(userid == null) {
        String message = "먼저 로그인하신 후 사용가능합니다.";
        message = URLEncoder.encode(message,"UTF-8");
        response.sendRedirect(request.getContextPath()
					+"/ch02/sessionTestForm.jsp?message="+message);
    }
    %>
