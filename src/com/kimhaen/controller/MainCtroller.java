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
import com.kimhaen.dao.GalleryDAO;
import com.kimhaen.vo.ArchiveVO;
import com.kimhaen.vo.GalleryVO;

@WebServlet("/index.do")
public class MainCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public MainCtroller() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		GalleryDAO dao = GalleryDAO.getInstance();
		List<GalleryVO> gallerylist = dao.GalleryList();

		request.setAttribute("gallerylist", gallerylist);
		
		ArchiveDAO adao = ArchiveDAO.getInstance();
		List<ArchiveVO> archivelist = adao.ArchiveList();
		request.setAttribute("archivelist", archivelist);

		RequestDispatcher dispatcher = request.getRequestDispatcher("index.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
