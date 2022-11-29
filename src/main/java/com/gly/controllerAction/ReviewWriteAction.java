package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class ReviewWriteAction implements Action {
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="";
		
		String title =request.getParameter("title");
		
		int p_id = Integer.parseInt(request.getParameter("p_id").trim());
		System.out.println(title);
		System.out.println(p_id);
		
		HttpSession session = request.getSession();
		
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			ReviewDAO dao = ReviewDAO.getInstance();
			if(title==null) {
				url = "mypage/rateForm.jsp";
				request.setAttribute("p_id", request.getParameter("p_id").trim());
				
			}else {
				String contents =request.getParameter("contents");
				dao.writeReview(1,contents,p_id,loginUser.getM_id(),title);
				url="mypage/checkWriteReview.jsp";
			}
		}else url = "gly?command=login_form";
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}
}
