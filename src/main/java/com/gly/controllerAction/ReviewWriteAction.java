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
		HttpSession session = request.getSession();
		
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			ReviewDAO dao = ReviewDAO.getInstance();
			if(title==null) {
				url = "mypage/rateForm.jsp";
				request.setAttribute("p_id", request.getParameter("p_id").trim());
			}else {
				int rate_num = Integer.parseInt(request.getParameter("rate_num"));
				String contents =request.getParameter("contents");
				dao.writeReview(rate_num,contents,p_id,loginUser.getM_id(),title);
				url="mypage/checkWriteReview.jsp";
			}
		}else url = "gly?command=login_form";
		
		request.getRequestDispatcher(url).forward(request, response);
		
	}
}
