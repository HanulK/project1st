package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.OrderDAO;
import com.gly.VOs.MemberVO;

public class OrderInsertAction implements Action {
	// writer : Hanul
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="gly?command=order_list";
		
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			String receiver = request.getParameter("receiver");
			String phone = request.getParameter("receiverPhone");
			String address = request.getParameter("receiverAddress");
			
			if (!receiver.equals("")&&!phone.equals("")&&!address.equals("")) {
				int payWay = Integer.parseInt(request.getParameter("pay"));
				int state = 1;
				if (payWay == 2)
					state = 0;

				OrderDAO orderDAO = OrderDAO.getInstance();
				if (request.getParameter("orderCase").trim().equals("multi")) { // cart 상품 주문
					orderDAO.insertOrder(loginUser.getM_id(), receiver, phone, address, payWay, state);
				} else {
					// 바로 가기 상품 주문
					String productName = request.getParameter("productName");
					String productColor = request.getParameter("productColor");
					int productSize = Integer.parseInt(request.getParameter("productSize"));
					int quantity = Integer.parseInt(request.getParameter("quantity"));
					orderDAO.insertOrder(loginUser.getM_id(), receiver, phone, address, payWay, state, productName,
							productColor, productSize, quantity);
				}
			} else {
				url = "product/order_fail3.jsp";
			}
		} else {
			url="login/not_login_state.jsp";
		}
		
		
		
		request.getRequestDispatcher(url).forward(request, response);  

	}

}
