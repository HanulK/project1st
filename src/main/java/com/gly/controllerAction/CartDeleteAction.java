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
		
		int dsize = Integer.parseInt(request.getParameter("dsize"));
		String dcolor = request.getParameter("dcolor");
		int dquantity = Integer.parseInt(request.getParameter("dquantity"));
		int dp_id = Integer.parseInt(request.getParameter("p_id"));
		HttpSession session = request.getSession();
		MemberVO  userInfo = (MemberVO) session.getAttribute("userInfo");
		String username = userInfo.getM_id();
		
		System.out.println(dsize);
		System.out.println(dcolor);
		System.out.println(dquantity);
		
		int pdid = cdDAO.getpdid(dsize, dcolor, dp_id);
		cdDAO.deletecart(dquantity, username, pdid);
		
		request.getRequestDispatcher(url).forward(request, response);  
	}

}
