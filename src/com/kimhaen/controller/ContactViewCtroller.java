package com.kimhaen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kimhaen.dao.ContactDAO;
import com.kimhaen.vo.ContactVO;


@WebServlet("/contactview.do")
public class ContactViewCtroller extends HttpServlet {
	private String linebreak(String str){
		StringBuffer buf = new StringBuffer();
		for(int i=0; i<str.length(); i++){
			if(str.charAt(i)=='\n'){
				buf.append("<br>");
			}else{
				buf.append(str.charAt(i));
			}
		}
		return buf.toString();
	}
	
	private static final long serialVersionUID = 1L;
	private Cookie info;      
  
    public ContactViewCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));

		ContactDAO dao = ContactDAO.getInstance();		
	
			ContactVO vo = dao.ContactView(num);
			request.setAttribute("vo", vo);
			vo.setContents(linebreak(vo.getContents()));
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("contact/mail-view.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
