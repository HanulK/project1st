package com.gly.controllerAction;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class RateFilterAction implements Action {
	// writer : Seyoung
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "gly?command=rate";

		HttpSession session = request.getSession();

		if (session.getAttribute("userInfo") != null) {
			int rateScore = Integer.parseInt(request.getParameter("rateScore"));
			System.out.println();
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			ReviewDAO dao = ReviewDAO.getInstance();
			ArrayList<ReviewVO> reviewList = dao.rateFilter(loginUser.getM_id(), rateScore);
			request.setAttribute("reviewList", reviewList);
		}else url = "gly?command=login_form";
		request.getRequestDispatcher(url).forward(request, response);
	}

}
