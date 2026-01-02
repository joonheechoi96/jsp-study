package ch07.controller;

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
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Collection;
import java.util.UUID;

@WebServlet("/fileuploadProcess") // url 매핑	
@MultipartConfig(
//	location = "D:/upload", // 최종 저장될 업로드 경로 		
	fileSizeThreshold = 1024 * 1024 * 1, // 메모리 임시 저장 임계값(1MB) -> 파일을 메모리에 임시 저장할 최대 크기
	maxFileSize = 1024 * 1024 * 10, // 업로드 최대 파일 크기(10MB) -> 업로드되는 개별 파일의 최대 크기
	maxRequestSize = 1024 * 1024 * 50 // 전체 요청 크기(50MB) -> 요청 전체(모든 파일 + 모든 일반 폼 필드)의 총합 크기
)

public class FileuploadProcessServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public FileuploadProcessServlet() {
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
		
		Collection<Part> fileParts =  request.getParts();
		
		
		int fileCount = 1;
		for (Part part : fileParts) {
			String fileName = part.getSubmittedFileName();
			if (fileName == null || fileName.isEmpty()) continue;
//			int dotIndex = fileName.lastIndexOf(".");
//			String extension = "";
//			if(dotIndex != -1) {
//				extension = fileName.substring(dotIndex);
//			} else {
//				out.println(fileName + "은 유효하지 않은 파일입니다.");
//				continue;
//			}
//			String serverFilename = UUID.randomUUID() + extension;
			LocalDateTime now = LocalDateTime.now();
			DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyyMMdd_HHmmss");
			String timestamp = now.format(formatter);
			String serverFilename = timestamp + fileName;
			part.write(uploadPath + File.separator + serverFilename); // 파일 저장
			out.println("업로드된 파일" + fileCount + ": " + serverFilename + "<br>");
			fileCount++;
		}
	}

}
