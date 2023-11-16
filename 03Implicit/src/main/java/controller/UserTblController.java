package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import usertbl.UserTblDAO;

@WebServlet("/list")
public class UserTblController extends HttpServlet {
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		UserTblDAO dao = new UserTblDAO();
		//dao.openConnection();
		
		// RequestDispatcher를 이용해서 , usertbl/list.jsp에 내용을 출력해보기.
		System.out.println(dao.selectList().size());
		
	}
}
