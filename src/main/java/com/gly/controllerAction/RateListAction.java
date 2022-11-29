package com.gly.controllerAction;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class RateListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "mypage/rate.jsp";

		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			System.out.println(loginUser.getM_id());
			if (request.getAttribute("reviewList") == null) {
				ReviewDAO dao = ReviewDAO.getInstance();
				ArrayList<ReviewVO> reviewList = dao.listReview(loginUser.getM_id());
				request.setAttribute("reviewList", reviewList);
			}
		}
		request.getRequestDispatcher(url).forward(request, response);
	}

}
