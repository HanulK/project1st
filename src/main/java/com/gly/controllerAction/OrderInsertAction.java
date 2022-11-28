package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.OrderDAO;
import com.gly.VOs.MemberVO;

public class OrderInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/myorders.jsp";
		
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			
			// need to get o_address, o_way, o_state, o_phone, o_receiver
			String receiver = request.getParameter("receiver");
			String phone = request.getParameter("receiverPhone");
			String address = request.getParameter("receiverAddress");
			
			int payWay = Integer.parseInt(request.getParameter("pay"));
			int state = 1;
			if (payWay == 2)
				state = 0;
				
			
			OrderDAO orderDAO = OrderDAO.getInstance();
			orderDAO.insertOrder(loginUser.getM_id(), receiver, phone, address, payWay, state);
			
		} else {
			url="login/not_login_state.jsp";
		}
		
		
		
		request.getRequestDispatcher(url).forward(request, response);  

	}

}
