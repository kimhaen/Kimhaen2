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
import com.kimhaen.dao.ContactDAO;
import com.kimhaen.vo.ContactVO;


@WebServlet("/contactwrite.do")
public class ContactWriteCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ContactWriteCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		RequestDispatcher dispatcher = request.getRequestDispatcher("email/mailtest.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=UTF-8");
		
		ContactDAO dao = ContactDAO.getInstance();
		ContactVO vo = new ContactVO();
		
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String subject = request.getParameter("subject");
		String contents = request.getParameter("contents");
		
		vo.setName(name);
		vo.setEmail(email);
		vo.setSubject(subject);
		vo.setContents(contents);
		
		dao.ContactWrite(vo);
		response.sendRedirect("contact.do");

	}
}
