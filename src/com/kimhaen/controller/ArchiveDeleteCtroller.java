package com.kimhaen.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kimhaen.dao.ArchiveDAO;
import com.kimhaen.dao.GalleryDAO;


@WebServlet( "/archivedelete.do" )
public class ArchiveDeleteCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public ArchiveDeleteCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
	      int num = Integer.parseInt(request.getParameter("num"));
	      ArchiveDAO dao = ArchiveDAO.getInstance();
	      int row = dao.ArchiveDelete(num);
	      
	     
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("archive/deleteok.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		  String fileName = request.getParameter("filename");
	      String fileDir = "upload"; //지울 파일이 존재하는 디렉토리
	      String filePath = request.getRealPath(fileDir) + "/"; //파일이 존재하는 실제경로
	      filePath += fileName;

	         File f = new File(filePath); // 파일 객체생성
	         if(f.exists()) f.delete(); // 파일이 존재하면 파일을 삭제한다.
		 
	         GalleryDAO dao = GalleryDAO.getInstance();
	         dao.GalleryDelete(num);
	       
		 response.sendRedirect("archive.do");
		 
	}
}
