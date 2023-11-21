package contoller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("*.mytbl")
public class MybatisTblController extends HttpServlet {
	//1.url을 통해 파라메터를 입력받아 4가지 동작이 전부 잘 되는지 테스트
	//2.jsp페이지에 폼태그나 a태그 등을 이용하여 4가지 동작이 잘 되는지 테스트(입력한 값 기준으로)
	
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = req.getServletPath();
		if(path.equals("/insert.mytbl")) {//CREATE
			//1.DAO호출
			//2.페이지 요청(URL요청)
		}else if(path.equals("/update.mytbl")) {//U
			//1.DAO호출
			//2.페이지 요청(URL요청)
		}else if(path.equals("/delete.mytbl")) {//D
			//1.DAO호출
			//2.페이지 요청(URL요청)
		}else if(path.equals("/select.mytbl")) {//READ
			
		}
	}
}
