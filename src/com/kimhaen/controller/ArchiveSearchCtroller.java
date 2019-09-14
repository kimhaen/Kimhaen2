package com.kimhaen.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kimhaen.dao.ArchiveDAO;
import com.kimhaen.vo.ArchiveVO;

/**
 * Servlet implementation class GallerySearchCtroller
 */
@WebServlet("/archivesearch.do")
public class ArchiveSearchCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ArchiveSearchCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArchiveDAO dao = ArchiveDAO.getInstance();
		
		List<ArchiveVO> list = dao.ArchiveList();
		request.setAttribute("list", list);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("archive/archive.jsp");
		requestDispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("utf-8");
	      String option=request.getParameter("option");
	      String input=request.getParameter("input");
		
	      ArchiveDAO dao = ArchiveDAO.getInstance();
		
		List<ArchiveVO> list = dao.ArchiveSearch(option, input);
		request.setAttribute("list", list);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("archive/archive.jsp");
		requestDispatcher.forward(request, response);
	}

}
