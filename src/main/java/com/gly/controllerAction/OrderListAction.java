package com.gly.controllerAction;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class OrderListAction implements Action {
	// writer : Hansol
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/myorders.jsp";
	    
	    HttpSession session = request.getSession();
	    MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
		if (session.getAttribute("userInfo") != null) {
			System.out.println(loginUser.getM_id());
			OrderDAO dao = OrderDAO.getInstance();
			ArrayList<OrderVO> orderList = dao.orderList(loginUser.getM_id());
			request.setAttribute("orderList", orderList);
		}else url = "gly?command=login_form";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
