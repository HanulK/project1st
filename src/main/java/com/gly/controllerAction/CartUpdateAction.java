package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class CartUpdateAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		CartDAO cDAO = CartDAO.getInstance();
		
		HttpSession session = request.getSession();
		MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
		
		String m_id = loginUser.getM_id();
		int p_d_id = Integer.parseInt(request.getParameter("p_d_id"));
		int quantity = Integer.parseInt(request.getParameter("qty"));
				
		cDAO.cart_update_button(m_id, p_d_id, quantity);
		
		
	}

}
