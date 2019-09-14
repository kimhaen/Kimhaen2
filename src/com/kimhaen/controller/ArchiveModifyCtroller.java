package com.kimhaen.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kimhaen.dao.ArchiveDAO;
import com.kimhaen.dao.GalleryDAO;
import com.kimhaen.vo.ArchiveVO;
import com.kimhaen.vo.GalleryVO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet( "/archivemodify.do")
public class ArchiveModifyCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ArchiveModifyCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		ArchiveDAO dao = ArchiveDAO.getInstance();
		ArchiveVO vo = dao.ArchiveView(num);
		request.setAttribute("vo", vo);
		
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("archive/archive-modify.jsp");
		requestDispatcher.forward(request, response);
	}



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String savePath = "upload";
		int uploadFileSizeLimit = 50 * 1024 * 1024;
		String encType = "UTF-8";
		
		ServletContext context = getServletContext();
		String uploadFilePath = context.getRealPath(savePath);
		
		ArchiveDAO dao = ArchiveDAO.getInstance();
		ArchiveVO vo = new ArchiveVO();
		
		try {
			MultipartRequest multi = new MultipartRequest(
					request, // request 객체
					uploadFilePath, //서버상의 실제 디렉토리
					uploadFileSizeLimit, //최대 업로드 파일 크기
					encType, //인코딩 방법
					// 동일한 이름이 존재하면 새로운 이름이 부여됨
					new DefaultFileRenamePolicy());
				//업로드된 파일의 이름얻기
			String fileName = multi.getFilesystemName("filename");
			
		
				int num = Integer.parseInt(multi.getParameter("num"));
				//String name = multi.getParameter("name");
				String subject = multi.getParameter("subject");
				String contents = multi.getParameter("contents");
				String kind = multi.getParameter("kind");
				String filename = multi.getParameter("file1");
				String file1 = multi.getParameter("file1");
				if(fileName!=null) {
					filename = fileName;
				      String filePath = request.getRealPath(savePath) + "/"; //파일이 존재하는 실제경로
				      filePath += file1;

				         File f = new File(filePath); // 파일 객체생성
				         if(f.exists()) f.delete(); // 파일이 존재하면 파일을 삭제한다.	
				}
				
				vo.setNum(num);
				//vo.setName(name);
				vo.setKind(kind);
				vo.setSubject(subject);
				vo.setContents(contents);
				vo.setFilename(filename);
				
				dao.ArchiveModify(vo);
				response.sendRedirect("archive.do");
//				RequestDispatcher rd = request.getRequestDispatcher("pds_list.do");
//				rd.forward(request, response);
					
		} catch (Exception e) {
				System.out.println("예외발생 :" + e);
			} //catch
			}

}

