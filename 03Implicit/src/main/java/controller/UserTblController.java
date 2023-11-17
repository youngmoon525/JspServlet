package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import usertbl.UserTblDAO;
import usertbl.UserTblDTO;

// name , urlpatterns.... 추천 x 
// *.user , *.do .. 주의 : /를 빼야함.(다음주에 진행)
@WebServlet(name = "usertbl" , urlPatterns = {"/list" , "/detail" , "/update" , "/delete" , "/newpage" , "/insert"} )
public class UserTblController extends HttpServlet {
	//url요청이 list이면 전체목록을 list.jsp가 보여주게함.
	//url요청이 detail이면 회원 한명의 정보를 detail.jsp가 보여주게함.
	//요청에 따라 콘솔창에 list , detail이 찍히게 처리해보기.
	RequestDispatcher rd;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		//Request (Forward) : Servlet이 받은 요청을 다시 다른(Servlet,jsp..등)에 전달
		//실제로는 새로운 요청을 하지 않고 , 원래 요청에 대한 처리를 받은 서블릿이나 JSP등에서 새로운 자원으로 제어를 넘김.(setAttribute)
		//웹 브라우저는 이 전환을 인지하지 못하여 , "URL이 바뀌지 않음.(실제 파일 경로가 안보임)"
		
		//Response (Redirect) : 웹 브라우저에게 새로운 URL로 이동하라는 명령을 전달
		//웹브라우저는 새로운 URL로 새로운 요청(Reqest)을 보내고 , 서버는 이 요청에 응답함.
		//사용자가 실제로 다른 페이지로 이동하여 , "주소표시줄의 URL이 변경됨"
		
		
		UserTblDAO dao = new UserTblDAO();
		if(req.getServletPath().equals("/list")) {
			ArrayList<UserTblDTO> list = dao.selectList();
			req.setAttribute("list", list);
			rd = req.getRequestDispatcher("usertbl/list.jsp");
		}else if(req.getServletPath().equals("/detail")) {
			String name = req.getParameter("name");
			UserTblDTO dto = dao.selectOne(name);
			req.setAttribute("dto", dto);
			rd = req.getRequestDispatcher("usertbl/detail.jsp");
		}else if(req.getServletPath().equals("/update")) {
			UserTblDTO dto = new UserTblDTO();
			dto.setUsername(req.getParameter("username"));
			dto.setBirthyear(Integer.parseInt( req.getParameter("birthyear") ));
			dto.setMobile(req.getParameter("mobile"));
			dto.setAddress(req.getParameter("address"));
			System.out.println(dto.getUsername());
			dao.update(dto);
			
			resp.sendRedirect("list");
			return;
			//요청에 대한 처리가 끝나고 코드가 있다면 오류가 발생함.(실행이 안되거나)
		}else if(req.getServletPath().equals("/delete")) {
			String username = req.getParameter("username");
			dao.delete(username);
			resp.sendRedirect("list");
			return;
		}else if(req.getServletPath().equals("/newpage")) {
			rd = req.getRequestDispatcher("usertbl/newpage.jsp");
		}else if(req.getServletPath().equals("/insert")) {
			UserTblDTO dto = new UserTblDTO();
			dto.setUsername(req.getParameter("username"));
			dto.setBirthyear(Integer.parseInt( req.getParameter("birthyear") ));
			dto.setMobile(req.getParameter("mobile"));
			dto.setAddress(req.getParameter("address"));
			dao.insert(dto);
			resp.sendRedirect("list");
			return;
		}
		rd.forward(req, resp);			
	}
}
