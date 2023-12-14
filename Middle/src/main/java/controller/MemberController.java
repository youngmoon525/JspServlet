package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;

import member.MemberDAO;
import member.MemberService;
import member.MemberVO;

@WebServlet("*.me")
public class MemberController extends HttpServlet {
	MemberService service;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		if(req.getServletPath().equals("/login.me")) {
			service = new MemberDAO();
			MemberVO vo = new MemberVO();
			vo.setUser_id(req.getParameter("user_id"));
			vo.setUser_pw(req.getParameter("user_pw"));
			vo.setSocial(req.getParameter("social"));
			vo = service.member_login(vo);
			resp.getWriter().println(new Gson().toJson(vo));
		}
	}
}
