package com.gly.controllerAction;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.gly.DAOs.ImageDAO;
import com.gly.VOs.MemberVO;
import com.gly.VOs.ProductVO;

public class OrderSettingAction implements Action {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String url = "product/itemInfo.jsp";

		HttpSession session = request.getSession();
		if (session.getAttribute("userInfo") != null) {
			MemberVO loginUser = (MemberVO) session.getAttribute("userInfo");

			if (request.getParameter("num") == "1") {
				// 단일 상품 결제
				if (request.getParameter("color") != null && request.getParameter("size") != null) {
					url = "product/order.jsp";

					ProductVO product = new ProductVO();
					int p_id = Integer.parseInt(request.getParameter("productCode"));
					product.setP_id(p_id);
					product.setP_name(request.getParameter("productName"));
					product.setP_price(Integer.parseInt(request.getParameter("productPrice")));
					int size;
					if (request.getParameter("size").equals("FR")) {
						size = 0;
					} else {
						size = Integer.parseInt(request.getParameter("size"));
					}
					product.setP_szie(size);
					product.setP_color(request.getParameter("color"));

					ImageDAO imageDAO = ImageDAO.getInstance();
					product.setP_img_src(imageDAO.getSubImageSrc(p_id));

					request.setAttribute("member", loginUser);
					request.setAttribute("product", product);
					request.setAttribute("size", request.getParameter("size"));
					request.setAttribute("quan", request.getParameter("quantity"));

				} else {
					url = "product/order_fail.jsp";
				}
			} else {
				// 여러 상품 결제
				ProductVO product = new ProductVO();
				int p_id = Integer.parseInt(request.getParameter("productCode"));
				product.setP_id(p_id);
				product.setP_name(request.getParameter("productName"));
				product.setP_price(Integer.parseInt(request.getParameter("productPrice")));
				int size;
				if (request.getParameter("size").equals("FR")) {
					size = 0;
				} else {
					size = Integer.parseInt(request.getParameter("size"));
				}
				product.setP_szie(size);
				product.setP_color(request.getParameter("color"));

				ImageDAO imageDAO = ImageDAO.getInstance();
				product.setP_img_src(imageDAO.getSubImageSrc(p_id));

				request.setAttribute("member", loginUser);
				request.setAttribute("product", product);
				request.setAttribute("size", request.getParameter("size"));
				request.setAttribute("quan", request.getParameter("quantity"));

			}
			
		} else {
			url="login/not_login_state.jsp";
		}
		
		request.getRequestDispatcher(url).forward(request, response);  

	}

}
