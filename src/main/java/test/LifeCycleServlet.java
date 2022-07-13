package test;

import javax.servlet.http.* ;
import javax.servlet.* ;
import javax.servlet.annotation.WebServlet;

import java.io.* ;

@WebServlet({ "/test_servlet/lifeCycle.do" })
public class LifeCycleServlet extends HttpServlet {
    private static final long serialVersionUID = 1L ;
    
    public void init(ServletConfig config) throws ServletException {
        System.out.println("init called") ;
        super.init() ;
    }
    
    public void destroy() {
        System.out.println("destroy called") ;
        super.destroy() ;
    }
    
    protected void service(HttpServletRequest request,
                           HttpServletResponse response) throws ServletException, IOException {
        System.out.println("service called") ;
        super.service(request, response) ;
    }
    
    protected void doGet(HttpServletRequest request,
                           HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doGet called") ;
    }
    
    protected void doPost(HttpServletRequest request,
                           HttpServletResponse response) throws ServletException, IOException {
        System.out.println("doPost called") ;
    }
}