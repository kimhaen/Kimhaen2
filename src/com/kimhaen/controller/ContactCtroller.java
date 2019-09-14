package com.kimhaen.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kimhaen.dao.ContactDAO;
import com.kimhaen.vo.ContactVO;


@WebServlet("/contact.do")
public class ContactCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ContactCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ContactDAO dao = ContactDAO.getInstance();
		List<ContactVO> list = dao.ContactList();
		request.setAttribute("list", list);
		
		//RequestDispatcher requestDispatcher = request.getRequestDispatcher("contact/sendok.jsp");
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("contact/messagebox.jsp");
		requestDispatcher.forward(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
