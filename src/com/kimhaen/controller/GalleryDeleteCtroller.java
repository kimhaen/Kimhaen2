package com.kimhaen.controller;

import java.io.File;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kimhaen.dao.GalleryDAO;
import com.kimhaen.vo.GalleryVO;


@WebServlet( "/gallerydelete.do" )
public class GalleryDeleteCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public GalleryDeleteCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
	      int num = Integer.parseInt(request.getParameter("num"));
	      System.out.println(num);
	      GalleryDAO dao = GalleryDAO.getInstance();
	      int row = dao.GalleryDelete(num);
	      

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("gallery/gallery.jsp");
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
		 
		 response.sendRedirect("gallery.do");
		 
	}
}
