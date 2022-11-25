package com.gly.controllerAction;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class CartListAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="mypage/shoppingbag.jsp";
		
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			System.out.println(loginUser.getM_id());
			
			CartDAO dao = new CartDAO();
			ArrayList<CartVO> cartList = dao.listCart();
			
			int totalPrice = 0;
	
			for(CartVO cartVO : cartList) {
				totalPrice += cartVO.getP_price() * cartVO.getC_quantity();
			}
			request.setAttribute("cartList", cartList);
			
		}else {
			url="gly?command=login_form";
		}

		request.getRequestDispatcher(url).forward(request, response);  

	}

}
