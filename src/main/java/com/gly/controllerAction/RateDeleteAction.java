package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class RateDeleteAction implements Action {

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
		}
		request.getRequestDispatcher(url).forward(request, response);
	}
}
