package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class RateDeleteAction implements Action {
	// writer : Seyoung
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "gly?command=rate";

		HttpSession session = request.getSession();

		// pid(product id)의
		// mid(member id)가 쓴 review 삭제
		if (session.getAttribute("userInfo") != null) {
			MemberVO userInfo = (MemberVO) session.getAttribute("userInfo");
			String mid = userInfo.getM_id();
			int pid = Integer.parseInt(request.getParameter("pid"));
			ReviewDAO dao = ReviewDAO.getInstance();
			dao.deleteReview(pid, mid);
		}else url = "gly?command=login_form";
		request.getRequestDispatcher(url).forward(request, response);
	}
}
