package cotroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.kym")
public class KymContoller extends HttpServlet {
	RequestDispatcher rd;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getServletPath().equals("/list.kym")) {
			rd = req.getRequestDispatcher("kym/list.jsp");
		}else if(req.getServletPath().equals("/insert.kym")) {
			rd = req.getRequestDispatcher("kym/insert.jsp");
			req.setAttribute("param1", req.getParameter("param1")+"1");
			req.setAttribute("param2", req.getParameter("param2")+"1");
		}
		
		rd.forward(req, resp);
	}
}
