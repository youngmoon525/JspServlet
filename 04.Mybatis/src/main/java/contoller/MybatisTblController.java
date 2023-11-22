package contoller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import mybatis.MybatisTblDAO;
import mybatis.MybatisTblVO;

@WebServlet("*.mytbl")
public class MybatisTblController extends HttpServlet {
	//1.url을 통해 파라메터를 입력받아 4가지 동작이 전부 잘 되는지 테스트
	//2.jsp페이지에 폼태그나 a태그 등을 이용하여 4가지 동작이 잘 되는지 테스트(입력한 값 기준으로)
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		MybatisTblDAO dao = new MybatisTblDAO();
		if(path.equals("/insert.mytbl")) {//CREATE
			MybatisTblVO vo = new MybatisTblVO();
			vo.setCol1(req.getParameter("col1"));
			vo.setCol2(req.getParameter("col2"));
			vo.setCol3(req.getParameter("col3"));
			System.out.println(dao.insert(vo));
			resp.sendRedirect("select.mytbl");
			
		}else if(path.equals("/update.mytbl")) {//U
			MybatisTblVO vo = new MybatisTblVO();
			vo.setCol1(req.getParameter("col1"));
			vo.setCol2(req.getParameter("col2"));
			vo.setCol3(req.getParameter("col3"));
			System.out.println(dao.update(vo));
			resp.sendRedirect("select.mytbl");
			
		}else if(path.equals("/delete.mytbl")) {//D
			MybatisTblVO vo = new MybatisTblVO();
			vo.setCol1(req.getParameter("col1"));
			System.out.println(dao.delete(vo));
			resp.sendRedirect("select.mytbl");
			
		}else if(path.equals("/select.mytbl")) {//READ
			RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
			List<MybatisTblVO> list = dao.select();
			req.setAttribute("list", list);
			rd.forward(req, resp);
		}
	}
}
