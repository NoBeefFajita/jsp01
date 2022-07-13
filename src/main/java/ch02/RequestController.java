package ch02;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;
import java.util.HashMap;

@WebServlet({ "/ch02_servlet/request.do" })
public class RequestController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 한글 인코딩 설정
		request.setCharacterEncoding("UTF-8");
		String name = request.getParameter("name");
		String age = request.getParameter("age");
		String gender = request.getParameter("gender");
		String hobby = request.getParameter("hobby");
		String email = request.getParameter("email");
		String hp = request.getParameter("hp");
		String ad = request.getParameter("ad");
        
        Map<String, Object> map = new HashMap<>();
        map.put("name", name);
        map.put("age", age);
        gender = gender.equals("m")? "남" : "여";
        map.put("gender", gender);
        map.put("hobby", hobby);
        map.put("email", email);
        map.put("hp", hp);
        map.put("ad", ad);
        System.out.println(map);

        request.setAttribute("map",map);
        String page = "/ch02/request_result.jsp";
		RequestDispatcher rd = request.getRequestDispatcher(page);
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}
}
