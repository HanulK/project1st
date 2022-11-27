package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.VOs.MemberVO;

public class OrderInsertAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url="product/itemInfo.jsp";
		
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			System.out.println(loginUser.getM_id());
			
			if(request.getParameter("color")!=null &&
					request.getParameter("size")!=null ) {
				url="product/order.jsp";
				
				int p_id = Integer.parseInt(request.getParameter("p_id"));
				String color = request.getParameter("color");
				int size = Integer.parseInt(request.getParameter("size"));
				int quan = Integer.parseInt(request.getParameter("quantity"));
				
				
				
				
			} else {
				url="product/order_fail.jsp";
			}
			
		} else {
			url="login/not_login_state.jsp";
		}
		
		
		
		
		
		
		
		
		request.getRequestDispatcher(url).forward(request, response);  

	}

}
