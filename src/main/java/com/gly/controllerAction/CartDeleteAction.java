package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class CartDeleteAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="/gly?command=cart_list";
		
		CartDAO cdDAO = CartDAO.getInstance();
		
		
		
		HttpSession session = request.getSession();
		MemberVO  userInfo = (MemberVO) session.getAttribute("userInfo");
		String username = userInfo.getM_id();
		
		int p_d_id = Integer.parseInt(request.getParameter("p_d_id"));
		
		
		cdDAO.deletecart(username, p_d_id);
		int cart_size = (int) session.getAttribute("total_cart");
		session.setAttribute("total_cart", cart_size-1);
		request.getRequestDispatcher(url).forward(request, response);  
	}

}
