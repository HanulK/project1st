package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.CartDAO;
import com.gly.VOs.MemberVO;

public class CartInsertAction implements Action {
	// writer : juhye
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "/gly?command=cart_list";

		// dao객체 인스턴스 가져오기
		CartDAO cDAO = CartDAO.getInstance();

		int size;
		if(request.getParameter("size").equals("FR")) {
			size = 0;
		} else {
			size = Integer.parseInt(request.getParameter("size"));
		}
		String color = request.getParameter("color");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		int p_id = Integer.parseInt(request.getParameter("productCode"));
		HttpSession session = request.getSession();
		MemberVO  userInfo = (MemberVO) session.getAttribute("userInfo");
		String username = userInfo.getM_id();
	
		
		int pdid = cDAO.getpdid(size, color, p_id);
		cDAO.insertcart(quantity, username, pdid);
		
		request.getRequestDispatcher(url).forward(request, response);
		
		

	}

}
