package com.gly.controllerAction;

import java.io.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class CartInsertAction implements Action {
	// writer : juhye
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/gly?command=cart_list";

		// dao객체 인스턴스 가져오기
		CartDAO cDAO = CartDAO.getInstance();

		int size = Integer.parseInt(request.getParameter("size"));
		String color = request.getParameter("color");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int p_id = Integer.parseInt(request.getParameter("p_id"));
		HttpSession session = request.getSession();
		MemberVO  userInfo = (MemberVO) session.getAttribute("userInfo");
		String username = userInfo.getM_id();
		System.out.println(size);
		System.out.println(color);
		System.out.println(quantity);
		System.out.println(p_id);
		
		int pdid = cDAO.getpdid(size, color, p_id);
		cDAO.insertcart(quantity, username, pdid);
		
		request.getRequestDispatcher(url).forward(request, response);
		
		

	}

}
