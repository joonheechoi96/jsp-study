package ch07.com.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.Part;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;

@WebServlet("/fileupload02Process") // url 매핑	
@MultipartConfig(
//	location = "D:/upload", // 최종 저장될 업로드 경로 		
	fileSizeThreshold = 1024 * 1024 * 1, // 메모리 임시 저장 임계값(1MB) -> 파일을 메모리에 임시 저장할 최대 크기
	maxFileSize = 1024 * 1024 * 10, // 업로드 최대 파일 크기(10MB) -> 업로드되는 개별 파일의 최대 크기
	maxRequestSize = 1024 * 1024 * 50 // 전체 요청 크기(50MB) -> 요청 전체(모든 파일 + 모든 일반 폼 필드)의 총합 크기
)

public class Fileupload02ProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public Fileupload02ProcessServlet() {
        super();
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8"); // 한글 처리를 위해 추가(생략 가능)
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		
		// 1. 업로드 경로 설정(2가지 경로 실습)
		String uploadPath = "D:/upload";
		
		File uploadDir = new File(uploadPath);
		if (!uploadDir.exists()) {
			uploadDir.mkdirs();
		}	
		
		// 2-1. 일반 데이터 가져오기
		String name1 = request.getParameter("name1");
		String subject1 = request.getParameter("subject1");
		
		String name2 = request.getParameter("name2");
		String subject2 = request.getParameter("subject2");
		
		String name3 = request.getParameter("name3");
		String subject3 = request.getParameter("subject3");
		
		// 2-2. 여러 개의 파일 데이터 가져오기
//		Part filePart1 = request.getPart("uploadFile1");
//		Part filePart2 = request.getPart("uploadFile2");
//		Part filePart3 = request.getPart("uploadFile3");
		// 한번에 가져오기
		Collection<Part> fileParts =  request.getParts(); // 폼에 포함된 모든 <input> 요소를 Part 객체로 변환
		
		int fileCount = 1;
		for (Part part : fileParts) {
			// 파일만 필터링 - 방법 1
//			if(part.getName().startsWith("uploadFile")) { // input 태그의 name이 uploadFile로 시작하는
//				String fileName = part.getSubmittedFileName(); // 원본 파일 이름
//				String contentType = part.getContentType();
//				long fileSize = part.getSize(); // 파일 크기(byte)
//			}
			String fileName = part.getSubmittedFileName(); // 원본 파일 이름
			// 파일만 필터링 - 방법 2
			// fileName 은 파일 필드가 아닌 일반 폼 필드에서는 항상 null
			if (fileName == null || fileName.isEmpty()) continue;
			
			part.write(uploadPath + File.separator + fileName); // 파일 저장
			out.println("업로드된 파일" + fileCount + ": " + fileName + "<br>");
			fileCount++;
		}
		
		
		
	}

}
