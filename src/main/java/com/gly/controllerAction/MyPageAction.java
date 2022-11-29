package com.gly.controllerAction;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class MyPageAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/mypage.jsp";
		
		HttpSession session = request.getSession();
	    MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
		if (session.getAttribute("userInfo") != null) {
	
			OrderDAO dao = OrderDAO.getInstance();
			ArrayList<OrderVO> recentOrderList = dao.recentOrderList(loginUser.getM_id());
			request.setAttribute("recentOrderList", recentOrderList);
		}
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response); 

	}

}
