package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex02")
public class Ex02_Req extends HttpServlet {
	RequestDispatcher rd ;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("EX02까지옴");
		//req ( form 태그 , a태그 등으로 들어오는 파라메터를 가지고 있다 ) getParameter <- String 
		String email = req.getParameter("email");
		String pw = req.getParameter("pw");
		if("admin".equals(email) && "admin1234".equals(pw)) {
			rd = req.getRequestDispatcher("request/ex03req.jsp");
		}else {
			rd = req.getRequestDispatcher("request/ex02req.jsp");
		}
		//email과pw가 각각 admin , admin1234이면 ex03req.jsp로 넘어가고 , 그게 아니라면 ex02req.jsp가 실행되게 처리해보기.
		//ipconfig:
		//Attribute
		//ArrayList로 String데이터 5건을 묶어서 setAttribute를 통해
		//jsp로 전송.(jsp에서는 받아서 출력)
		ArrayList<String> list = new ArrayList<>();
		list.add("1");
		list.add("2");
		list.add("3");
		list.add("4");
		list.add("5");
		
		req.setAttribute("key", "data");
		req.setAttribute("list", list);
		
		rd.forward(req, resp);
	}

}
