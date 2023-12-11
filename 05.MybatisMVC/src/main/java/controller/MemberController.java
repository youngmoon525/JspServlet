package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.MemberDAO;
import member.MemberDAO_Id;
import member.MemberService;
import member.MemberVO;

@WebServlet("*.me")
public class MemberController extends HttpServlet {
	
//	@RespuestMapping("/loginpage.me")
//	public String loginPage() {
//		return "login";
//	}
	
	
	RequestDispatcher rd;
	MemberService service;
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		if(req.getServletPath().equals("/loginpage.me")) {
			rd = req.getRequestDispatcher("member/login.jsp");
			rd.forward(req, resp);
		}else if(req.getServletPath().equals("/login.me")) {
			//"1","success"-> login.jsp
			//jacksonDatabinding ( true ) Spring
			service = new MemberDAO();
			MemberVO vo = new MemberVO();
			vo.setUser_id(req.getParameter("user_id"));
			vo.setUser_pw(req.getParameter("user_pw"));
			
			//service를 이용하여 member_login메소드를 호출하고 그 결과를 다시 MemberVo에 담아보기. ( SELECT 해오기 )
			vo = service.member_login(vo);
			req.getSession().setAttribute("logininfo", vo);
			
			String result = req.getSession().getAttribute("logininfo") == null ? "-1" : "1";
			
			resp.getWriter().print(result);
		}else if(req.getServletPath().equals("/logout.me")) {
			req.getSession().removeAttribute("logininfo");//
			resp.sendRedirect("/mvc");
		}else if(req.getServletPath().equals("/joinpage.me")) {
			rd = req.getRequestDispatcher("member/join.jsp");
			rd.forward(req, resp);
		}else if(req.getServletPath().equals("/join.me")) {
			MemberVO vo = new MemberVO();
			vo.setUser_id(req.getParameter("user_id"));
			vo.setUser_pw(req.getParameter("user_pw"));
			vo.setName(req.getParameter("name"));
			vo.setEmail(req.getParameter("email"));
			vo.setAddress(req.getParameter("address"));
			vo.setPost(req.getParameter("post"));
			service = new MemberDAO();
			System.out.println( service.member_join(vo) );
			
		}else if(req.getServletPath().equals("/idCheck.me")) {
			System.out.println(req.getParameter("user_id"));
			
			// /[^a-z0-9]/g; 
			
			service = new MemberDAO_Id();
			service.member_idCheck(req.getParameter("user_id"));
			//sql매퍼를 이용해서 이미 있는 아이디라면 1 , 없는 아이디는 0을 콘솔창에 출력(syso)
			//javascript가 받을수있게 응답처리
			//javascript 콘솔에 1또는0을 출력
			
			
		}
			
			
	}
}






