package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.sg")
public class SingleController extends HttpServlet {
	RequestDispatcher rd ;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getServletPath().equals("/list.sg")) {
			rd = req.getRequestDispatcher("single/list.jsp");
			rd.forward(req, resp);
		}else if(req.getServletPath().equals("/insert.sg")) {
			
		}else if(req.getServletPath().equals("/update.sg")) {
			
		}else if(req.getServletPath().equals("/delete.sg")) {
			
		}
	}

}
