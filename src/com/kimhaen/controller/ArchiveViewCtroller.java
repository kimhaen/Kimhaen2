package com.kimhaen.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.kimhaen.dao.ArchiveDAO;
import com.kimhaen.vo.ArchiveVO;


@WebServlet("/archiveview.do")
public class ArchiveViewCtroller extends HttpServlet {
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
  
    public ArchiveViewCtroller() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));

		ArchiveDAO dao = ArchiveDAO.getInstance();		
		boolean found = false;
		Cookie info = null;
		Cookie[] cookies = request.getCookies();

		for (int i = 0; i < cookies.length; i++) {
			info = cookies[i];
			if (info.getName().equals("Cookie" + num)) {
				found = true;
				break;
			}
		}
			String newValue = "" + System.currentTimeMillis();
	
			if (!found) { // 쿠키가 없으면(화면에 처음접속시)
				int row = dao.ArchiveCount(num);
				//System.out.println(row);
				info = new Cookie("Cookie" + num, newValue); // 쿠키생성
				info.setMaxAge(24*60*60);
				response.addCookie(info);
			
			}
			ArchiveVO vo = dao.ArchiveView(num);
			int su = vo.getReadcnt();
			request.setAttribute("cnt", su);
			request.setAttribute("vo", vo);
			vo.setContents(linebreak(vo.getContents()));
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("archive/archive-view.jsp");
		requestDispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
