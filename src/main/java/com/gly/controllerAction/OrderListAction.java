package com.gly.controllerAction;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.OrderDAO;
import com.gly.VOs.MemberVO;
import com.gly.VOs.OrderVO;

public class OrderListAction implements Action {

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
