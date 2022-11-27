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
		String url="mypage/myorders.jsp";
		
		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");
			
			if(request.getParameter("color")!=null &&
					request.getParameter("size")!=null ) {
				url="product/order.jsp";
				
//				ProductVO product = new ProductVO();
//				product.setP_id(Integer.parseInt(request.getParameter("productCode")));
//				product.setP_name(request.getParameter("productName"));
//				product.setP_price(Integer.parseInt(request.getParameter("productPrice")));
//				int size;
//				if (request.getParameter("size").equals("FR")) {
//					size = 0;
//				} else {
//					size = Integer.parseInt(request.getParameter("size"));
//				}
//				product.setP_szie(size);
//				product.setP_color(request.getParameter("color"));
//				
////				get_small_imgsrc
//
//				int quan = Integer.parseInt(request.getParameter("quantity"));
//				
//				
//				request.setAttribute("member", loginUser);
//				request.setAttribute("product", product);
//				request.setAttribute("size", request.getParameter("size"));
//				request.setAttribute("quan", request.getParameter("quantity"));
//				
//				
			} else {
				url="product/order_fail.jsp";
			}
			
		} else {
			url="login/not_login_state.jsp";
		}
		
		
		
		request.getRequestDispatcher(url).forward(request, response);  

	}

}
