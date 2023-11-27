package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import customer.CustomerDAO;
import customer.CustomerVO;

@WebServlet("*.cu")
public class CustomerController extends HttpServlet {
	RequestDispatcher rd ;
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath().replace("/", "");//
		CustomerDAO dao = new CustomerDAO();
		
		if(path.equals("list.cu")) {
			rd = req.getRequestDispatcher("customer/list.jsp");
			req.setAttribute("list", dao.select());
			rd.forward(req, resp);
		}else if(path.equals("delete.cu")) {
			int customer_id = Integer.parseInt( req.getParameter("customer_id") );
			dao.delete(customer_id);
			
			resp.sendRedirect("list.cu");
		}else if(path.equals("insert.cu")) {
			CustomerVO vo = new CustomerVO();
			vo.setEmail(req.getParameter("email"));
			vo.setGender(req.getParameter("gender"));
			vo.setPhone(req.getParameter("phone"));
			vo.setName(req.getParameter("name"));
			dao.insert(vo);
			resp.sendRedirect("list.cu");			
		}else if(path.equals("update.cu")) {
			CustomerVO vo = new CustomerVO();
			vo.setCustomer_id(Integer.parseInt(req.getParameter("customer_id")));
			vo.setEmail(req.getParameter("email"));
			vo.setGender(req.getParameter("gender"));
			vo.setPhone(req.getParameter("phone"));
			vo.setName(req.getParameter("name"));
			dao.update(vo);
			resp.sendRedirect("list.cu");			
		}
		
		
	}

}
