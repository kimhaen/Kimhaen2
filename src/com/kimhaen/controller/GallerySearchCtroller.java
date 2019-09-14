package com.kimhaen.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kimhaen.dao.GalleryDAO;
import com.kimhaen.vo.GalleryVO;

/**
 * Servlet implementation class GallerySearchCtroller
 */
@WebServlet("/gallerysearch.do")
public class GallerySearchCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GallerySearchCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		GalleryDAO dao = GalleryDAO.getInstance();
		
		List<GalleryVO> list = dao.GalleryList();
		request.setAttribute("list", list);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("gallery/gallery.jsp");
		requestDispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
	      String option=request.getParameter("option");
	      String input=request.getParameter("input");
		
	      GalleryDAO dao = GalleryDAO.getInstance();
		
		List<GalleryVO> list = dao.GallerySearch(option, input);
		request.setAttribute("list", list);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("gallery/gallery.jsp");
		requestDispatcher.forward(request, response);
	}

}
