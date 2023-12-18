package controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/file.f")
@MultipartConfig // <- MultiPart처리는 CommonFileUpload(Apach , Cos...) servlet 3.0 이상 MultipartConfig만 써주면됨
public class FileController extends HttpServlet {
	//service : get || post 요청 둘다 받음.-> get요청 시 Multipart형태의 데이터를 담은 요청은 무조건 오류임.
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Part part = req.getPart("andFile");
		System.out.println(part.getName() + " : " + part.getSize() + " : " + part.getSubmittedFileName());
		
		// MultiPartRequest.getFile("andFile"); Spring
		// 임시 파일을 지우는 처리를 자동으로함. 
		InputStream fileContent = part.getInputStream();
		String uploadPath = "D:\\mid\\" + part.getSubmittedFileName();//저장 경로
		
		try(OutputStream out = new FileOutputStream(new File(uploadPath))){
			int read;
			final byte[] fileBytes = new byte[1024];
			while( (read = fileContent.read(fileBytes)) != -1  ) {
				out.write(fileBytes , 0 , read);
			}
			out.flush();
		}catch (IOException e) {
			e.printStackTrace();
		}
		
		
	}
}
