package com.gly.controllerAction;

import java.io.*;
import java.text.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class ReviewWriteAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/checkWriteReview.jsp";
		
		String title =request.getParameter("title");
		String contents =request.getParameter("contents");
		System.out.println(title);
		
		Date date = new Date();
		SimpleDateFormat df = new SimpleDateFormat("yyyy/MM/dd");
		HttpSession session = request.getSession();
		df.format(date);
		
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			ReviewDAO dao = ReviewDAO.getInstance();
			dao.writeReview(1,contents,4,loginUser.getM_id(),title);
		}
		request.getRequestDispatcher(url).forward(request, response);
		
	}
}
