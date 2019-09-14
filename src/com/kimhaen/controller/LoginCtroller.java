package com.kimhaen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kimhaen.dao.AdminDAO;


@WebServlet("/login.do")
public class LoginCtroller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("Member/login.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		AdminDAO dao = AdminDAO.getInstance();
		String adminid = request.getParameter("adminid");
		String adminpw = request.getParameter("adminpw");
		System.out.println(adminid+","+adminpw);
		int flag = dao.login_check(adminid, adminpw);
		request.setAttribute("adminid", adminid);
		System.out.println(flag);
		if(flag==1) {
			HttpSession session = request.getSession();
			session.setMaxInactiveInterval(24*60*60);
			session.setAttribute("session", adminid);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Member/adminloginok.jsp");
			dispatcher.forward(request, response);
		}else {
			request.setAttribute("flag", flag);
			RequestDispatcher dispatcher = request.getRequestDispatcher("Member/adminloginfailed.jsp");
			dispatcher.forward(request, response);
		}
	}
}
