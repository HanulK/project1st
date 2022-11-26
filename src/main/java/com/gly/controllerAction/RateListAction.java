package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.ReviewDAO;
import com.gly.VOs.MemberVO;
import com.gly.VOs.ReviewVO;

public class RateListAction implements Action{
	
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/rate.jsp";
		
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			System.out.println(loginUser.getM_id());
			ReviewDAO dao = ReviewDAO.getInstance();
			ArrayList<ReviewVO> newReviewtList = dao.listReview(loginUser.getM_id());
		}
		request.getRequestDispatcher(url).forward(request, response);  
	}

}
