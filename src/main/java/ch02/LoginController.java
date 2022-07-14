package ch02;

import java.io.IOException;
import java.net.URLEncoder;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import member.MemberDAO;

@WebServlet("/ch02_servlet/*")
public class LoginController extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        System.out.println("servlet succese...");
        System.out.println(request.getRequestURL());
        System.out.println(request.getRequestURI());
        String uri = request.getRequestURI();
        System.out.println(uri.indexOf("login.do"));
        System.out.println(uri.indexOf("logout.do"));

        if (uri.indexOf("login.do") != -1) {
            String userid = request.getParameter("userid");
            String pw = request.getParameter("pw");
            System.out.println(userid);
            System.out.println(pw);

            MemberDAO dao = new MemberDAO();
            String name = dao.loginCheck(userid, pw);
            String message = "";
            String page = "";

            if (name == null) {
                message = "아이디 또는 비밀번호가 일치하지 않습니다.";
                message = URLEncoder.encode(message, "UTF-8");
                page = "/ch02/sessionTestForm.jsp?message=" + message;
            } else {
                message = name + "님 환영합니다.";
                HttpSession session = request.getSession(); // 서블릿에서는 세션 객체 생성을 해야함
                session.setAttribute("userid", userid);
                session.setAttribute("message", message);
                page = "/ch02/sessionSuccess.jsp";
            }

            System.out.println(message);
            response.sendRedirect(request.getContextPath() + page);
        } else if (uri.indexOf("logout.do") != -1) {
            HttpSession session = request.getSession();
            session.invalidate();// 세션 초기화
            String message = URLEncoder.encode("로그아웃되었습니다.", "utf-8");
            response.sendRedirect(request.getContextPath()
                    + "/ch02/sessionTestForm.jsp?message=" + message);
        }

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
