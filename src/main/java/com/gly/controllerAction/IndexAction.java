package com.gly.controllerAction;

import java.io.*;
import java.util.*;

import javax.servlet.*;
import javax.servlet.http.*;

import com.gly.DAOs.*;
import com.gly.VOs.*;

public class IndexAction implements Action {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "main/main.jsp";
		response.setContentType("text/html;charset=utf-8");
		ProductDAO dao = ProductDAO.getInstance();
		ArrayList<ImageVO> newProductList = dao.listNewProduct();
		ArrayList<ImageVO> bestProductList = dao.listBestProduct();
		
		HttpSession session = request.getSession();
		session.setAttribute("total_cart", 0);
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			
			CartDAO cDAO = CartDAO.getInstance();
			int cart_size = cDAO.cart_total_size(loginUser.getM_id());
			session.setAttribute("total_cart", cart_size);
		}
		
		// 세션 생성
		request.setAttribute("newProductList", newProductList);
		request.setAttribute("bestProductList", bestProductList);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
