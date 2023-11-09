package pack01._url;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


// GET - FORM 태그 안에 있는 정보들을 URL주소에 그대로 노출시켜서 전송함.(보안x) -> Form Method(GET) -> Servlet ( doGet 메소드 실행 )
// POST - 파라메터를 보안으로 숨김 -> Form Method(Post) -> Servlet ( doPost 메소드 실행 )

// 톰캣 실행 시 -> 프로젝트의 파일을 .class로 바꾼 후 -> 톰캣 내부에 배포 -> 실행

@WebServlet("/Ex01_Servlet")
public class Ex01_Servlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append(" KYM RESPONSE ");
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
